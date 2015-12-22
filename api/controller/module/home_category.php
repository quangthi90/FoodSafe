<?php
class ControllerModuleHomeCategory extends Controller {
	public function index($setting) {
		$this->load->model('catalog/category');

		$results = $this->model_catalog_category->getCategories();

		$data['categories'] = array();

		foreach ($results as $key => $result) {
			$category = $this->load->api('product/category', array(
				'limit' => $this->limit,
				'category_id' => $result['category_id'],
				'is_system_call' => true
			));

			$category['name'] = $result['name'];
			$category['icon'] = $result['column'];

			$data['categories'][] = $category;
		}

		if ($setting['is_system_call']) {
			return $data;
		}
		
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($data));
	}
}
?>