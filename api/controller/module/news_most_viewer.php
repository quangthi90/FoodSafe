<?php
class ControllerModuleNewsMostViewer extends Controller {
	public function index($setting) {
		$this->load->language('module/news_most_viewer');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('news/news');

		$this->load->model('tool/image');

		$data['newses'] = array();

		$results = $this->model_news_news->getNewses(array(
			'start' => 0,
			'limit' => $setting['limit']
		));

		foreach ($results as $result) {
			$data['news'][] = array(
				'id' => $result['news_id'],
				'title' => $result['title'],
				'content' => $result['short_description'],
				'image' => $this->model_tool_image->resize(($result['image']) || is_file($result['image']) ? ($result['image']) : 'no_image.png', 465, 302),
				'href'  => $this->url->link('news/news', '&news_id=' . $result['news_id'])
			);
		}

		if ($setting['is_system_call']) {
			return $data;
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($data));
	}
}