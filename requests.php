<?php
    
    require("./con_bd.php");
    function Check_user() {
        //Функция проверки юзера в БД
        //подключились к базам данных
        require("./con_bd.php");
        //сформировали запрос
        $sql = "SELECT login FROM users WHERE
        login = '".$_POST["login"]."' ";
        //сохраняем ответ БД в response переменную
        $response = mysqli_query($mysqli, $sql);
        //преобразуем ответ в удобный формат
        $dates = mysqli_fetch_assoc($response);
        if (isset($dates)) {
            //если логин уже занят
            return true;
        } else {
            //если логина еще не существует
            return false;
        }
    }
    //данные пользователя
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $secondname = $_POST["secondname"];
    $login = $_POST["login"];
    $password = $_POST["password"];
    $email = $_POST["email"];
    //формируем sql запрос к базам данных
    $checked = Check_user();
    if ($checked != true) {
        //регистрируем пользователя
        $sql = "INSERT INTO users (firstname, lastname,
                                   secondname, login,
                                   password, email)
        VALUES ('$firstname', '$lastname', '$secondname',
                '$login', '$password', '$email')";
        /* ВСТАВИТЬ В {имя таблицы (поле1,..,полеХ)}
        ЗНАЧЕНИЯ {переменная1,..,переменнаяХ}*/
        if (mysqli_query($mysqli, $sql)) {
            /*Если выполнение запроса произошло успешно,
            то уведомить об успехе добавления нового польз-я
            mysqli_query функция для выполенния запросов к БД*/
            echo " New record created successfully";
        } else {
            //иначе печатаем ошибку по нашему запросу
            echo "Error: " . $sql . "<br>"
            .mysqli_error($mysqli);
        }
        mysqli_close($mysqli); //закрываем соедение с БД
        echo "Пользователь успешно зарегистрирован";
    } else {
        echo "Пользователь уже есть";
    }
?>