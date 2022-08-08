<?php

/*
 * Telegram Bot
 *
 * v1.0 base
 *
 */

class telegram_bot
{
    public $token;
    public $chat_id;
    public $message = 'Hello From White Lion CMS';
    public static $sendMessageOk = 1;
    public static $sendMessageError = 0;
    public $message_array;
    public $message_string;

    public function __construct($data)
    {
        if ($data) {
            $this->token = $data['token'];
            $this->chat_id = $data['chat_id'];
        }
    }

    public function setChatId($chat_id)
    {
        $this->chat_id = $chat_id;
    }

    public function config($data)
    {
        if ($data) {
            $this->token = $data['token'];
            $this->chat_id = $data['chat_id'];
        }
    }

    public function test()
    {
        ini_set('max_execution_time', 1800);
        ini_set('max_input_time', 1800);
        ini_set('memory_limit', '1024M');

        if ($this->token && $this->chat_id) {
            $response = file_get_contents('http://api.telegram.org/bot' . $this->token . '/getUpdates');

            dd($response);
        }
    }

    public function message($message)
    {
        $this->message = $message;
    }

    public function send()
    {
        $response = false;
        $message_count_line = substr_count($this->message, "\n");
        if (!$message_count_line || $message_count_line <= 10) {
            $data = [
                'chat_id' => $this->chat_id,
                'text' => $this->message,
            ];

            $response = file_get_contents('http://api.telegram.org/bot' . $this->token . '/sendMessage?' . http_build_query($data));

            $this->response($response);
        } else {
            $this->message_array = explode("\n", $this->message);
            $this->message_array = array_chunk($this->message_array, 10);

            foreach ($this->message_array as $key => $arr) {
                $numItems = count($arr);
                $i = 0;

                foreach ($arr as $key => $value) {
                    $this->message_string .= $value . "\n";

                    if (++$i === $numItems) {
                        $data = [
                            'chat_id' => $this->chat_id,
                            'text' => $this->message_string,
                        ];

                        $this->message_string = '';

                        $response = file_get_contents('http://api.telegram.org/bot' . $this->token . '/sendMessage?' . http_build_query($data));
                    }
                }
            }
        }
        echo $this->response((bool)$response);
    }

    private function response($response)
    {
        header('Content-type: application/json; charset=utf-8');
        $response = json_decode($response);

        if (!$response) {
            return self::$sendMessageOk;
        } else {
            return self::$sendMessageError;
        }
    }
}

/* use js:
var recaptchaVerifyCallback = function(response) {
    $('#colToUs form button').attr('disabled', false);
    $('#colToUs form button').attr('title', false);
};
var recaptchaExpiredCallback = function(response) {
    $('#colToUs form button').attr('disabled', true);
    $('#colToUs form button').attr('title', 'Заповніть "Я не робот"');
};
*/
