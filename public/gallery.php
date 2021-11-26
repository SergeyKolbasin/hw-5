<?php
    require_once __DIR__ . '/../config/config.php';
    
    
    // Отображение галереи
    echo render(TEMPLATES_DIR . 'gallery.tpl', [
            'title'     => 'Фото-зоопарк',
            'head'      => 'Фото-зоопарк',
            'content'   => renderGallery(getImages('SELECT * FROM gallery ORDER BY `views` DESC'), COLUMNS)
    ]);