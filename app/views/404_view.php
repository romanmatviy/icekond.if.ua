<main class="icecond-404-page">
    <div class="icecond-404">
        <span class="error-title">404</span>
        <p>Sorry, this page is not found!</p>
        <a class="btn" href="<?=SITE_URL?>">Return to the Main page.</a>
    </div>
</main>

<style>
    .icecond-404-page{
        background: rgba(0, 0, 0, 0.3);
    }
    .icecond-404{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        padding: 200px 30px;
    }
    .icecond-404 *{
        color: #fff;
    }
    .error-title {
        font-size: 200px;
        display: block;
        color: var(--color-primary);
        font-weight: 700;
    }
    .icecond-404 p{
        font-size: 34px;
        margin: 50px auto;
        line-height: 1.1;
    }
    .icecond-404 .btn {
        margin-top: 30px;
        padding: 5px;
        text-align: center;
        color: #fff;
        text-decoration: underline;
        display: block;
        width: auto;
        text-transform: none;
        transition: 0.5s
    }
    .icecond-404 .btn:hover{
        text-decoration: none;
    }
    @media (max-width: 767px) {
        .error-title {
            font-size: 100px;
        }
        .icecond-404 p{
            font-size: 24px;
        }
    }
</style>