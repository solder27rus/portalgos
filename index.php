<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex;
            width: 100%;
        }
        div {
            flex-direction: column;
            background-color: pink;
        }
        @media (max-width: 100%) {
            * {
                width: 100%;
            }
        }
    </style>
</head>
<body onload="Reload_Counter();">
    <div>
        <div>
            <a href="form_register.html">
                | Регистрация |
            </a>
            <a href="form_order.php">
                заявка |
            </a>
            <a href="form_tasks.php">
                Мои заявки |
            </a><hr>
            <div>
                <div>
                    <?php
                        echo "Hello Kitty";
                        //require("./requests.php");
                        require("./get_users.php");
                        echo "Количество решенных предьяв: <label id='status'></label>";
        
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
