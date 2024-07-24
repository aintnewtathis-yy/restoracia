<script>
    import productCard from "../assets/product-card.png";
    import productCard1 from "../assets/product-card1.png";
    import productCard2 from "../assets/product-card2.png";
    import productCard3 from "../assets/product-card3.png";
    import productCard4 from "../assets/product-card4.png";
    import Close from "./utils/close.svelte";
    import { dragscroll } from "@svelte-put/dragscroll";
    import { onMount } from "svelte";

    export let dialog;
    let carousel;
    let mainImage;

    onMount(() => {
        carousel.querySelectorAll("img").forEach((img) => {
            img.addEventListener("click", () => {
                mainImage.src = img.src;
            });
        });
    });
</script>

<dialog id="productCard" bind:this={dialog}>
    <div class="product-dialog-body">
        <div class="product-dialog">
            <div class="product-dialog-gallery">
                <div class="product-dialog-gallery-main">
                    <img src={productCard} alt="" bind:this={mainImage} />
                </div>
                <div
                    class="product-dialog-gallery-carousel"
                    bind:this={carousel}
                    use:dragscroll
                >
                    <div>
                        <img src={productCard1} alt="" />
                    </div>
                    <div>
                        <img src={productCard2} alt="" />
                    </div>
                    <div>
                        <img src={productCard3} alt="" />
                    </div>
                    <div>
                        <img src={productCard4} alt="" />
                    </div>
                </div>
            </div>
            <div class="product-dialog-info">
                <h5 class="product-dialog-info-title">
                    Диван 2-местный BOZOLLO
                </h5>
                <div class="product-dialog-info-grid">
                    <div class="product-dialog-info-grid-element">
                        <span>Артикул</span>
                        <p>4108250</p>
                    </div>
                    <div class="product-dialog-info-grid-element">
                        <span>Срок производства</span>
                        <p>от 20 рабочих дней</p>
                    </div>
                    <div class="product-dialog-info-grid-element">
                        <span>Описание</span>
                        <p>
                            Круглый стол Loft No.16 от Restorasiya имеет прочную
                            столешницу из ДСП, пластика и ПВХ, дополненную
                            крепкими металлическими ножками. Идеальный для
                            любого современного интерьера, этот стол сочетает в
                            себе элегантный дизайн и функциональность и доступен
                            в нескольких цветовых вариантах.
                        </p>
                    </div>
                    <div class="product-dialog-info-grid-element">
                        <span>Измерения</span>
                        <div>
                            <div>
                                <p>Высота</p>
                                <span></span>
                                <p>67 см</p>
                            </div>
                            <div>
                                <p>Глубина</p>
                                <span></span>
                                <p>156 см</p>
                            </div>
                            <div>
                                <p>Ширина</p>
                                <span></span>
                                <p>79 см</p>
                            </div>
                            <div>
                                <p>Высота сиденья</p>
                                <span></span>
                                <p>43 см</p>
                            </div>
                        </div>
                    </div>
                    <div class="product-dialog-info-grid-element">
                        <span>Измерения</span>
                        <div>
                            <div>
                                <p>Спинка</p>
                                <span></span>
                                <p>Мягкая</p>
                            </div>
                            <div>
                                <p>Сиденье</p>
                                <span></span>
                                <p>Мягкое</p>
                            </div>
                            <div>
                                <p>Материал каркаса</p>
                                <span></span>
                                <p>Массив бука</p>
                            </div>
                            <div>
                                <p>Высота сиденья</p>
                                <span></span>
                                <p>43 см</p>
                            </div>
                        </div>
                    </div>
                    <div class="product-dialog-info-grid-element">
                        <span>Гарантия</span>
                        <p>12 месяцев</p>
                    </div>
                </div>
                <div class="product-dialog-info-buttons">
                    <button class="button">узнать подробнее</button>
                    <button
                        class="button"
                        on:click={() => {
                            dialog.close();
                            document
                                .querySelector("body")
                                .classList.remove("fixed");
                        }}>назад</button
                    >
                </div>
            </div>
        </div>
    </div>
    <button
        class="dialog-close"
        on:click={() => {
            dialog.close();
            document.querySelector("body").classList.remove("fixed");
        }}
    >
        <Close />
    </button>
</dialog>

<style lang="scss">
    :global(dialog) {
        position: fixed;
        gap: 10px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border: none;
        max-width: 1400px;
        width: 100%;
        overflow: visible;
        padding: 0 40px 0 20px;
        background-color: transparent;

        outline: none;
@media (max-width: 767px) {
    
        padding: 0 20px;
}
        &::backdrop {
            background-color: #00000073;
        }

        :global(.dialog-close) {
            position: absolute;
            top: 0;
            right: 0;
            width: 30px;
            svg {
                width: 100%;
            }

            @media (max-width: 767px) {
                right: 30px;
                top: 0px;
            }
        }
    }

    .product-dialog {
        &-body {
            background-color: #222222;
            padding: 40px 20px;
            border: none;
            overflow-y: scroll;
            -ms-overflow-style: none;
            scrollbar-width: none;
            &::-webkit-scrollbar {
                display: none;
            }
            max-height: calc(100vh - 40px);

            @media (max-width: 767px) {
                padding-top: 60px;
            }
        }
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 60px;

        @media (max-width: 1024px) {
            display: flex;
            flex-direction: column;
            gap: 50px;
        }

        &-gallery {
            display: flex;
            flex-direction: column;
            gap: 8px;

            &-main {
                width: 100%;
                img {
                    aspect-ratio: 1;
                }
            }
            &-carousel {
                display: flex;
                gap: 8px;
                overflow-x: scroll;
                -ms-overflow-style: none;
                scrollbar-width: none;
                &::-webkit-scrollbar {
                    display: none;
                }

                div {
                    flex: 0 0 27%;
                    img {
                        aspect-ratio: 190/180;
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
            }
        }

        &-info {
            display: flex;
            flex-direction: column;
            gap: 40px;

            &-title {
                font-size: 44px;
            }
            &-grid {
                display: flex;
                flex-direction: column;
                div {
                    display: grid;
                    grid-template-columns: 2fr 4fr;
                    padding: 28px 0;
                    border-bottom: 1px solid #343434;

                    &:first-child {
                        border-top: 1px solid #343434;
                    }
                    span {
                        color: #767676;
                    }
                    p {
                        text-wrap: balance;
                    }
                    div {
                        display: flex;
                        flex-direction: column;
                        border: none;
                        padding: 0;
                        gap: 20px;

                        &:first-child {
                            border: none;
                        }
                        div {
                            display: flex;
                            flex-direction: row;
                            gap: 5px;
                            span {
                                flex-grow: 1;
                                border-bottom: 1px dotted #767676;
                            }
                        }
                    }
                }
            }
            &-buttons {
                display: flex;
                gap: 10px;
                .button:last-child {
                    opacity: 0.8;
                }
                @media (max-width: 1024px) {
                    justify-content: center;
                }
            }
        }
    }
</style>
