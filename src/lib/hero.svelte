<script>
</script>

<section class="hero-section --margin-bottom">
    <div class="container">
        <div class="hero">
            <h1 class="--text-xxl">RESTORACIA<br />DESIGN</h1>
            <p class="--text-m">
                Элегантный дизайн для <br />взыскательных клиентов
            </p>
        </div>
    </div>
</section>

<style lang="scss">
    .hero {
        &-section {
            background-image: url("src/assets/bg-desktop.png");
            background-position: top center;
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            align-items: center;

            @media (max-width: 767px) {
                background-image: url("src/assets/bg-mobile.png");
                height: 100dvh;
            }
        }

        display: flex;
        height: 100%;
        align-self: center;
        flex-direction: column;
        gap: 25px;
        padding: 150px 0;

        @media (max-width: 767px) {
            gap: 40px;
        }

        h1 {
            text-align: center;
            color: #fff;
        }
        p {
            text-align: center;
            color: #fff;
        }
    }
</style>
