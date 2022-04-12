<?php
/*
 * Функции работы с БД
 */

/**
 * Функция создание соединения с БД
 * Использует следующие строковые константы из из config.php:
 * DB_HOST     имя хоста
 * DB_USER     имя пользователя подключения к БД
 * DB_PASS     пароль пользователя
 * DB_NAME     имя БД
 * @return  object  объект, представляющий связь с БД или false
 */
function createConnection():object
{
    $db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);   // Подключение к БД
    // Обработка ошибки подключения к БД
    if (!$db) {
        echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
        echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
        echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
        die;
    }
    mysqli_set_charset($db, 'utf8');                            // Установка кодировки UTF-8
    return $db;
}

/**
 * Функция выполнения SQL-запросв
 * Применяется только для модификации данных
 * Возвращает количество записей, затронутых SQL-запросом или false
 * @param    $sql         string        выражение SQL-запроса
 * @return                array         результирующий набор, полученный из запроса в базу данных
 */
function execQuery(
    $sql = ''               // выражение SQL-запроса
):bool
{
    $db = createConnection();               // Создание соединения
    $result = mysqli_query($db, $sql);      // Выполнение запроса
    mysqli_close($db);                      // Закрытие соединения
    return $result;
}

/**
 * Функция создания соединения, выполнение запроса и возврат результата запроса, как результата выполнения функции
 * Применяется для выборки данных
 * @param    $sql   string        выражение SQL-запроса
 * @return          array         ассоциативный массив с выборкой
 */
function getAssocResult(
    $sql = ''               // выражение SQL-запроса
):array
{
    $db = createConnection();                       // Создание соединения
    $result = mysqli_query($db, $sql);              // Выполнение запроса к БД
    $arrayResult = [];                              // Объявление массива для возврата выборки
    while ($row = mysqli_fetch_assoc($result)) {    // Цикл по результирующему ряду выборки
        $arrayResult[] = $row;                          // Добавление элемента выборки в результирующий массив
    }
    mysqli_close($db);                              // Закрытие соединения с БД
    return $arrayResult;
}

/**
 * Функция выборки единственной записи из б/д
 * @param    $sql         string        выражение SQL-запроса
 * @return                array         ассоциативный массив с выборкой или NULL
 */
function getSingle(
    $sql = ''               // выражение SQL-запроса
):array
{
    $result = getAssocResult($sql);
    if (empty($result)) {
        return NULL;
    }
    return $result[0];
}