<script>
    import logo from "../assets/logo.svg";
</script>

<footer>
    <div class="container">
        <div class="footer">
            <div class="footer-logo">
                <a href="#"><img src={logo} alt="" /></a>
                <p>© Ресторация 2003–2023</p>
            </div>
            <div class="footer-info">
                <div>
                    <p>Москва</p>
                    <a href="tel:+7 495 545-22-66">+7 495 545-22-66</a>
                </div>
                <div>
                    <p>Краснодар</p>
                    <a href="tel:+7 861 202-54-66">+7 861 202-54-66</a>
                </div>
                <div>
                    <p>Санкт-Петербург</p>
                    <a href="tel:+7 812 317-02-32">+7 812 317-02-32</a>
                </div>
                <div>
                    <p>Алматы</p>
                    <a href="tel:+7 727 310-19-36">+7 727 310-19-36</a>
                </div>
                <div>
                    <p>Соцсети</p>
                    <div>
                        <a href="#">Telegram</a>
                        <a href="#">Instagram</a>
                        <a href="#">Youtube</a>
                    </div>
                </div>
            </div>
            <p class="footer-additional visible-mobile">© Ресторация 2003–2023</p>
        </div>
    </div>
</footer>

<style lang="scss">
    .footer {
        padding: 120px 0;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 25px;

        @media (max-width: 1024px) {
            grid-template-columns: 1fr 1fr;
        }
        @media (max-width: 767px) {
            display: flex;
            flex-direction: column;
            gap: 60px;
        }

        &-logo {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;

            a {
                width: 75%;

                @media (max-width: 767px) {
                    width: 50%;
                }
            }
            p {
                color: #989a98;

                @media (max-width: 767px) {
                    display: none;
                }
            }
        }

        &-info {
            display: grid;
            grid-template-columns: calc((100% - 28px) / 2) calc(
                    (100% - 28px) / 2
                );
            row-gap: 28px;
            column-gap: 50px;

            grid-column: 3/4;

            @media (max-width: 1024px) {
                grid-column: 2/3;
            }

            @media (max-width: 767px) {
                gap: 50px;
            }

            div {
                display: flex;
                flex-direction: column;
                gap: 16px;
                width: fit-content;

                @media (max-width: 767px) {
                    &:last-child{
                        grid-column: 1/3;
                    }
                }

                p {
                    color: #989a98;
                    font-size: 16px;

                    @media (max-width: 1024px) {
                        font-size: 14px;
                    }
                }

                a {
                    font-size: 24px;

                    @media (max-width: 1024px) {
                        font-size: 16px;
                    }
                }

                div {
                    display: flex;
                    flex-direction: row;
                    gap: 20px;

                    @media (max-width: 767px) {
                        justify-content: space-between;
                    }
                }
            }
        }
        &-additional{
            color: #989a98;
        }
    }
</style>
