<?php
class ControllerNewsHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}		
		
		$this->load->language('news/home');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_news'),
			'href' => $this->url->link('news/home', '', 'SSL')
		);

		$this->load->model('news/news');
		$this->load->model('tool/image');

		// Last news
		$results = $this->model_news_news->getNewses(array(
			'start' => 0,
			'limit' => 10
		));
		$data['hot_news'] = array();
		foreach ($results as $result) {
			$data['hot_news'][] = array(
				'id' => $result['news_id'],
				'title' => $result['title'],
				'content' => $result['short_description'],
				'image' => $this->model_tool_image->resize(($result['image']) || is_file($result['image']) ? ($result['image']) : 'no_image.png', 465, 302),
				'href'  => $this->url->link('news/news', '&news_id=' . $result['news_id'])
			);
		}

		// News by Categories
		$this->load->model('news/category');
		$data['categories'] = array();
		$categories = $this->model_news_category->getCategories();
		foreach ($categories as $category) {
			$results = $this->model_news_news->getNewses(array(
				'start' => 0,
				'limit' => 4,
				'filter_news_category_id' => $category['news_category_id']
			));
			$newses = array();
			foreach ($results as $result) {
				$newses[] = array(
					'id' => $result['news_id'],
					'title' => $result['title'],
					'content' => $result['short_description'],
					'image' => $this->model_tool_image->resize(($result['image']) || is_file($result['image']) ? ($result['image']) : 'no_image.png', 465, 302),
					'href'  => $this->url->link('news/news', '&news_id=' . $result['news_id'])
				);
			}
			if (count($newses) == 0) continue;
			$data['categories'][] = array(
				'id' => $category['news_category_id'],
				'name' => $category['name'],
				'href' => $this->url->link('news/category', 'path=' . $category['news_category_id']),
				'newses' => $newses
			);
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('news/footer');
		$data['header'] = $this->load->controller('news/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/news/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/news/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/news/home.tpl', $data));
		}
	}
}