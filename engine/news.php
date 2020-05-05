<?php
/*
 * Функции для работы с новостями
 */
/***************************************************/
// Получение массива новостей
function getNews()
{
    $sql = "SELECT * FROM gallery_news ORDER BY `date` DESC";
    return getAssocResult($sql);
}
/***************************************************/
// Формирование отображения новостей на страницу
function renderNews($news)
{
    $newsContent = '';
    foreach($news as $newsItem) {
            $newsContent .= render(TEMPLATES_DIR . 'newsItem.tpl', $newsItem);
    }
    return $newsContent;
}
