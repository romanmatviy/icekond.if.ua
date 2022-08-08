<?php
/**
 * Список бібліотек які будуть завантаження за замовчуванням
 */
$config['autoload'] = array('db', 'data');
$config['recaptcha'] = array(
	'public' => '',
	'secret' => '',
	'public_v3' => '6LeIioQUAAAAAMW53QAMXoAW33r1Z2RbJpUQtPqa',
	'secret_v3' => '6LeIioQUAAAAAFph5g4t9TXK_mvxl5sbgMndaz8e'
);
$config['facebook'] = array('appId' => 'FACEBOOK_APP_ID', 'secret' => 'FACEBOOK_SECRET_KEY');
$config['googlesignin'] = array('clientId' => 'GOOGLE_CLIENT_ID', 'secret' => 'GOOGLE_API_SECRET');

/**
 * Параметри для з'єднання до БД
 */
if ($_SERVER['HTTP_HOST'] == 'icekond.localhost') {
	$config['db'] = array(
		'host' 		=> 'localhost',
		'user' 		=> 'root',
		'password'	=> 'root',
		'database'	=> 'icekond'
	);
} else {
	$config['db'] = array(
		'host' 		=> 'localhost',
		'user' 		=> 'lihtarin_testing',
		'password'	=> 'testing47!%T',
		'database'	=> 'lihtarin_icekond'
	);
}

$config['mail'] = array(
	'host' 		=> '$MAILHOST',
	'user' 		=> '$MAILUSER',
	'password'	=> '$MAILPASSWORD',
	'port'		=> '$MAILPORT'
);

$config['Paginator'] = array(
	'ul'		=> 'pagination nomargin'
);
$config['video'] = array(
	'width'		=> 737
);

?>
