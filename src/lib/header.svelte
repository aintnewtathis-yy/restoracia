<script>
    import logo from "../assets/logo.svg";

    let burgerMenu;
    let burgerIcon;
</script>

<header>
    <div class="container">
        <div class="header">
            <div class="burger-menu visible-tablet" bind:this={burgerMenu}>
                <nav class="burger-menu-nav">
                    <ul>
                        <li>
                            <a href="#catalog">каталог</a>
                        </li>
                        <li>
                            <a href="#buro">дизайн-бюро</a>
                        </li>
                        <li>
                            <a href="#partners">партнеры</a>
                        </li>
                        <li>
                            <a href="#news">события</a>
                        </li>
                    </ul>
                </nav>
                <div class="burger-menu-cta">
                    <a href="#8 800 100-82-68">8 800 100-82-68</a>
                    <button
                        class="button"
                        on:click={() => {
                            document.querySelector("#ctaModal").showModal();
                            document
                                .querySelector("body")
                                .classList.add("fixed");
                        }}>начать сотрудничество</button
                    >
                </div>
            </div>
            <button
                on:click={(e) => {
                    burgerMenu.classList.toggle("active");
                    burgerIcon.classList.toggle("active");
                    document.querySelector("body").classList.toggle("fixed");
                }}
                class="burger-icon visible-tablet"
                bind:this={burgerIcon}
            >
                <div>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <a href="/" class="header-logo">
                <img src={logo} alt="logo" />
            </a>
            <nav class="header-menu hidden-tablet">
                <ul>
                    <li>
                        <a href="#catalog">каталог</a>
                    </li>
                    <li>
                        <a href="#buro">дизайн-бюро</a>
                    </li>
                    <li>
                        <a href="#partners">партнеры</a>
                    </li>
                    <li>
                        <a href="#news">события</a>
                    </li>
                </ul>
            </nav>
            <div class="header-cta hidden-tablet">
                <a href="#8 800 100-82-68">8 800 100-82-68</a>
                <button
                    class="button"
                    on:click={() => {
                        document.querySelector("#ctaModal").showModal();
                        document.querySelector("body").classList.add("fixed");
                    }}>начать сотрудничество</button
                >
            </div>
        </div>
    </div>
</header>

<style lang="scss">
    header {
        position: absolute;
        width: 100%;
        top: 0;
        left: 0;

        z-index: 1;

        @media (max-width: 1024px) {
            position: fixed;
        }
    }
    .header {
        display: flex;
        align-items: center;
        padding: 20px 0;
        gap: 30px;
        @media (max-width: 1024px) {
            justify-content: space-between;
        }

        &-logo {
            width: 15%;
            z-index: 2;

            @media (max-width: 1024px) {
                width: 50%;
                max-width: 150px;
            }
        }
        &-menu {
            width: 55%;

            ul {
                display: flex;
                gap: 30px;
                align-items: center;
                li {
                    a {
                        text-transform: uppercase;

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
        }
        &-cta {
            width: 30%;
            display: flex;
            align-items: center;
            justify-content: end;
            gap: 30px;
        }
    }
    .burger {
        &-icon {
            div {
                width: 30px;
                height: 30px;
                display: flex;
                flex-direction: column;
                gap: 5px;
                justify-content: space-evenly;
                z-index: 3;

                span {
                    background-color: #fff;
                    height: 1px;
                }
            }

            &:global(.active) {
                span {
                    &:nth-child(1) {
                        transform: translateY(10px) rotate(45deg);
                    }
                    &:nth-child(2) {
                        opacity: 0;
                    }
                    &:nth-child(3) {
                        transform: translatey(-10px) rotate(-45deg);
                    }
                }
            }
        }
        &-menu {
            position: fixed;
            transform: translateX(-105%);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: 100%;
            left: 0;
            top: 0;
            height: 100%;
            z-index: 2;
            background-color: #111111;
            padding: 100px 20px;

            &:global(.active) {
                transform: translate(0);
            }
            &-nav {
                ul {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    gap: 30px;

                    li {
                        a {
                            text-transform: uppercase;
                            text-align: center;
                        }
                    }
                }
            }

            &-cta {
                margin-top: auto;
                display: flex;
                flex-direction: column;
                gap: 20px;
                align-items: center;
            }
        }
    }
</style>
