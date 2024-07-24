<script>
    import { writable } from "svelte/store";
    import product1 from "../assets/product-grid1.png";
    import product2 from "../assets/product-grid2.png";
    import product3 from "../assets/product-grid3.png";
    import product4 from "../assets/product-grid4.png";
    import product5 from "../assets/product-grid5.png";
    import { fade } from "svelte/transition";

    $: index = writable(1);

    function changeSlide(e) {
        $index = Number(e.currentTarget.dataset.section);
        console.log($index);
    }
</script>

<section class="product-grid-section --margin-bottom" id="catalog">
    <div class="container">
        <div class="product-grid">
            <h5 class="--text-xxl">кАТАЛОГ</h5>
            <div class="product-grid-links">
                <button
                    data-section="1"
                    on:click={changeSlide}
                    class:active={$index === 1}
                >
                    Все
                </button>
                <button
                    data-section="2"
                    on:click={changeSlide}
                    class:active={$index === 2}>THE ONE</button
                >
                <button
                    data-section="3"
                    on:click={changeSlide}
                    class:active={$index === 3}>КОЛЛЕКЦИЯ 2</button
                >
                <button
                    data-section="4"
                    on:click={changeSlide}
                    class:active={$index === 4}>КОЛЛЕКЦИЯ 3</button
                >
                <button class="button button-invert">ПЕРЕЙТИ В КАТАЛОГ</button>
            </div>
            {#if $index === 1}
                <div class="product-grid-slide" in:fade={{ duration: 500 }}>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product1} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product2} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product3} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product4} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div class="product-grid-slide-element --info">
                        <span class="--text-xs">RESTORACIA ONE</span>
                        <p>
                            Hовая коллекция избранных предметов, которые
                            превращают помещения в необычные пространства
                        </p>
                        <a href="#">СМОТРЕТЬ ВСЮ КОЛЛЕКЦИЮ</a>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product5} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                </div>
            {:else if $index === 2}
                <div class="product-grid-slide" in:fade={{ duration: 500 }}>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product2} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product1} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product3} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product4} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div class="product-grid-slide-element --info">
                        <span class="--text-xs">RESTORACIA ONE</span>
                        <p>
                            Hовая коллекция избранных предметов, которые
                            превращают помещения в необычные пространства
                        </p>
                        <a href="#">СМОТРЕТЬ ВСЮ КОЛЛЕКЦИЮ</a>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product5} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                </div>
            {:else if $index === 3}
                <div class="product-grid-slide" in:fade={{ duration: 500 }}>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product1} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product2} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product3} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product4} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div class="product-grid-slide-element --info">
                        <span class="--text-xs">RESTORACIA ONE</span>
                        <p>
                            Hовая коллекция избранных предметов, которые
                            превращают помещения в необычные пространства
                        </p>
                        <a href="#">СМОТРЕТЬ ВСЮ КОЛЛЕКЦИЮ</a>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product5} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                </div>
            {:else if $index === 4}
                <div class="product-grid-slide" in:fade={{ duration: 500 }}>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product2} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product1} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product3} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product4} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                    <div class="product-grid-slide-element --info">
                        <span class="--text-xs">RESTORACIA ONE</span>
                        <p>
                            Hовая коллекция избранных предметов, которые
                            превращают помещения в необычные пространства
                        </p>
                        <a href="#">СМОТРЕТЬ ВСЮ КОЛЛЕКЦИЮ</a>
                    </div>
                    <div
                        class="product-grid-slide-element"
                        on:click={() => {
                            document.querySelector("#productCard").showModal();
                            document.querySelector(
                                "#productCard .product-dialog-body",
                            ).scrollTop = 0;
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}
                        role="presentation"
                    >
                        <div class="product-grid-slide-element-image">
                            <img src={product5} alt="furniture image" />
                        </div>
                        <div class="product-grid-slide-element-info">
                            <p>Название модели</p>
                            <p>222 000 ₽</p>
                            <p>Стул</p>
                        </div>
                    </div>
                </div>
            {/if}
        </div>
    </div>
</section>

<style lang="scss">
    .product-grid {
        display: flex;
        flex-direction: column;
        gap: 50px;

        h5 {
            text-transform: uppercase;
        }

        &-section {
            padding: 80px 0;
            background-color: #222222;

            @media (max-width: 767px) {
                padding: 30px 0;
            }
        }

        &-links {
            display: flex;
            gap: 30px;
            padding-bottom: 30px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);

            @media (max-width: 1024px) {
                overflow-x: scroll;
                -ms-overflow-style: none;
                scrollbar-width: none;
                &::-webkit-scrollbar {
                    display: none;
                }
            }

            button {
                text-wrap: nowrap;
                &:not(.button) {
                    text-transform: uppercase;
                    font-size: clamp(20px, calc(32 / 1600 * 100vw), 32px);

                    &::after {
                        content: "";
                        position: absolute;
                        width: 100%;
                        background-color: transparent;
                        height: 1px;
                        top: 100%;
                        left: 0;
                        transition: all 0.5s ease;
                    }
                    &.active {
                        &::after {
                            background-color: #fff;
                        }
                    }

                    @media (hover: hover) {
                        &:hover {
                            &::after {
                                background-color: #fff;
                            }
                        }
                    }

                    @media (hover: none) {
                        &:active {
                            &::after {
                                width: 100%;
                            }
                        }
                    }
                }
            }
            .button {
                margin-left: auto;
            }
        }
        &-slide {
            margin-top: 20px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            grid-template-rows: auto;
            gap: 25px;

            @media (max-width: 1024px) {
                grid-template-columns: 1fr 1fr;
                grid-template-rows: auto;
            }
            @media (max-width: 767px) {
                grid-template-columns: 1fr;
                grid-template-rows: auto;
                margin-top: 0px;
            }

            &-element {
                cursor: pointer;
                display: flex;
                flex-direction: column;
                gap: 15px;

                &.--info {
                    cursor: normal;
                    border: 1px solid rgb(255, 255, 255, 0.3);
                    padding: 20px;
                    p {
                        opacity: 0.7;
                    }
                    a {
                        width: fit-content;
                        margin-top: auto;
                        &::after {
                            content: "";
                            position: absolute;
                            width: 100%;
                            background-color: #fff;
                            height: 1px;
                            top: 105%;
                            left: 0;
                            transition: all 0.5s ease;
                        }

                        @media (hover: hover) {
                            &:hover {
                                opacity: 0.8;
                            }
                        }

                        @media (hover: none) {
                            &:active {
                                opacity: 0.8;
                            }
                        }
                    }

                    @media (max-width: 767px) {
                        padding: 15px;
                        min-height: 200px;
                        .--text-xs{
                            font-size: 20px;
                        }
                    }
                }

                &-image {
                    background-color: #fff;
                    padding: 20px;
                    img {
                        object-fit: contain;
                    }
                }
                &-info {
                    display: grid;
                    grid-template-columns: 1fr 1fr;
                    gap: 5px;

                    p {
                        &:nth-child(1) {
                            font-size: clamp(
                                16px,
                                calc(18 / 1600 * 100vw),
                                18px
                            );
                            text-transform: uppercase;
                        }
                        &:nth-child(2) {
                            text-align: end;
                        }
                        &:nth-child(3) {
                            opacity: 0.6;
                        }
                    }
                }

                &:nth-child(2) {
                    grid-column: 3/4;
                    @media (max-width: 1024px) {
                        grid-column: auto/auto;
                        grid-row: auto/auto;
                    }
                }
                &:nth-child(4) {
                    grid-column: 2/3;
                    @media (max-width: 1024px) {
                        grid-column: auto/auto;
                        grid-row: auto/auto;
                    }
                }
                &:nth-child(5) {
                    grid-row: 3/4;
                    grid-column: 1/2;
                    @media (max-width: 1024px) {
                        grid-column: auto/auto;
                        grid-row: auto/auto;
                    }
                }
                &:nth-child(6) {
                    grid-row: 2/4;
                    grid-column: 3/5;
                    @media (max-width: 1024px) {
                        grid-column: auto/auto;
                        grid-row: auto/auto;
                    }
                }
            }
        }
    }
</style>
