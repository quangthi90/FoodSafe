<?php
class ControllerCommonModule extends Controller {
	public function index($setting) {
		$data = array('modules' => array());

		switch ($setting['type']) {
			case 'tabs':
				foreach ($setting['modules'] as $key => $module) {
					if ($module['sort_order'] != $setting['sort_order'])
						continue;

					$part = explode('.', $module['code']);
					if (isset($part[1])) {
						$setting_info = $this->model_extension_module->getModule($part[1]);
						
						if ($setting_info && $setting_info['status'] && $setting_info['type'] == 'tabs') {
							$setting_info['is_system_call'] = true;
							$data['modules'][$key] = $this->load->api('module/' . $part[0], $setting_info);
							$data['modules'][$key]['code'] = str_replace('.', '', $setting['modules'][$key]['code']);
							unset($setting['modules'][$key]);
						}
					}
				}

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/api/module/tabs.tpl')) {
					return $this->load->view($this->config->get('config_template') . '/template/api/module/tabs.tpl', $data);
				} else {
					return $this->load->view('default/template/api/module/tabs.tpl', $data);
				}

			case 'news_tabs':
				foreach ($setting['modules'] as $key => $module) {
					if ($module['sort_order'] != $setting['sort_order'])
						continue;

					$part = explode('.', $module['code']);
					if (isset($part[1])) {
						$setting_info = $this->model_extension_module->getModule($part[1]);
						
						if ($setting_info && $setting_info['status'] && $setting_info['type'] == 'news_tabs') {
							$setting_info['is_system_call'] = true;
							$data['modules'][$key] = $this->load->api('module/' . $part[0], $setting_info);
							$data['modules'][$key]['code'] = str_replace('.', '', $setting['modules'][$key]['code']);
							unset($setting['modules'][$key]);
						}
					}
				}

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/api/news/tabs.tpl')) {
					return $this->load->view($this->config->get('config_template') . '/template/api/news/tabs.tpl', $data);
				} else {
					return $this->load->view('default/template/api/news/tabs.tpl', $data);
				}

			default:
				# code...
				if ($setting['status']) {
					$setting['is_system_call'] = true;
					$data = $this->load->api('module/' . $setting['part'][0], $setting);
				}

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/api/module/carousel.tpl')) {
					return $this->load->view($this->config->get('config_template') . '/template/api/module/carousel.tpl', $data);
				} else {
					return $this->load->view('default/template/api/module/carousel.tpl', $data);
				}
				break;
		}
	}
}