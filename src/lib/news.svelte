<script>
    import news1 from "../assets/news1.png";
    import news2 from "../assets/news2.png";
    import news3 from "../assets/news3.png";
    import news4 from "../assets/news4.png";
    import news5 from "../assets/news5.png";
</script>

<section class="news-section ">
    <div class="container">
        <div class="news">
            <h6 class="--text-xxl">События</h6>
            <div class="news-grid">
                <a href="#" class="news-grid-element">
                    <div class="news-grid-element-image">
                        <img src={news1} alt="" />
                    </div>
                    <p class="news-grid-element-date">12.05.2024</p>
                    <p class="news-grid-element-title">
                        Restoracia Design в Казахстане
                    </p>
                    <div class="news-grid-element-desc">
                        В честь праздника организовали Summer Design Party для
                        рестораторов и дизайнеров HoReCa. В программе
                        презентация нового бренда премиальной линейки мебели
                        Restoracia.Design
                    </div>
                </a>
                <a href="#" class="news-grid-element">
                    <div class="news-grid-element-image">
                        <img src={news2} alt="" />
                    </div>
                    <p class="news-grid-element-date">12.05.2024</p>
                    <p class="news-grid-element-title">
                        Следили за Milan Design Week 2024?
                    </p>
                    <div class="news-grid-element-desc">
                        Приятно, что многие из представленных на Неделе Дизайна
                        тенденций уже используется в России в производстве
                        мебели для ресторанов. Рассказывает Максим Печников
                        собственник бренда Restoracia.Design
                    </div>
                </a>
                <a href="#" class="news-grid-element">
                    <div class="news-grid-element-image">
                        <img src={news3} alt="" />
                    </div>
                    <p class="news-grid-element-date">12.05.2024</p>
                    <p class="news-grid-element-title">
                        VI Всероссийский конгресс рестораторов
                    </p>
                    <div class="news-grid-element-desc">
                        Ресторация выступила официальным поставщиком мебели для
                        VI Всероссийского конгресса рестораторов, на котором
                        представила новый бренд люксовой мебели
                        Restoracia.Design
                    </div>
                </a>
                <a href="#" class="news-grid-element">
                    <div class="news-grid-element-image">
                        <img src={news4} alt="" />
                    </div>
                    <p class="news-grid-element-date">12.05.2024</p>
                    <p class="news-grid-element-title">
                        Заголовок новости, возможно занимающий две строки
                    </p>
                    <div class="news-grid-element-desc">
                        Собственник бренда Restoracia.Design Максим Печников дал
                        интервью организаторам главного гастрофестиваля страны
                    </div>
                </a>
                <a href="#" class="news-grid-element">
                    <div class="news-grid-element-image">
                        <img src={news5} alt="" />
                    </div>
                    <p class="news-grid-element-date">12.05.2024</p>
                    <p class="news-grid-element-title">
                        RESTORACIA Эксклюзивно для GASTREET
                    </p>
                    <div class="news-grid-element-desc">
                        Собственник бренда Restoracia.Design Максим Печников дал
                        интервью организаторам главного гастрофестиваля страны
                    </div>
                </a>
            </div>
            <button class="button">читать все новости</button>
        </div>
    </div>
</section>

<style lang="scss">
    .news {
        display: flex;
        flex-direction: column;
        gap: 60px;

        h6 {
            text-transform: uppercase;
        }
        .button {
            align-self: center;
        }

        &-section {
            padding: 80px 0;
            background-color: #222222;

            @media (max-width: 767px) {
                padding: 30px 0;
            }
        }

        &-grid {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            column-gap: 25px;
            row-gap: 60px;

            @media (max-width: 1024px) {
                grid-template-columns: 1fr 1fr;
                grid-template-rows: 1fr 1fr;
                column-gap: 20px;
                row-gap: 40px;
            }

            @media (max-width: 767px) {
                display: flex;
                flex-direction: column;
                gap: 20px;
            }

            &-element {
                display: flex;
                flex-direction: column;
                gap: 8px;

                @media (max-width: 1024px) {
                    &:nth-child(n + 5) {
                        display: none;
                    }
                }
                @media (max-width: 767px) {
                    &:nth-child(n + 3) {
                        display: none;
                    }
                }

                &-image {
                    margin-bottom: 8px;
                    overflow: hidden;

                    @media (hover: hover) {
                        &:hover {
                            img {
                                scale: 1.03;
                            }
                        }
                    }

                    @media (hover: none) {
                        &:active {
                            img {
                                scale: 1.03;
                            }
                        }
                    }
                    img {
                        height: 100%;
                        object-fit: cover;
                        aspect-ratio: 588/460;
                    }
                }
                &-date {
                    font-size: clamp(10px, calc(18 / 1600 * 100vw), 18px);
                }
                &-title {
                    font-size: clamp(16px, calc(22 / 1600 * 100vw), 22px);
                    text-transform: uppercase;
                }
                &-desc {
                    font-size: clamp(10px, calc(18 / 1600 * 10vw), 18px);
                    opacity: 0.6;
                    letter-spacing: 0.6px;

                    display: -webkit-box;
                    -webkit-line-clamp: 2;
                    line-clamp: 2;
                    -webkit-box-orient: vertical;
                    overflow: hidden;
                }
            }
        }
    }
</style>
