<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		// Bommer
		$this->document->addStyle('catalog/view/theme/default/stylesheet/vatgia/main.css');
		$this->document->addStyle('catalog/view/theme/default/stylesheet/vatgia/simple_tip.css');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		//TODO: Category Slideshow (move latter)		
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$categories_data = array();
		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			// if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
				// Level 1
				$categories_data[] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			// }
		}
		//Load category banners
		$category_banners = array();
		$category_banners[] = array(
			'title' => 'Slide 1',
			'link'  => '#',
			'image' => 'image/catalog/demo/banners/banner1.jpg'
		);
		$category_banners[] = array(
			'title' => 'Slide 2',
			'link'  => '#',
			'image' => 'image/catalog/demo/banners/banner2.jpg'
		);
		$category_banners[] = array(
			'title' => 'Slide 3',
			'link'  => '#',
			'image' => 'image/catalog/demo/banners/banner3.jpg'
		);
		$category_banners[] = array(
			'title' => 'Slide 4',
			'link'  => '#',
			'image' => 'image/catalog/demo/banners/banner4.jpg'
		);
		$viewData = array(
			'category_data' => $categories_data, 
			'category_banners' => $category_banners
		);
		$data['categories_data'] = $categories_data;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/api/module/category_slideshow.tpl')) {
			$data['categories_slideshow'] = $this->load->view($this->config->get('config_template') . '/template/api/module/category_slideshow.tpl', $viewData);
		} else {
			$data['categories_slideshow'] = $this->load->view('default/template/api/module/category_slideshow.tpl', $viewData);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}