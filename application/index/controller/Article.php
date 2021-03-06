<?php

namespace app\index\controller;

class Article extends Base
{
    //文章详情页
    public function info()
    {
        $articleInfo = model('Article')->with('comments,comments.member')->find(input('id'));
        $articleInfo->setInc('click');
        $viewData = [
            'articleInfo' => $articleInfo
        ];
        $this->assign($viewData);
        return view();
    }

    //文章评论
    public function comm()
    {
        $data = [
            'article_id' => input('post.article_id'),
            'member_id' => input('post.member_id'),
            'content' => input('post.content')
        ];
        $articleInfo = model('Article')->find(input('post.article_id'));
        $result = model('Comment')->comm($data);
        if ($result == 1) {
            $articleInfo->setInc('comm_num');
            $this->success('评论成功！');
        } else {
            $this->error($result);
        }
    }

}