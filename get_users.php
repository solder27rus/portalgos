<?php
    function Get_user() {
        //подключение к базам данных
        require("./con_bd.php");
        //формируем SQL-запрос к БД
        $sql = "SELECT * FROM users WHERE id=2";
        //Выполняем запрос к БД и сохраняем ответ
        $result = mysqli_query($mysqli, $sql);
        //Преобразуем ответ в формат удобный
        $dates = mysqli_fetch_assoc($result);
        /* КОМАНДА my_sqli_fetch_assoc
        преобразует ответ сервера баз данных
        в массив, с которым удобно работать */ 
        foreach ($dates as $value) { 
            /*проходимся по каждому индексу в
            массиве dates в качестве переменной
            value*/
            echo $value." ";
        }
    }
?>