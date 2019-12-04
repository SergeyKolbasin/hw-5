<?php
/*
 * Функции работы с галереей
 */
    // Функция формирует и возвращает HTML-код отображения галереи
    function getGallery(
        $fDir = IMG_DIR,    // Папка с изображениями по умолчанию
        $fColumns = 3       // Количество колонок в строке по умолчанию
    )
    {
        // ПЕРЕМЕННЫЕ
        $dir = "$fDir/";            // Папка с изображениями
        $columns = $fColumns;       // Количество столбцов при создании таблицы
        $files = scandir($dir);     // Все изображения из папки
        natsort($files);            // Сортируем в привычном для человека порядке
        $k = 0;                     // Счетчик картинок в строке
        $result = '';               // HTML-код отображения галереи
        
        // КОД
        $result .= '<table>';       // Откроем тег таблицы
        //  Цикл по всем файлам в каталоге
        foreach ($files as $photo) {
            // Текущий и родительский каталоги пропускаем
            if (($photo != '.') && ($photo != '..')) {
                if ($k % $columns == 0) echo '<tr>';                        // Добавляем новую строку
                $result .= '<td>';                                          // Начинаем столбец
                $path = $dir . $photo;                                      // Получаем путь к картинке
                $result .= "<a href=$path target=_blank>";                  // Делаем ссылку на полноформатную картинку
                $result .= "<img src=$path alt='Фото' width='100' />";      // Вывод превью картинки
                $result .= '</a>';        // Закрываем ссылку
                $result .= '</td>';       // Закрываем столбец
                //переход на следеющею строку при заполнении
                if ((($k + 1) % $columns == 0)) {
                    $result .= '</tr>';
                }
                // Увеличиваем  счётчик картинок в строке
                $k++;
            }
        }
        $result .= '</table>';          // Закроем тег таблицы
        
        return $result;                 // HTML отображения галереи
    }