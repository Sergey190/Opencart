<?php
/**
 * @category   OpenCart
 * @package    SKU Generator
 * @copyright  © Sergey Gorustovich, 2018, gorustovich.sv@yandex.ru
 */


class ControllerExtensionModuleSkugenerator extends Controller 
{
	private $error = array();

	public function index() 
	{
		$this->load->language('extension/module/sku_generator');
		$this->document->setTitle($this->language->get('heading_title'));
	
		/**
		 * Post data handling
		 */
		
		// Settings
		$this->load->model('setting/setting');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->request->post['sku_generator_group'] = str_replace([' ','_','*','\''], '-', $this->request->post['sku_generator_group']);
			$this->model_setting_setting->editSetting('sku_generator', $this->request->post);
			$data['text_success'] = $this->language->get('text_success');
		}

       // Display Properties
		if (isset($this->request->post['sku_generator_start']) && $this->validate()) {
			$data['sku_generator_start'] = $this->request->post['sku_generator_start'];
		} else {
			$data['sku_generator_start'] = $this->config->get('sku_generator_start');
		}
		if (isset($this->request->post['sku_generator_group']) && $this->validate()) {
			$data['sku_generator_group'] = $this->request->post['sku_generator_group'];
		} else {
			$data['sku_generator_group'] = $this->config->get('sku_generator_group');
		}
		if (isset($this->request->post['sku_generator_digit']) && $this->validate()) {
			$data['sku_generator_digit'] = $this->request->post['sku_generator_digit'];
		} else {
			$data['sku_generator_digit'] = $this->config->get('sku_generator_digit');
		}

		// Error
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		// Sessions result
		if (isset($this->session->data['success_generate'])) {
				$data['text_success'] = $this->session->data['success_generate'];
				unset($this->session->data['success_generate']);
		}
		if (isset($this->session->data['error_generate'])) {
				$data['error_warning'] = $this->session->data['error_generate'];
				unset($this->session->data['error_generate']);
		}


		/**
		 * Set urls
		 */
    	
    	$data['urls'] = array();
    	$data['urls']['generateAllSku'] = $this->url->link('extension/module/sku_generator/generateallSku', 'token=' . $this->session->data['token'], true);
    	$data['token'] =  $this->session->data['token'];

    	/**
    	 * Set breadcrumbs 
    	 */
    	
    	$data['breadcrumbs'] = array();
    	$data['breadcrumbs'][] = array(
    		'text' => $this->language->get('text_home'),
    		'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
    	);
    	$data['breadcrumbs'][] = array(
    		'text' => $this->language->get('text_extension'),
    		'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
    	);
    	$data['breadcrumbs'][] = array(
    		'text' => $this->language->get('heading_title'),
    		'href' => $this->url->link('extension/module/sku_generator', 'token=' . $this->session->data['token'], true)
    	);

    	/**
    	 * Set text
    	 */
		$data['heading_title']           = $this->language->get('heading_title');
    	$data['text_edit']               = $this->language->get('text_edit');
    	$data['text_author']             = $this->language->get('text_author');
    	$data['text_author_name']        = $this->language->get('text_author_name');
    	$data['text_author_support']     = $this->language->get('text_author_support');
    	$data['entry_status']            = $this->language->get('entry_status');
    	$data['text_edit'] = $this->language->get('text_edit');
    	$data['text_enabled'] = $this->language->get('text_enabled');
    	$data['text_disabled'] = $this->language->get('text_disabled');

		/**
		* Buttons
		*/

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['action'] = $this->url->link('extension/module/sku_generator', 'token=' . $this->session->data['token'], true);
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
		$data['action'] = $this->url->link('extension/module/sku_generator', 'token=' . $this->session->data['token'], true);

		/**
		 * Set partials
		 */
		
		$data['header']      = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer']      = $this->load->controller('common/footer');


	    /**
	     * View generate
	     */

	    $this->response->setOutput($this->load->view('extension/module/sku_generator', $data));
	}



	public function getSkuByAjax() 
	{
		$this->load->model('extension/module/sku_generator');
		$sku = $this->model_extension_module_sku_generator->getSku();
		if ($sku) {
			$data['result'] = $sku;
		}     
		header('Content-type:application/json;charset=utf-8');
		echo json_encode($data);
		exit;
	}

	
	public function postFormByAjax() 
	{
		$this->load->model('setting/setting');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->request->post['sku_generator_group'] = str_replace([' ','_','*','\''], '-', $this->request->post['sku_generator_group']);
			$this->model_setting_setting->editSetting('sku_generator', $this->request->post);
			$result = true;
		} else {
			$result = false;
		}
		header('Content-type:application/json;charset=utf-8');
		echo json_encode($result);
		exit;
	}

	public function generateAllSku() 
	{
		$this->load->language('extension/module/sku_generator');
		$this->load->model('extension/module/sku_generator');
		if($this->model_extension_module_sku_generator->generateAllSku())
		{
			$this->session->data['success_generate'] = $this->language->get('success_generate');
		} else {
			$this->session->data['error_generate'] = $this->language->get('error_generate');
		}
		$this->response->redirect($this->url->link('extension/module/sku_generator', 'token=' . $this->session->data['token']));
	}

	public function install() 
	{
		$this->load->model('user/user_group');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/module/sku_generator');
		$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/module/sku_generator');
	}

	protected function validate() 
	{
		if (!$this->user->hasPermission('modify', 'extension/module/sku_generator')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if( strlen($this->request->post['sku_generator_start']) > 15 ) {
                 $this->error['warning'] = $this->language->get('error_count_start');
         }

        if( mb_strlen($this->request->post['sku_generator_group']) > 10 ) {
                 $this->error['warning'] = $this->language->get('error_count_group');
         }

		return !$this->error;
	}


}