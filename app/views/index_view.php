<?php $all_g = $this->load->function_in_alias('shop', '__get_Groups', -1); ?>
<?php $products = array_reverse($this->load->function_in_alias('shop', '__get_Products')) ?>

<?php
$kond = [21 => [], 25 => [], 35 => []];
$reky = [21 => [], 25 => [], 35 => []];

foreach ($products as $item) {
    if (isset($item->typ) && $item->typ->name == "Кондиціонер" && $item->group_name == "21") {
        if ($item->ekonom->name == "VIP") {
            $kond[21][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $kond[21][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $kond[21][0] = $item;
        }
    }

    if (isset($item->typ) && $item->typ->name == "Кондиціонер" && $item->group_name == "21-25") {
        if ($item->ekonom->name == "VIP") {
            $kond[25][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $kond[25][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $kond[25][0] = $item;
        }
    }

    if (isset($item->typ) && $item->typ->name == "Кондиціонер" && $item->group_name == "25-35") {
        if ($item->ekonom->name == "VIP") {
            $kond[35][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $kond[35][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $kond[35][0] = $item;
        }
    }
}

foreach ($products as $item) {
    if (isset($item->typ) && $item->typ->name == "Рекуператор" && $item->group_name == "21") {
        if ($item->ekonom->name == "VIP") {
            $reky[21][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $reky[21][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $reky[21][0] = $item;
        }
    }

    if (isset($item->typ) && $item->typ->name == "Рекуператор" && $item->group_name == "21-25") {
        if ($item->ekonom->name == "VIP") {
            $reky[25][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $reky[25][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $reky[25][0] = $item;
        }
    }

    if (isset($item->typ) && $item->typ->name == "Рекуператор" && $item->group_name == "25-35") {
        if ($item->ekonom->name == "VIP") {
            $reky[35][2] = $item;
        }
        if ($item->ekonom->name == "Оптимальний") {
            $reky[35][1] = $item;
        }

        if ($item->ekonom->name == "Економ") {
            $reky[35][0] = $item;
        }
    }
}

function set_sale_class($name)
{
    $span_classs = '';
    switch ($name) {
        case "-50% на монтаж":
            $span_classs = "percent-minus";
            break;
        case "Топ продаж":
            $span_classs = "top-sale";
            break;
        case "Акція":
            $span_classs = "sale-sale";
            break;
        default:
            $span_classs = "percent-minus";
    }

    return $span_classs;
}

ksort($kond[21]);
ksort($kond[25]);
ksort($kond[35]);

ksort($reky[21]);
ksort($reky[25]);
ksort($reky[35]);

?>


<section class="main-section">
    <div class="blur-background"></div>
    <div class="main-section-into d-flex container">
        <div class="main-sale-mob-form">
            <p class="main-sale">При покупці кондиціонера <span>знижка 50%</span> на монтаж</p>
            <form class="main-mobile-form" action="<?= SERVER_URL ?>save/calculate" class="form ajax">
                <p>Отримайте знижку 50% на монтаж кондиціонера</p>
                <label for="tel-order-calculation flex">
                    <img src="style/images/tel.svg" alt="tel">
                    <input name="phone" id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
                </label>
                <input type="submit" class="" value="Замовити">
            </form>
        </div>
        <h1>Продаж та професійний монтаж кондиціонерів та теплових насосів</h1>
        <div class="main-pluses d-flex align-center wrap">
            <p>Продаж</p>
            <div class="grey-dot"></div>
            <p>монтаж</p>
            <div class="grey-dot"></div>
            <p>обслуговування</p>
        </div>
        <a href="#calc-seaction" class="main-calc-butt green-button d-flex align-center justify-center">
            <img src="style/images/calculate.svg" alt="calc">
            Розрахувати вартість
        </a>
        <div class="main-benefits d-flex wrap align-center">
            <div class="d-flex main-benefit">
                <img src="style/images/main5.svg" alt="benefit">
                <p>Доставка та (монтаж)<br> установка за 1 день</p>
            </div>
            <div class="d-flex main-benefit">
                <img src="style/images/main6.svg" alt="benefit">
                <p>Безкоштовний виїзд<br> інженера на обміри</p>
            </div>
            <div class="d-flex main-benefit">
                <img src="style/images/main3.svg" alt="benefit">
                <p>Понад 10 років<br> досвіду работи</p>
            </div>
            <div class="d-flex main-benefit">
                <img src="style/images/main2.svg" alt="benefit">
                <p>Чесна ціна під ключ:<br> жодних переплат та доплат</p>
            </div>
            <div class="d-flex main-benefit">
                <img src="style/images/main4.svg" alt="benefit">
                <p>Гарантія на<br> обладнання до 5 років</p>
            </div>
            <div class="d-flex main-benefit">
                <img src="style/images/main1.svg" alt="benefit">
                <p>Кондиціонери від<br> 20 світових брендів</p>
            </div>
        </div>
    </div>
</section>
<section id="calc-seaction" class="calc-seaction container">
    <h2 class="section-item">Розрахуйте попередню вартість Вашої системи кондиціонування чи вентиляції</h2>
    <p class="calc-p">Дайте відповідь на запитання і ми з Вами зв’яжемося</p>
    <div class="rhomb-line">
        <div class="d-flex align-center justify-between">
            <div class="rhomb">
                <img class="rhomb-grey form__element-hide" src="style/images/rhombDis.svg" alt="point">
                <img class="rhomb-green " src="style/images/rhomb.svg" alt="point">
            </div>
            <div class="rhomb">
                <img class="rhomb-grey" src="style/images/rhombDis.svg" alt="point">
                <img class="rhomb-green form__element-hide" src="style/images/rhomb.svg" alt="point">
            </div>
            <div class="rhomb">
                <img class="rhomb-grey" src="style/images/rhombDis.svg" alt="point">
                <img class="rhomb-green form__element-hide" src="style/images/rhomb.svg" alt="point">
            </div>
            <div class="rhomb">
                <img class="rhomb-grey" src="style/images/rhombDis.svg" alt="point">
                <img class="rhomb-green form__element-hide" src="style/images/rhomb.svg" alt="point">
            </div>
        </div>
    </div>
    <div class="form-container">
        <form action="<?= SERVER_URL ?>save/calculate" class="form ajax">
            <span class="form__title">Тип об’єкту?</span>
            <span class="form__title form__element-hide">Орієнтовна площа приміщення?</span>
            <span class="form__title form__element-hide">Чи потрібні терміни виконання послуг?</span>
            <span class="form__title form__element-hide">Готово!</span>
            <div class="form__wrap">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="form__slide-wrap check-form-one d-flex justify-between wrap">
                                <div class="radio-one-block">
                                    <label for="flat">
                                        <img src="images/1 объект фото.png" alt="flat">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="flat" name="space" class="one-block-input"
                                                value="Квартира">
                                            <p>Квартира</p>
                                        </div>
                                    </label>
                                </div>
                                <div class="radio-one-block">
                                    <label for="house">
                                        <img src="images/2 объект фото.png" alt="house">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="house" name="space" class="one-block-input"
                                                value="Будинок">
                                            <p>Будинок</p>
                                        </div>
                                    </label>
                                </div>
                                <div class="radio-one-block">
                                    <label for="office">
                                        <img src="images/3 объект фото.png" alt="office">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="office" name="space" class="one-block-input"
                                                value="Офіс">
                                            <p>Офіс</p>
                                        </div>
                                    </label>
                                </div>
                                <div class="radio-one-block">
                                    <label for="store">
                                        <img src="images/4 объект фото.png" alt="store">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="store" name="space" class="one-block-input"
                                                value="Магазин">
                                            <p>Магазин</p>
                                        </div>
                                    </label>
                                </div>
                                <div class="radio-one-block">
                                    <label for="hotel">
                                        <img src="images/5 объект фото.png" alt="hotel">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="hotel" name="space" class="one-block-input"
                                                value="Готель">
                                            <p>Готель</p>
                                        </div>
                                    </label>
                                </div>
                                <div class="radio-one-block">
                                    <label for="other-space">
                                        <img src="images/6 объект фото.png" alt="other-space">
                                        <div class="d-flex align-center">
                                            <input type="radio" id="other-space" name="space" class="one-block-input"
                                                value="Інше приміщення">
                                            <p>Інше приміщення</p>
                                        </div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="check-form-two check-form-block">
                                <div class="check-form d-flex align-center">
                                    <img src="images/этап2 фото.png" class="check-form-two-img" alt="room">
                                    <div class="check-form-two-inner">
                                        <div class="square-calc d-flex align-center">
                                            <p>ПЛОЩА:</p>
                                            <input name="square" type="number" min="0" max="100" id="rangevalue"
                                                value="0" oninput="range.value=value"
                                                class="square-input two-block-input">
                                            <p>м&sup2</p>
                                        </div>
                                        <input class="range-input two-block-input" type="range" value="0" min="0"
                                            max="100" id="range" oninput="rangevalue.value=value" />
                                        <div class="check-two-block d-flex align-center">
                                            <input name="no-square" type="checkbox" id="remember"
                                                class="two-block-input" value="Не пам’ятаю">
                                            <label for="remember">Не пам’ятаю</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="check-form-three check-form-block">
                                <div class="check-form-three-inner d-flex align-center">
                                    <img src="images/этап3 фото.png" alt="room">
                                    <div class="radio-three-block">
                                        <div class="radio-time d-flex align-center">
                                            <input type="radio" id="time-tomorrow" name="radio-time"
                                                class="three-block-input" value="Вже завтра">
                                            <label for="time-tomorrow">Вже завтра</label>
                                        </div>
                                        <div class="radio-time d-flex align-center">
                                            <input type="radio" id="time-week" name="radio-time"
                                                class="three-block-input" alue="Протягом тижня">
                                            <label for="time-week">Протягом тижня</label>
                                        </div>
                                        <div class="radio-time d-flex align-center">
                                            <input type="radio" id="time-month" name="radio-time"
                                                class="three-block-input" alue="Протягом тижня">
                                            <label for="time-month">Протягом тижня</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="check-form-four check-form-block">
                                <div class="">
                                    <h5>Для отримання розрахунку та <span class="green-bold-text">знижки 50%</span> на
                                        монтаж залиште свої дані і ми зв’яжемося з Вами</h5>
                                    <div class="common-form">
                                        <label for="name-order-calculation flex">
                                            <img src="style/images/name.svg" alt="name">
                                            <input name="name" id="name-order-calculation" type="text" required
                                                placeholder="Ваше ім’я">
                                        </label>
                                        <label for="tel-order-calculation flex">
                                            <img src="style/images/tel.svg" alt="tel">
                                            <input name="phone" id="tel-order-calculation" type="tel" required
                                                placeholder="Ваш телефон">
                                        </label>
                                        <input type="submit" class="green-button" value="Розрахувати вартість">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form__btn-wrap d-flex align-center justify-center">
                <button type="button" class="swiper-prev">Назад</button>
                <button type="button" class="swiper-next blur-for-button">Далі</button>
            </div>
        </form>
    </div>
</section>

<section id="order-section" class="order-section container">
    <div class="order-type d-flex justify-center">
        <?php foreach ($all_g as $index => $item) {;
            if ($item->parent == 0) { ?>
        <a href="#"
            class=" <?= $item->name == "Кондиціонер" ? 'air-conditioner' : 'recuperator' ?> conditioner type <?= $index  == 0 ? 'active' : '' ?>">
            <?= $item->name ?>
        </a>
        <?php }
        } ?>
    </div>
    <div class="air-conditioners">
        <h2 class="section-item">Купити кондиціонер в Івано-Франківську</h2>
        <p class="order-section-p">Акційні пропозиції кондиціонерів з монтажем, які ми рекомендуємо виходячи з
            нашого досвіду та співвідношення ціна/якість</p>
        <div class="choose-room-size d-flex">
            <div>
                <p>Площа приміщення:</p>
            </div>
            <div class="choose-room-option d-flex">
                <?php $tab_index = 0;
                foreach ($all_g as $index => $item) {;
                    if ($item->parent == 1) { ?>
                <a id="c<?= $tab_index  ?>" href=" #"
                    class="to-21-c room-size room-size-c <?= $item->name  == "21" ? 'active' : '' ?>"><?= $item->name ?>
                    м&sup2</a>
                <?php $tab_index++;;
                    }
                } ?>
            </div>
        </div>

        <?php $tab_index = 0;
        foreach ($kond as $item) { ?>
        <div id="cond-c<?= $tab_index ?>" class="sale-line cond">
            <?php foreach ($item as  $product) { ?>
            <div class="order-position-block sale-block">
                <div class="set-type">
                    <h4>Пакет <span><?= $product->ekonom->name ?></span></h4>
                </div>
                <div class="sale-img">
                    <img src="<?= IMG_PATH . $product->photo ?>" alt="tover">
                </div>
                <h5 class="sale-item"><?= $product->name ?></h5>
                <p class="sale-description"><?= $product->text ?></p>

                <div>
                    <p class="service-plus">+ монтаж “під ключ”</p>
                    <p class="order-block-price"><?= $product->price ?></p>
                </div>
                <form action="<?= SERVER_URL ?>save/call-me" class="common-form ajax">
                    <input name="item" type="text" style="display: none;" value="<?= $product->name ?>">
                    <label for="tel-order-calculation flex">
                        <img src="style/images/tel.svg" alt="tel">
                        <input name="phone" id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
                    </label>
                    <input type="submit" class="green-button" value="Замовити">
                </form>
                <p class="saving">Економія 500 грн</p>
            </div>
            <?php } ?>

        </div>
        <?php $tab_index++;
        } ?>
    </div>

    <div class="recuperators">
        <h2 class="section-item">Купити рекуператори в Івано-Франківську</h2>
        <p class="order-section-p">Акційні пропозиції рекуператорів з монтажем, які ми рекомендуємо виходячи з
            нашого досвіду та співвідношення ціна/якість</p>
        <div class="choose-room-size d-flex justify-center align-center">

            <?php $tab_index = 0;

            foreach ($all_g as $index => $item) {;
                if ($item->parent == 2) {
            ?>

            <a id="rec<?= $tab_index ?>" href="#"
                class="to-21-r room-size room-size-r <?= $item->name  == "21" ? 'active' : '' ?>">
                <?= $item->name ?>
                м&sup2</a>
            <?php $tab_index++;
                }
            } ?>

        </div>
        <?php $tab_index = 0;
        foreach ($kond as $item) { ?>
        <div id="r-rec<?= $tab_index ?>" class="sale-line cond">
            <?php foreach ($item as  $product) { ?>
            <div class="order-position-block sale-block">
                <div class="set-type">
                    <h4>Пакет <span><?= $product->ekonom->name ?></span></h4>
                </div>
                <div class="sale-img">
                    <img src="<?= IMG_PATH . $product->photo ?>" alt="tover">
                </div>
                <h5 class="sale-item"><?= $product->name ?></h5>
                <div>
                    <p class="service-plus">+ монтаж “під ключ”</p>
                    <p class="order-block-price">8150 грн</p>
                </div>
                <form action="" class="common-form">
                    <label for="tel-order-calculation flex">
                        <img src="style/images/tel.svg" alt="tel">
                        <input id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
                    </label>
                    <input type="submit" class="green-button" value="Замовити">
                </form>
                <p class="saving">Економія 500 грн</p>
            </div>
            <?php } ?>

        </div>
        <?php $tab_index++;
        } ?>

    </div>
    <p class="specification">*Монтаж “під ключ” включає довжину магістралі до 3-х метрів. <a href="#">Детальніше...</a>
    </p>
</section>
<section class="calculation-call-section blue-back">
    <h2 class="section-item">Отримайте кошторис Вашої ситеми<br> кондиціонування чи вентиляції
        <span>БЕЗКОШТОВНО</span>
    </h2>
    <div class="calculation-call-block container flex align-center">
        <img class="calculation-call-img" src="style/images/calc.png" alt="calc">
        <div class="calculation-call-form">
            <h4 class="text-center">Залишайте заявку і отримайте:</h4>
            <div class="d-flex align-center mb-10">
                <img src="style/images/check.png" alt="check">
                <p>Безкоштовна консультація та підбір обладнання</p>
            </div>
            <div class="d-flex align-center mb-10">
                <img src="style/images/check.png" alt="check">
                <p>Виїзд інженера на заміри</p>
            </div>
            <div class="d-flex align-center mb-10">
                <img src="style/images/check.png" alt="check">
                <p>Кошторис системи кондиціонування в 3-х варіантах</p>
            </div>
            <div class="d-flex align-center mb-10">
                <img src="style/images/check.png" alt="check">
                <p>Терміни виконання робіт</p>
            </div>
            <form action="<?= SITE_URL ?>save/call-me" class="common-form ajax">
                <label for="name-order-calculation flex">
                    <img src="style/images/name.svg" alt="name">
                    <input name="name" id="name-order-calculation" type="text" required placeholder="Ваше ім’я">
                </label>
                <label for="tel-order-calculation flex">
                    <img src="style/images/tel.svg" alt="tel">
                    <input name="phone" id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
                </label>
                <input type="submit" class="green-button" value="Отримати кошторис">
            </form>
        </div>
    </div>
</section>

<section id="hit-sale" class="hit-sale container">
    <h2 class="section-item">Хіти продаж</h2>
    <div class="sale-line">


        <?php foreach ($products as $item) {
        ?>

        <div class="hit-sale-position sale-block">
            <div class="sales-marks">
                <?php if (isset($item->akcija) && is_array($item->akcija)) {
                        foreach ($item->akcija as $akcija) {
                    ?>
                <p class="<?= set_sale_class($akcija->name) ?>"><span><?= $akcija->name ?></span></p>
                <?php }
                    } else {
                        if (isset($item->akcija)) { ?>
                <p class="<?= set_sale_class($akcija->name) ?>"><span><?= $item->akcija->name ?></span></p>
                <?php }
                    } ?>
                <?php if (isset($item->old_price_in)) { ?>
                <p class="super-price">Супер ціна</p>
                <?php } ?>
            </div>
            <div class="sale-bank">
                <?php if (isset($item->oplata_chastynamy) && is_array($item->oplata_chastynamy)) {
                        foreach ($item->oplata_chastynamy as $bank) { ?>
                <img src="<?= $bank->photo ?>" class="mono-parts" alt="mono-parts">
                <?php }
                    } else {
                        if (isset($item->oplata_chastynamy)) { ?>
                <img src="<?= $item->oplata_chastynamy->photo ?>" class="mono-parts" alt="mono-parts">
                <?php }
                    } ?>
            </div>
            <div class="sale-img">
                <img src="<?= IMG_PATH . $item->small_photo ?>" alt="<?= $item->name ?>">
            </div>
            <h5 class="sale-item"><?= $item->name ?></h5>
            <p class="sale-description"><?= $item->list ?></p>
            <div class="price">
                <?php if (isset($item->old_price_in)) { ?>
                <span class="old-price"><?= $item->old_price_in ?></span>
                <?php } ?>

                <span class="current-price"><?= $item->price ?></span>
            </div>
            <form action="<?= SERVER_URL ?>save/call-me" class="common-form ajax">
                <label for="tel-order-calculation flex">
                    <img src="style/images/tel.svg" alt="tel">
                    <input name="item" value="<?= $item->name ?>" style="display: none;">
                    <input name="phone" id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
                </label>
                <input type="submit" class="green-button" value="Замовити">
            </form>
        </div>

        <?php } ?>

    </div>
</section>
<section id="our-certifications" class="our-certifications blue-back">
    <h2 class="section-item">Наші сертифікати</h2>
    <div class="container d-flex wrap flex-start">
        <img src="images/Rectangle 88.png" alt="Certifications">
        <img src="images/Rectangle 89.png" alt="Certifications">
        <img src="images/Rectangle 90.png" alt="Certifications">
        <img src="images/Rectangle 91.png" alt="Certifications">
    </div>
</section>
<section class="our-works container">
    <h2 class="section-item">Наші роботи</h2>
    <div class="d-flex wrap flex-start">
        <img src="images/Rectangle 92.png" alt="our work">
        <img src="images/Rectangle 94.png" alt="our work">
        <img src="images/Rectangle 93.png" alt="our work">
        <img src="images/Rectangle 95.png" alt="our work">
        <img src="images/Rectangle 96.png" alt="our work">
        <img src="images/Rectangle 97.png" alt="our work">
        <img src="images/Rectangle 98.png" alt="our work">
        <img src="images/Rectangle 99.png" alt="our work">
    </div>
</section>
<section id="order-calculation" class="order-calculation container">
    <h2 class="section-item">Замовляйте безкоштовний виїзд інженера на заміри</h2>
    <form action="<?= SERVER_URL ?>save/call-me" class="common-form ajax">
        <label for="name-order-calculation d-flex">
            <img src="style/images/name.svg" alt="name">
            <input name="name" id="name-order-calculation" type="text" required placeholder="Ваше ім’я">
        </label>
        <label for="tel-order-calculation d-flex">
            <img src="style/images/tel.svg" alt="tel">
            <input name="phone" id="tel-order-calculation" type="tel" required placeholder="Ваш телефон">
        </label>
        <input type="submit" class="green-button" value="Замовити заміри">
    </form>
    </div>
</section>
<section class="brands container">
    <h2 class="section-item">Бренди</h2>
    <div class="d-flex wrap flex-star">
        <img src="images/Rectangle 100.png" alt="brand">
        <img src="images/Rectangle 101.png" alt="brand">
        <img src="images//Rectangle 102.png" alt="brand">
        <img src="images/Rectangle 103.png" alt="brand">
        <img src="images/Rectangle 104.png" alt="brand">
        <img src="images/Rectangle 105.png" alt="brand">
        <img src="images/Rectangle 106.png" alt="brand">
        <img src="images/Rectangle 107.png" alt="brand">
        <img src="images/Rectangle 108.png" alt="brand">
        <img src="images/Rectangle 109.png" alt="brand">
    </div>
</section>
<section class="map">
    <h2 class="section-item">Працюємо по Івано-Франківську</h2>
    <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2621.4465085766933!2d24.703686115090246!3d48.92593670390335!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4730c11229523419%3A0x32068f769322f60a!2z0LLRg9C70LjRhtGPINCf0LDQstC70LAg0KLQuNGH0LjQvdC4LCA40JAsINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LosINCG0LLQsNC90L4t0KTRgNCw0L3QutGW0LLRgdGM0LrQsCDQvtCx0LvQsNGB0YLRjCwgNzYwMDA!5e0!3m2!1suk!2sua!4v1656474404268!5m2!1suk!2sua"
        width="" height="" style="border:0;" allowfullscreen="" loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>