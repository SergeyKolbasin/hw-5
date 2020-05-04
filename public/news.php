<?php
    require_once '../config/config.php';
    
    // Отображение новостей
    echo render(TEMPLATES_DIR . 'news.tpl', [
        'title'     =>  'Новости',
        'head'      =>  'Горячие новости',
        'content'   =>  'Здесь будут новости сайта'
    ]);