<script>
    import aboutImage from "../assets/about.png";
    import aboutMobileImage from "../assets/about-mobile.png";
</script>

<section class="about-section --margin-bottom">
    <div class="container">
        <div class="about">
            <div class="about-image">
                <img src={aboutImage} alt="furniture" class="hidden-mobile" />
                <img src={aboutMobileImage} alt="furniture" class="visible-mobile" />
            </div>
            <div class="about-desc">
                <h3 class="--text-l">
                    Премиальная мебель для изысканного интерьера
                </h3>
                <p>
                    Качественные материалы, которые выдерживают атмосферные
                    вечера в ресторанах и модных заведениях и при этом выглядят
                    первоклассно.
                    <br /><br />RESTORACIA ONE означает максимальную
                    индивидуальность и высокое качество.
                    <br /><br />Наши решения визуально и тактильно выглядят
                    качественно – благородно и современно.
                </p>
            </div>
        </div>
    </div>
</section>

<style lang="scss">
    .about {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 25px;

        @media (max-width: 1024px) {
            grid-template-columns: 1fr 1fr;
        }
        @media (max-width: 767px) {
            display: flex;
            flex-direction: column;
            gap: 50px;
        }

        &-image {
            grid-column: 1/3;
            padding-right: 50px;

            @media (max-width: 1024px) {
                grid-column: 1/2;
                padding-right: 0px;
            }
        }
        &-desc {
            display: flex;
            flex-direction: column;
            padding-bottom: 40px;
            justify-content: end;
            gap: 30px;
            height: 100%;

            @media (max-width: 1024px) {
                padding-bottom: 0px;
                gap: 20px;
            }

            h3 {
                text-transform: uppercase;
            }
            p {
                color: rgb(255, 255, 255, 0.6);
            }
        }
    }
</style>
