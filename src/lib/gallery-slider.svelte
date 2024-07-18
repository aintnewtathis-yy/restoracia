<script>
    import { onMount } from "svelte";
    import arrow from "../assets/arrow.svg";
    import galleryImage from "../assets/gallery-slider.png";
    import { writable } from "svelte/store";

    let index = writable(1);
    let leftArrow;
    let rightArrow;
    let slider;
    let translate = window.innerWidth > 1024 ? -71 : 0;
    let length;

    onMount(() => {
        length = slider.querySelectorAll("div").length - 1;
    });
</script>

<section class="gallery-section --margin-bottom">
    <div class="container">
        <div class="gallery">
            <h5 class="--text-l">Новые стандарты <br />в оснащении проектов</h5>
            <p>
                Первоклассное качество, профессиональный <br />подход,
                индивидуальный дизайн
            </p>
            <div>
                <div class="gallery-slider-wrap">
                    <div
                        class="gallery-slider"
                        bind:this={slider}
                        style="transform: translateX({translate}%);"
                    >
                        <div>
                            <img src={galleryImage} alt="furniture" />
                        </div>
                        <div>
                            <img src={galleryImage} alt="furniture" />
                        </div>
                        <div>
                            <img src={galleryImage} alt="furniture" />
                        </div>
                        <div>
                            <img src={galleryImage} alt="furniture" />
                        </div>
                        <div>
                            <img src={galleryImage} alt="furniture" />
                        </div>
                    </div>
                </div>
                <div class="controls hidden-tablet">
                    <button
                        on:click={() => {
                            if ($index > 0) {
                                translate += 81;
                                $index--;
                            }
                        }}
                        class:hidden={$index === 0}
                        bind:this={leftArrow}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                    <button
                        on:click={() => {
                            if ($index < length) {
                                translate -= 81;
                                $index++;
                            }
                        }}
                        class:hidden={$index == length}
                        bind:this={rightArrow}
                    >
                        <img src={arrow} alt="arrow icon" />
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<style lang="scss">
    .gallery {
        display: flex;
        flex-direction: column;
        gap: 25px;
        h5,
        p {
            text-align: center;
        }
        h5 {
            text-transform: uppercase;
        }
        p {
            opacity: 0.8;
        }
        &-slider {
            display: flex;
            margin-top: 35px;
            gap: 2%;

            @media (max-width: 1024px) {
                overflow-x: scroll;
                
            margin-top: 15px;
                scrollbar-width: none;
                &::-webkit-scrollbar {
                    display: none;
                }
            }

            div {
                flex: 0 0 80%;
                img {
                    width: 100%;
                    object-fit: cover;
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

                @media (max-width: 1024px) {
                    mask: none;
                    -webkit-mask: none;
                }
            }
        }
    }
</style>
