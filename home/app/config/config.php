<?php
//DB PARAMS

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
// define('DB_PSW', 'i6263xsd');
define('DB_PSW', '');
define('DB_NAME', 'mypage');
//For the App Root
define('APP_ROOT', dirname(dirname(__FILE__)));
//URL ROOT 
define('URL_ROOT', 'http://dordl.com');
//SITE NAME 
define('SITE_NAME', 'Fullstack Web Developer - Dor Dylan Levy');




?>
<script>
    var BASE_URL = '<?= URL_ROOT ?>'
</script>