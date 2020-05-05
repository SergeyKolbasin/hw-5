<?php
    require_once '../config/config.php';
    
    $arrayNews = [];                                    // Массив новостей
    $arrayNews = getNews();                             // Формирование массива новостей из БД
    $newsContent = renderNews($arrayNews);
    
    // Отображение новостей при помощи шаблона
    echo render(TEMPLATES_DIR . 'news.tpl', [
        'title'     =>  'Новости',
        'head'      =>  'Горячие новости',
        'content'   =>  $newsContent
    ]);