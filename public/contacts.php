<?php
    require_once __DIR__ . '/../config/config.php';
    
    // Отображение контактов
    echo render(TEMPLATES_DIR . 'contacts.tpl', [
        'title'     => 'Контакты',
        'h4'        => 'Мои контакты:',
        'content'   => 'Пишите мне почаще<br><br>'
    ]);