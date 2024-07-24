<script>
    import ctaImage from "../assets/cta.png";
    import close from "../assets/close.svg";
    let dialog;
    let checked1;
</script>

<dialog id="ctaModal" bind:this={dialog}>
    <div class="cta">
        <div class="cta-body">
            <div class="cta-image">
                <img src={ctaImage} alt="lady with furniture" />
            </div>
            <div class="cta-form">
                <h5 class="--text-l">Начать сотрудничество</h5>
                <form action="#">
                    <div>
                        <label for="fullname">ФИО</label>
                        <input type="text" name="fullname" id="fullname" />
                    </div>
                    <div>
                        <label for="phone">Телефон</label>
                        <input type="text" name="phone" id="phone" />
                    </div>
                    <div>
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" />
                    </div>
                    <div>
                        <label for="portfolioLink">Ссылка на портфолио</label>
                        <input
                            type="text"
                            name="portfolioLink"
                            id="portfolioLink"
                        />
                    </div>
                    <div class="checkbox">
                        <div class:checked={checked1}>
                            <input
                                type="checkbox"
                                name="acceptance"
                                id="acceptance"
                                bind:checked={checked1}
                            />
                        </div>
                        <label for="acceptance"
                            >Согласие с политикой обработки <a href="#"
                                >персональных данных</a
                            ></label
                        >
                    </div>
                    <button type="submit" class="button">Отправить</button>
                </form>
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
        <img src={close} alt="" />
    </button>
</dialog>

<style lang="scss">
    .cta {
        &-body {
            max-width: 1360px;
            margin-inline: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;

            @media (max-width: 1024px) {
                display: flex;
                flex-direction: column;
            }
        }
        &-image {
            height: 100%;

            img {
                height: 100%;
            }
        }
        &-form {
            display: flex;
            flex-direction: column;
            gap: 40px;
            padding: 64px;
            background-color: #222222;

            @media (max-width: 767px) {
                padding: 20px;
            }

            h5 {
                text-transform: uppercase;
            }

            form {
                display: flex;
                flex-direction: column;
                gap: 24px;

                @media (max-width: 767px) {
                    gap: 20px;
                }

                div {
                    display: flex;
                    flex-direction: column;
                    gap: 5px;

                    label {
                        color: #e0e0e0;
                    }
                    input:not([type="checkbox"]) {
                        border: none;
                        border-bottom: 1px solid #6a6a6a;
                        padding: 10px 12px;
                        background-color: transparent;
                        color: #e0e0e0;
                    }
                }
                .checkbox {
                    flex-direction: row;
                    align-items: center;
                    gap: 12px;

                    div {
                        outline: 1px solid #fff;
                        outline-offset: 2px;
                        margin-left: 3px;
                        height: 12px;
                        width: 12px;

                        &:global(.checked) {
                            background-color: #fff;
                        }
                        input {
                            opacity: 0;
                        }
                    }

                    a {
                        &::before {
                            content: "";
                            width: 100%;
                            position: absolute;
                            top: 102%;
                            height: 1px;
                            background-color: #fff;
                        }
                    }
                }
                button {
                    margin-top: 16px;
                }
            }
        }
    }
</style>
