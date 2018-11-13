<?php

namespace app\admin\controller;

class Home extends Base
{
    //后台首页
    public function index()
    {
        return view();
    }

    //退出登录
    public function loginout()
    {
        session(null);
        if (session('?admin.id')) {
            $this->error('退出失败！');
        }else {
            $this->success('退出成功！', 'admin/index/login');
        }
    }
    //链接提交
    public function sitePost()
    {
        if (request()->isAjax()) {
            $urls = [
                input('post.url')
            ];
	    $api = 'http://data.zz.baidu.com/urls?site=www.shangjinclub.cn&token=HCNyHgukKOqXvS4Y';
	    $ch = curl_init();
	    $options =  array(
		CURLOPT_URL => $api,
		CURLOPT_POST => true,
		CURLOPT_RETURNTRANSFER => true,
    		CURLOPT_POSTFIELDS => implode("\n", $urls),
    		CURLOPT_HTTPHEADER => array('Content-Type: text/plain'),
	    );
	    curl_setopt_array($ch, $options);
	    $result = curl_exec($ch);
	    $resultReturn = json_decode($result, true);
	    if ($resultReturn['success'] > 0) {
		$this->success('提交成功！');
	    }else {
		$this-error('提交失败！');
	    }
        }
        return view();
    }
}
