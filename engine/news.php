<?php
/*
 * Функции для работы с новостями
 */
/***************************************************/
// Получение массива новостей
function getNews()
{
    $sql = "SELECT * FROM news ORDER BY `news`.`date_create` DESC";
    return getAssocResult($sql);
}
/***************************************************/
// Отображение новости на страницу
function renderNews($news)
{
    $newsContent = '';
    foreach($news as $newsItem) {
            // Отображение картинки, соответствующей новости
            //if (empty($newsItem[image])) {
            //    $newsItem[image] = 'img/no-image.jpg';
            //}
            $newsContent .= render(TEMPLATES_DIR . 'newsItem.tpl', $newsItem);
    }
    return $newsContent;
}
