<script>
    import buroImage from "../assets/buro.png";
    import buroMobileImage from "../assets/buro-mobile.png";
</script>

<section class="buro-section --margin-bottom" id="buro">
    <div class="container">
        <div class="buro">
            <h3 class="--text-xxl">ДИЗАЙН-БЮРО RESTORACIA</h3>
            <div class="buro-desc">
                <h4 class="--text-l">
                    Дизайнерам<br />декораторам<br />архитекторам
                </h4>
                <div class="buro-desc-grid">
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>Уникальная и качественная мебель</p>
                    </div>
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>
                            Сопровождение дизайнера на всех этапах реализации
                            проекта
                        </p>
                    </div>
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>
                            Доступ к библиотеке <br />3D-моделей
                        </p>
                    </div>
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>PR совместно реализованных проектов</p>
                    </div>
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>Агентское вознаграждение, прозрачно и оперативно</p>
                    </div>
                    <div class="buro-desc-grid-element">
                        <span></span>
                        <p>
                            Программа лояльности и доступ к закрытыи
                            мероприятиям
                        </p>
                    </div>
                </div>
                <button
                    class="button"
                    on:click={() => {
                        document.querySelector("#ctaModal").showModal();
                        document.querySelector("body").classList.add('fixed');
                    }}
                    >СТАТЬ ПАРТНЕРОМ</button
                >
            </div>
            <div class="buro-image">
                <img
                    src={buroMobileImage}
                    alt="furniture photo"
                    class="visible-mobile"
                />
                <img
                    src={buroImage}
                    alt="furniture photo"
                    class="hidden-mobile"
                />
            </div>
        </div>
    </div>
</section>

<style lang="scss">
    .buro {
        display: grid;
        grid-template-columns: 1fr 1fr;
        column-gap: 20px;
        row-gap: 50px;

        @media (max-width: 1024px) {
            grid-template-columns: 2fr 1fr;
        }
        @media (max-width: 767px) {
            display: flex;
            flex-direction: column;
            row-gap: 40px;
        }
        h3 {
            grid-column: 1/3;

            @media (max-width: 767px) {
                order: 1;
            }
        }

        &-desc {
            display: flex;
            flex-direction: column;
            gap: 50px;
            padding-left: 15%;

            @media (max-width: 1024px) {
                padding-left: 0;
            }
            @media (max-width: 767px) {
                order: 3;
                gap: 30px;

                .button {
                    align-self: center;
                }
            }

            &-grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                column-gap: 20px;
                row-gap: 50px;

                @media (max-width: 1024px) {
                    column-gap: 20px;
                    row-gap: 30px;
                }
                @media (max-width: 767px) {
                    display: flex;
                    flex-direction: column;
                    gap: 15px;
                }

                &-element {
                    display: flex;
                    align-items: start;
                    gap: 20px;

                    @media (max-width: 767px) {
                        align-items: center;
                    }

                    p {
                        color: rgb(255, 255, 255, 0.6);
                        text-wrap: balance;
                    }

                    span {
                        flex: 0 0 40px;
                        height: 1px;
                        margin: 20px 0;
                        background-color: rgb(255, 255, 255, 0.6);

                        @media (max-width: 1024px) {
                            flex: 0 0 20px;
                        }
                    }
                }
            }
        }

        &-image {
            display: flex;
            align-items: end;
            @media (max-width: 767px) {
                order: 1;
            }
            img {
                width: 135%;
                margin-left: -35%;

                @media (max-width: 1024px) {
                    width: 160%;
                    margin-left: -60%;
                }
                @media (max-width: 767px) {
                    width: 100%;
                    margin-left: 0;
                }
            }
        }
    }
</style>
