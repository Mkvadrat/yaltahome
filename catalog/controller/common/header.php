<?php
class ControllerCommonHeader extends Controller {
	protected function index() {
		$this->data['title'] = $this->document->getTitle();

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (isset($this->session->data['error']) && !empty($this->session->data['error'])) {
			$this->data['error'] = $this->session->data['error'];

			unset($this->session->data['error']);
		} else {
			$this->data['error'] = '';
		}

		$this->data['base'] = $server;
		$this->data['description'] = $this->document->getDescription();
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		$this->data['lang'] = $this->language->get('code');
		$this->data['direction'] = $this->language->get('direction');
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$this->data['name'] = $this->config->get('config_name');

		if ($this->config->get('config_icon') && file_exists(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$this->data['icon'] = '';
		}

		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}		

		$this->language->load('common/header');

		$this->data['text_home'] = $this->language->get('text_home');
		$this->data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$this->data['text_search'] = $this->language->get('text_search');
		$this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_checkout'] = $this->language->get('text_checkout');
		$this->data['tlinks'] = $this->language->get('tlinks');
		$this->data['tsettings'] = $this->language->get('tsettings');
		$this->data['tcategory'] = $this->language->get('tcategory');

		$this->data['home'] = $this->url->link('common/home');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		
		//Контактная информация
		$this->data['adress'] =	$this->config->get('config_address');
		$this->data['tel'] 	  =	$this->config->get('config_telephone'); 
		
		// Daniel's robot detector
		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", trim($this->config->get('config_robots')));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		// A dirty hack to try to set a cookie for the multi-store feature
		$this->load->model('setting/store');

		$this->data['stores'] = array();

		if ($this->config->get('config_shared') && $status) {
			$this->data['stores'][] = $server . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();

			$stores = $this->model_setting_store->getStores();

			foreach ($stores as $store) {
				$this->data['stores'][] = $store['url'] . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			}
		}

		// Search		
		if (isset($this->request->get['search'])) {
			$this->data['search'] = $this->request->get['search'];
		} else {
			$this->data['search'] = '';
		}
    
		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$product_total = $this->model_catalog_product->getTotalProducts($data);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);						
				}

				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		//Главное меню
		$rooms_main = $this->model_catalog_category->getCategory(59);
				
		$this->data['rooms_link'] = $this->url->link('product/category', 'path=' . $rooms_main['category_id']);
		
		$rooms = $this->model_catalog_category->getCategories(59);
		
		$this->data['rooms'] = array();
		
		foreach($rooms as $room){
			$this->data['rooms'][] = array(
				'name'     => $room['name'],
				'href'     => $this->url->link('product/category', 'path=' . $room['category_id'])
			);
		}
		
		$house_main = $this->model_catalog_category->getCategory(64);
				
		$this->data['house_link'] = $this->url->link('product/category', 'path=' . $house_main['category_id']);
		
		$plot_main = $this->model_catalog_category->getCategory(78);
				
		$this->data['plot_link'] = $this->url->link('product/category', 'path=' . $plot_main['category_id']);
		
		$buildings_main = $this->model_catalog_category->getCategory(79);
				
		$this->data['buildings_link'] = $this->url->link('product/category', 'path=' . $buildings_main['category_id']);
		
		$commercial_main = $this->model_catalog_category->getCategory(80);
				
		$this->data['commercial_link'] = $this->url->link('product/category', 'path=' . $commercial_main['category_id']);
		
		$rent_main = $this->model_catalog_category->getCategory(18);
				
		$this->data['rent_link'] = $this->url->link('product/category', 'path=' . $rent_main['category_id']);
		
		$elite_main = $this->model_catalog_category->getCategory(85);
				
		$this->data['elite_link'] = $this->url->link('product/category', 'path=' . $elite_main['category_id']);
		
		//Меню навигации
		$this->load->model('catalog/information');
		
		$about_us = $this->model_catalog_information->getInformation(25);
		
		$this->data['about_link'] = $this->url->link('information/information', 'information_id=' .  $about_us['information_id']);
		
		$services = $this->model_catalog_information->getInformation(26);
		
		$this->data['services_link'] = $this->url->link('information/information', 'information_id=' .  $services['information_id']);
				
		$this->data['news_link'] = $this->url->link('news/headlines', '');
		
		$this->data['contacts_link'] = $this->url->link('information/contact', '');
				
		$this->children = array(
			'module/language',
			'module/currency',
			'module/cart'
		);

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/header.tpl';
		} else {
			$this->template = 'default/template/common/header.tpl';
		}

		$this->render();
	} 	
}
?>
