<script>
    import { writable } from "svelte/store";
    import mail from "../assets/mail.svg";
    import shvili from "../assets/shvili.svg";
    import yakitoria from "../assets/yakitoria.svg";
    import arrow from "../assets/arrow.svg";
    import { onMount } from "svelte";

    let slider;
    let currentPosition;
    let scrollNow = 0;
    let length;
    let index = writable(0);

    function slide(direction) {
        let scrollWidth = slider.querySelectorAll("div")[0].offsetWidth;
        scrollNow = slider.scrollLeft;

        if (direction === "back") {
            currentPosition = scrollNow - scrollWidth;
            slider.scrollTo({ left: currentPosition, behavior: "smooth" });
        } else {
            currentPosition = scrollNow + scrollWidth;
            slider.scrollTo({ left: currentPosition, behavior: "smooth" });
        }
    }

    onMount(() => {
        length = slider.querySelectorAll("div").length - 5;
        slider.addEventListener("scroll", () => {
            $index = Math.round(
                slider.scrollLeft /
                    (slider.querySelector("div").offsetWidth + 150),
            );
        });
    });
</script>

<section class="trust-section --margin-bottom">
    <div class="container">
        <div class="trust">
            <div class="trust-info">
                <h5 class="--text-xxl-to-l">Нам доверяют лучшие</h5>
                <div>
                    <div>
                        <p class="--text-s">
                            Мы предлагаем сотрудничество на самых выгодных
                            и интересных условиях
                        </p>
                        <button
                            class="button"
                            on:click={() => {
                                document.querySelector("#ctaModal").showModal();
                            }}>стать партнером</button
                        >
                    </div>
                </div>
            </div>
            <div class="trust-slider-wrap">
                <div class="trust-slider" bind:this={slider}>
                    <div>
                        <img src={mail} alt="compony logo" />
                    </div>
                    <div>
                        <img src={yakitoria} alt="compony logo" />
                    </div>
                    <div>
                        <img src={shvili} alt="compony logo" />
                    </div>
                    <div>
                        <img src={mail} alt="compony logo" />
                    </div>
                    <div>
                        <img src={yakitoria} alt="compony logo" />
                    </div>
                    <div>
                        <img src={shvili} alt="compony logo" />
                    </div>
                    <div>
                        <img src={mail} alt="compony logo" />
                    </div>
                    <div>
                        <img src={yakitoria} alt="compony logo" />
                    </div>
                    <div>
                        <img src={shvili} alt="compony logo" />
                    </div>
                </div>

                <div class="controls hidden-tablet">
                    <button
                        on:click={() => slide("back")}
                        class:hidden={$index === 0}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                    <button
                        on:click={() => slide("forward")}
                        class:hidden={$index > length}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<style lang="scss">
    .trust {
        display: flex;
        flex-direction: column;
        gap: 100px;

        @media (max-width: 1024px) {
            gap: 30px;
        }

        &-info {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 20px;

            h5 {
                text-transform: uppercase;
            }

            div {
                display: flex;
                flex-direction: column;
                gap: 40px;
                justify-content: end;

                div {
                    padding-left: 20px;
                    border-left: 1px solid #ffffff3e;

                    p {
                        opacity: 0.8;
                    }
                }
            }

            @media (max-width: 1024px) {
                display: flex;
                flex-direction: column;
                gap: 25px;

                h5 {
                    text-align: center;
                }

                div {
                    display: flex;
                    flex-direction: column;
                    gap: 25px;

                    div {
                        padding: 0;
                        justify-content: center;
                        align-items: center;
                        p {
                            text-wrap: balance;
                            width: 60%;
                            text-align: center;
                        }
                    }
                }
            }

            @media (max-width: 767px) {
                div {
                    div {
                        p {
                            width: 100%;
                        }
                    }
                }
            }
        }

        &-slider {
            display: flex;
            gap: 150px;
            align-items: center;
            overflow-x: scroll;
            scroll-snap-type: x mandatory;

            -ms-overflow-style: none;
            scrollbar-width: none;
            &::-webkit-scrollbar {
                display: none;
            }

            div {
                padding: 50px;
                scroll-snap-align: start;
                flex: 0 0 calc((100% - 450px) / 4);
            }

            @media (max-width: 1024px) {
                gap: 30px;

                div {
                    padding: 20px;
                    scroll-snap-align: start;
                    flex: 0 0 35%;
                }
            }
        }
    }
</style>
