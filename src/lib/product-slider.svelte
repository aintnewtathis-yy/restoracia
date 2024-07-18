<script>
    import imgBlur from "../assets/blur.svg";
    import kreslo from "../assets/kreslo.png";
    import arrow from "../assets/arrow.svg";
    import { fade } from "svelte/transition";
    import { writable } from "svelte/store";
    import { onMount } from "svelte";

    let titles;
    let cards;
    let pagination;
    let paginationIndex = 1;
    let currentPosition;
    let index = writable(0);
    let length;
    let translate;
    let leftArrow;
    let rightArrow;

    function slider(direct) {
        const titlesElements = titles.querySelectorAll("h3");
        const cardsElements = cards.querySelectorAll(".product-slider-card");
        const direction = direct;

        if (direction === "back" && $index > 0) {
            $index--;
            titlesElements[$index + 1].classList.remove("active");
            cardsElements[$index + 1].classList.remove("opacity");

            setTimeout(() => {
                cardsElements[$index + 1].classList.remove("active");
            }, 200);

            if ($index > 1) {
                translate =
                    translate -
                    titlesElements[$index].offsetWidth -
                    titlesElements[$index + 1].offsetWidth / 2 +
                    25 +
                    50;
            } else if ($index === 1) {
                translate = translate - titlesElements[$index].offsetWidth + 50;
            } else {
                translate = titlesElements[$index].offsetWidth / 2;
            }
            titles.style.transform = `translateX(calc(50% - ${translate}px))`;

            console.log($index);
        } else if (
            direction === "forward" &&
            $index < titlesElements.length - 1
        ) {
            $index++;
            titlesElements[$index - 1].classList.remove("active");
            cardsElements[$index - 1].classList.remove("opacity");

            setTimeout(() => {
                cardsElements[$index - 1].classList.remove("active");
            }, 200);

            if ($index > 1) {
                translate =
                    translate +
                    titlesElements[$index].offsetWidth +
                    titlesElements[$index - 1].offsetWidth / 2 -
                    25 -
                    50;
            } else {
                translate = translate + titlesElements[$index].offsetWidth - 50;
            }
            titles.style.transform = `translateX(calc(50% - ${translate}px))`;

            console.log($index);
        } else if (direction === "set") {
            translate = titlesElements[$index].offsetWidth / 2;
            titles.style.transform = `translateX(calc(50% - ${translate}px))`;
        } else {
            return;
        }

        titlesElements[$index].classList.add("active");
        leftArrow.disabled = true;
        rightArrow.disabled = true;
        setTimeout(() => {
            cardsElements[$index].classList.add("active");
            setTimeout(() => {
                leftArrow.disabled = false;
                rightArrow.disabled = false;
                cardsElements[$index].classList.add("opacity");
            }, 300);
        }, 200);
    }

    function paginationHandle(num) {
        const paginationElements = pagination.querySelectorAll("div");
        paginationElements.forEach((el) => el.classList.remove("active"));
        paginationElements[num]?.classList.add("active");
    }

    $: {
        if (pagination) {
            paginationHandle(paginationIndex);
        }
    }
    $: {
        if (pagination) {
            paginationIndex = Math.round(currentPosition / cards.clientWidth);
        }
    }

    onMount(() => {
        if (cards) {
            if (window.innerWidth > 768) {
                length = titles.querySelectorAll("h3").length - 1;
                slider("set");
            }
            cards.addEventListener("scroll", () => {
                currentPosition = cards.scrollLeft;
            });
            window.addEventListener("resize", () => {
                currentPosition = cards.scrollLeft;
                if (window.innerWidth > 768) {
                    length = titles.querySelectorAll("h3").length - 1;
                    slider("set");
                }
            });
        }
    });
</script>

<section class="product-slider-section --margin-bottom">
    <div class="container">
        <div class="product-slider-wrap">
            <h2 class="--text-xxl">коллекция <br />erwin</h2>
            <div class="product-slider-wrap">
                <div class="product-slider-titles-wrap hidden-tablet">
                    <div class="product-slider-titles" bind:this={titles}>
                        <h3 class="--text-xl">LOFT</h3>
                        <h3 class="--text-xl">BOZZOLO</h3>
                        <h3 class="--text-xl">LOFT</h3>
                        <h3 class="--text-xl">LOFT</h3>
                    </div>
                </div>
                <div class="product-slider" bind:this={cards}>
                    <div class="product-slider-card" in:fade>
                        <h3 class="--text-xl">LOFT</h3>
                        <div class="product-slider-card-tags">
                            <p>ERWIN</p>
                            <p>СТОЛИК</p>
                        </div>
                        <div class="product-slider-card-image">
                            <img
                                class="blur"
                                src={imgBlur}
                                alt="background graphic"
                            />
                            <img src={kreslo} alt="product image" />
                        </div>
                        <button
                            class="button"
                            on:click={() => {
                                document
                                    .querySelector("#productCard")
                                    .showModal();
                            }}
                        >
                            подробнее
                        </button>
                    </div>
                    <div class="product-slider-card" in:fade>
                        <h3 class="--text-xl">bozzolo</h3>
                        <div class="product-slider-card-tags">
                            <p>ERWIN</p>
                            <p>СТОЛИК</p>
                        </div>
                        <div class="product-slider-card-image">
                            <img
                                class="blur"
                                src={imgBlur}
                                alt="background graphic"
                            />
                            <img src={kreslo} alt="product image" />
                        </div>
                        <button
                            class="button"
                            on:click={() => {
                                document
                                    .querySelector("#productCard")
                                    .showModal();
                            }}
                        >
                            подробнее
                        </button>
                    </div>
                    <div class="product-slider-card" in:fade>
                        <h3 class="--text-xl">LOFT</h3>
                        <div class="product-slider-card-tags">
                            <p>ERWIN</p>
                            <p>СТОЛИК</p>
                        </div>
                        <div class="product-slider-card-image">
                            <img
                                class="blur"
                                src={imgBlur}
                                alt="background graphic"
                            />
                            <img src={kreslo} alt="product image" />
                        </div>
                        <button
                            class="button"
                            on:click={() => {
                                document
                                    .querySelector("#productCard")
                                    .showModal();
                            }}
                        >
                            подробнее
                        </button>
                    </div>
                    <div class="product-slider-card" in:fade>
                        <h3 class="--text-xl">LOFT</h3>
                        <div class="product-slider-card-tags">
                            <p>ERWIN</p>
                            <p>СТОЛИК</p>
                        </div>
                        <div class="product-slider-card-image">
                            <img
                                class="blur"
                                src={imgBlur}
                                alt="background graphic"
                            />
                            <img src={kreslo} alt="product image" />
                        </div>
                        <button
                            class="button"
                            on:click={() => {
                                document
                                    .querySelector("#productCard")
                                    .showModal();
                            }}
                        >
                            подробнее
                        </button>
                    </div>
                </div>
                <div class="controls hidden-tablet">
                    <button
                        on:click={() => slider("back")}
                        class:hidden={$index === 0}
                        bind:this={leftArrow}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                    <button
                        on:click={() => slider("forward")}
                        class:hidden={$index == length}
                        bind:this={rightArrow}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                </div>
                <div class="pagination visible-mobile" bind:this={pagination}>
                    <div class="active"></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>
</section>

<style lang="scss">
    .pagination {
        display: flex;
        justify-content: center;
        gap: 5px;

        div {
            width: 5px;
            height: 5px;
            background-color: #494949;
            border-radius: 100%;

            &:global(.active) {
                background-color: #fff;
            }
        }
    }

    .product-slider {
        @media (max-width: 1024px) {
            display: flex;
            overflow-x: scroll;
            scroll-snap-type: x mandatory;

            -ms-overflow-style: none;
            scrollbar-width: none;
            &::-webkit-scrollbar {
                display: none;
            }
        }
        &-wrap {
            display: flex;
            flex-direction: column;
            gap: 80px;

            @media (max-width: 767px) {
                gap: 20px;
            }
            h2 {
                text-align: center;
                text-transform: uppercase;
                color: #fff;

                @media (max-width: 767px) {
                    margin-bottom: 40px;
                }
            }
        }
        &-titles {
            display: flex;
            gap: 50px;

            h3 {
                text-transform: uppercase;
                color: rgba(255, 255, 255, 0.3);

                &:global(.active) {
                    color: rgba(255, 255, 255);
                }
            }

            &-wrap {
                overflow: hidden;
                -webkit-mask: -webkit-gradient(
                    linear,
                    left top,
                    right top,
                    from(transparent),
                    color-stop(10%, #111111),
                    color-stop(90%, #111111),
                    to(transparent)
                );
                -webkit-mask: linear-gradient(
                    90deg,
                    transparent,
                    #111111 10%,
                    #111111 90%,
                    transparent
                );
                mask: -webkit-gradient(
                    linear,
                    left top,
                    right top,
                    from(transparent),
                    color-stop(10%, #111111),
                    color-stop(90%, #111111),
                    to(transparent)
                );
                mask: linear-gradient(
                    90deg,
                    transparent,
                    #111111 10%,
                    #111111 90%,
                    transparent
                );
            }
        }
        &-card {
            display: none;
            flex-direction: column;
            opacity: 0;
            pointer-events: none;
            align-items: center;

            &:global(.active) {
                display: flex;
            }
            &:global(.opacity) {
                opacity: 1;
                pointer-events: all;
            }

            @media (max-width: 1024px) {
                gap: 25px;
                display: flex;
                opacity: 1;
                pointer-events: all;
                flex: 0 0 100%;
                scroll-snap-align: start;
            }

            &-tags {
                display: flex;
                justify-content: center;
                gap: 8px;

                p {
                    padding: 12px 20px;
                    border-radius: 8px;
                    background-color: #ff000008;
                    color: #d50f11;
                    text-transform: uppercase;

                    @media (max-width: 767px) {
                        padding: 10px 15px;
                    }

                    &:last-child {
                        color: #fff;
                        background-color: #ffffff08;
                    }
                }
            }

            &-image {
                display: flex;
                justify-content: center;
                align-items: center;
                img {
                    width: 80%;
                }
                .blur {
                    position: absolute;
                    width: 80%;
                }
            }

            h3 {
                display: none;
                text-transform: uppercase;

                @media (max-width: 1024px) {
                    display: flex;
                    color: #fff;
                    width: 100%;
                    justify-content: center;
                    text-align: center;
                }
            }

            .button {
                transform: translateY(-100%);

                @media (max-width: 767px) {
                    transform: translateY(0%);
                }
            }
        }
    }
</style>
