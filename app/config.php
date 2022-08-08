<?php
/**
 * Список бібліотек які будуть завантаження за замовчуванням
 */
$config['autoload'] = ['db', 'data'];

if ($_SERVER['HTTP_HOST'] == 'icekond.localhost') {
    $config['recaptcha'] = [
        'public' => '',
        'secret' => '',
        'public_v3' => '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI',
        'secret_v3' => '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe'
    ];
} else {
    $config['recaptcha'] = [
        'public' => '',
        'secret' => '',
        'public_v3' => '6LeIioQUAAAAAMW53QAMXoAW33r1Z2RbJpUQtPqa',
        'secret_v3' => '6LeIioQUAAAAAFph5g4t9TXK_mvxl5sbgMndaz8e'
    ];
}

// telegram bot
$config['telegram_bot'] = [
    'token' => '5481591839:AAF339-vchhWrUOhecP7GbLwb3tSo3LvxgE',
    'chat_id' => '-1001798308360',
    // 'token' => '',
    // 'chat_id' => '',
];

$config['facebook'] = ['appId' => 'FACEBOOK_APP_ID', 'secret' => 'FACEBOOK_SECRET_KEY'];
$config['googlesignin'] = ['clientId' => 'GOOGLE_CLIENT_ID', 'secret' => 'GOOGLE_API_SECRET'];

/**
 * Параметри для з'єднання до БД
 */
if ($_SERVER['HTTP_HOST'] == 'icekond.localhost') {
    $config['db'] = [
        'host' => 'localhost',
        'user' => 'root',
        'password' => 'root',
        'database' => 'icekond'
    ];
} else {
    $config['db'] = [
        'host' => 'localhost',
        'user' => 'lihtarin_testing',
        'password' => 'testing47!%T',
        'database' => 'lihtarin_icekond'
    ];
}

$config['mail'] = [
    'host' => '$MAILHOST',
    'user' => '$MAILUSER',
    'password' => '$MAILPASSWORD',
    'port' => '$MAILPORT'
];

$config['Paginator'] = [
    'ul' => 'pagination nomargin'
];
$config['video'] = [
    'width' => 737
];
