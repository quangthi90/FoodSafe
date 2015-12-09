<?php
class ControllerNewsCategory extends Controller {
	private $numberPostsPerPage = 3;
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$this->document->addStyle('catalog/view/theme/default/stylesheet/news/category.css');

		$this->load->language('news/category');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_news'),
			'href' => $this->url->link('news/home', '', 'SSL')
		);

		$this->load->model('news/category');
		$this->load->model('news/news');
		$this->load->model('tool/image');

		if (!empty($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['path'])) {
			$path = '';
		
			$parts = explode('_', (string)$this->request->get['path']);
		
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}
									
				$category_info = $this->model_news_category->getNewsCategory($path_id);
				
				if ($category_info) {
	       			$data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('news/category', 'path=' . $path),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}
		}

		if (empty($category_info)) {
			$this->load->controller('error/not_found');
			return;
		}

		$data['cat_info'] = $category_info;
		$category_id = $category_info['news_category_id'];

		// Last news
		$news_filter = array(
			'filter_news_category_id' => $category_id,
			'start' => ($page - 1) * $this->numberPostsPerPage,
			'limit' => $this->numberPostsPerPage
		);
		$news_total = $this->model_news_news->getTotalNews($news_filter);
		$results = $this->model_news_news->getNewses($news_filter);
		$data['cat_news'] = array();
		foreach ($results as $result) {
			$data['cat_news'][] = array(
				'id' => $result['news_id'],
				'title' => $result['title'],
				'content' => $result['short_description'],
				'image' => $this->model_tool_image->resize(($result['image']) || is_file($result['image']) ? ($result['image']) : 'no_image.png', 465, 302),
				'href'  => $this->url->link('news/news', '&news_id=' . $result['news_id'])
			);
		}

		$pagination = new Pagination();
		$pagination->total = $news_total;
		$pagination->page = $page;
		$pagination->limit = $this->numberPostsPerPage;
		$pagination->url = $this->url->link('news/category', 'path=' . $this->request->get['path'] . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();
		
		$data['results'] = sprintf($this->language->get('text_pagination'), ($news_total) ? (($page - 1) * $this->numberPostsPerPage) + 1 : 0, ((($page - 1) * $this->numberPostsPerPage) > ($news_total - $this->numberPostsPerPage)) ? $news_total : ((($page - 1) * $this->numberPostsPerPage) + $this->numberPostsPerPage), $news_total, ceil($news_total / $this->numberPostsPerPage));

		$data['column_left'] = $this->load->controller('news/column_left');
		$data['column_right'] = $this->load->controller('news/column_right');
		$data['content_top'] = $this->load->controller('news/content_top');
		$data['content_bottom'] = $this->load->controller('news/content_bottom');
		$data['footer'] = $this->load->controller('news/footer');
		$data['header'] = $this->load->controller('news/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/news/category.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/news/category.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/news/category.tpl', $data));
		}
	}
}