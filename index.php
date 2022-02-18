<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            font-size: 30px;
        }
        img {
            margin-top: 15px;
        }
        a {
            text-decoration: none;
            color:black;
        }
        a:hover {
            color:pink;
        }
        div {
            display: flex;
            flex-direction: column;
            background-color: oldlace;
            align-items: center;
            margin: 1px;
            padding: 35px;
            border-radius: 15px;
        }
        div div {
            background-color: paleturquoise;
        }
        div div div div {
            background-color: azure;
        }
        div div div div div {
            background-color: pink;
            margin-top: 30px;
        }
    </style>
</head>
<body onload="Reload_Counter();">
    <div>
        <div>
            <p>
                <a href="form_register.html">
                    | Регистрация |
                </a>
                <a href="form_order.php">
                    заявка |
                </a>
                <a href="form_tasks.php">
                    Мои заявки |
                </a>
            </p>
            <div>
                <div>
                    <?php
                        echo "Hello Kitty".'<hr>';
                        //require("./requests.php");
                        require("./get_users.php");
                        echo "<p>Количество решенных предьяв: <label id='status'></label></p>";
        
                        Get_Tasks();
                    ?>
                </div>
            </div>
    <script>
        async function Reload_Counter(){
            let response = await fetch('reloader.php',{
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                    // 'Content-Type': 'application/x-www-form-urlencoded',
                }
            });
            let data = await response.json()
            document.getElementById("status").innerHTML = data.status;
        }
        setInterval(Reload_Counter,5000);
    </script>
</body>
</html>
