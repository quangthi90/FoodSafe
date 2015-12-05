<?php
class ControllerNewsDetail extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$this->document->addStyle('catalog/view/theme/default/stylesheet/news/detail.css');

		$this->load->language('news/detail');

		// Breadcrumbs
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
		$this->load->model('news/category');
		$this->load->model('tool/image');

		// News detail
		$news = $this->model_news_news->getNews($this->request->get['news_id']);
		if (empty($news)) {
			$this->load->controller('error/not_found');
			return;
		}

		$data['news'] = array(
			'id' => $news['news_id'],
			'title' => $news['title'],
			'content' => html_entity_decode($news['description']),
			'summary' => $news['short_description'],
			'image' => $this->model_tool_image->resize(($news['image']) || is_file($news['image']) ? ($news['image']) : 'no_image.png', 465, 302),
			'href'  => $this->url->link('news/news', '&news_id=' . $news['news_id']),
			'tags' => explode(',', $news['meta_keyword'])
		);

		// Breadcrumb of news detail
		$data['breadcrumbs'][] = array(
			'text' => $news['title'],
			'href' => $this->url->link('news/news', '&news_id=' . $news['news_id'])
		);

		// Related news
		$results = $this->model_news_news->getRelatedNews($news['news_id']);
		$data['related_news'] = array();
		foreach ($results as $result) {
			$data['related_news'][] = array(
				'id' => $result['news_id'],
				'title' => $result['title'],
				'href'  => $this->url->link('news/news', '&news_id=' . $result['news_id'])
			);
		}

		$this->document->setTitle($news['title']);

		$data['column_left'] = $this->load->controller('news/column_left');
		$data['column_right'] = $this->load->controller('news/column_right');
		$data['content_top'] = $this->load->controller('news/content_top');
		$data['content_bottom'] = $this->load->controller('news/content_bottom');
		$data['footer'] = $this->load->controller('news/footer');
		$data['header'] = $this->load->controller('news/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/news/detail.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/news/detail.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/news/detail.tpl', $data));
		}
	}
}