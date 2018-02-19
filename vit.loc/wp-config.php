<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'vitrovi');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'root');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'O@A^6%mr)1%0PCE<qKym*lI!oGD?Uv4$}!#m2! ?#W?AhJ#SI=Z>U(ztfO+<xV3%');
define('SECURE_AUTH_KEY',  '_,44c&w4i`ZCG:Jg{yiEUz<O$(-e[4eacA` djvay/b/33wfx^q`P^zhjQ[vvth:');
define('LOGGED_IN_KEY',    '1N(rAenp|gMgI[e/k-PfkB|b]e]TVFe}yi_dZ.#+sg+W=EQou1jq9?+my|3>]+zZ');
define('NONCE_KEY',        ',Bsu*Au.Q<)P#_C>wN+4-7HEhvUZZQwm.s$pG?Hx-:{Nw#sSDWEfg%bk,!^0Vf;*');
define('AUTH_SALT',        'tXE,BOEv?qmeI/J2fzhY^(xs1,b:G=lgJ}qg8-$b6F8uVNH4w^Gg5:V#5$&Mg#NE');
define('SECURE_AUTH_SALT', 'iJ.xNl14[mr.WLziu7$.4=EX8U?d8E7g(?QQhGX>wJE[qgPM3G snZ+iXv+4|t=e');
define('LOGGED_IN_SALT',   ')PO,1~]/i,=M5d0c:Sed0w=T.RZ]$%>I-1BDA/atX~{Wn,Cjm{xY&@DOp>CcLqHf');
define('NONCE_SALT',       '45H9ALe#`*l+k]+G.MK^l~kL!5K:iEacU|Uk)WLa}3JH?o#i)@Jfi6J|.&)4:$/$');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'nt_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
