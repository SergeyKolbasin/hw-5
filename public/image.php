<?php
//  Отображение картинки по ее id
    
    require_once __DIR__ . '/../config/config.php';
    
    $id = isset($_GET['id']) ? $_GET['id'] : false;         // Получение id из адресной строки браузера
    if(!$id) {                                              // Проверка передан ли id
        echo 'Отсутствует id';
        die;
    }
    $id = (int)$id;                                         // Явно приводим id к целочисленному типу
    
    echo  renderImage($id);                                   // Отобразим страницу с фото и информацией в браузер
