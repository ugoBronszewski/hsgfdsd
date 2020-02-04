.slider-fullscreen {
    position: relative;
    display: block;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    height: calc(100vh - 70px);
    background-color: $white;
    overflow: hidden;

    .slider-controls {
        position: absolute;
        display: flex;
        bottom: 30px;
        left: 100px;
        width: 575px;
        align-items: center;
        z-index: 1000;

        label {
            display: inline-block;
            margin: 0 10px;
            width: 8px;
            height: 8px;
            background-color: $white;
            border-radius: 4px;
            cursor: pointer;
        }
    }

    .scroll-down {
        padding: 20px 10px;
        bottom: 16%;
        left: 50px;
        background-color: rgba($white, .2);
        border-radius: 25px;
        @include transform(translateX(-50px));
        z-index: 9;
    }

    .slide {
        position: absolute;
        display: flex;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        flex-direction: row;
        flex-wrap: wrap;
        align-items: center;
        justify-content: center;
        align-content: center;
        background-size: cover;
        background-position: center;
        //opacity: 0;
        z-index: 0;
        @include transform(scale(1));

        .slide-content {
            position: absolute;
            padding: 25px;
            bottom: 16%;
            left: 140px;
            width: calc(50% - 100px);
            background-color: $white;

            h3 {
                margin-top: 0;
                margin-bottom: 20px;
                color: $color;
                line-height: 1.2;
                letter-spacing: 2px;
                font-size: 3rem;
                font-weight: 600;
                //opacity: 0;
                //@include transform(translateX(500px));
            }

            a.btn {
                margin-right: 15px;
            }

            p {
                margin-bottom: 20px;
                color: rgba($color, .3);
                line-height: 1.2;
                font-size: 22px;
                font-weight: 400;
                opacity: 0;
                @include transform(translateX(-500px));
            }
        }

        &#slide1 {
            left: 0;
            background-color: #fbad99;
        }

        &#slide2 {
            background: #a9785c;
            left: 100%
        }

        &#slide3 {
            background: #9ea6b3;
            left: 200%
        }

        &#slide4 {
            background: #b1a494;
            left: 300%;
        }
    }
}

.slide-number {
    position: absolute;
    bottom: 30px;
    right: 100px;
    font-weight: bold;
}

.slide-number span {
    font-size: 30px;
    color: #ea2e49;
    letter-spacing: 4px;
}

.slide-number span:after {
    content: "/4";
    font-size: 16px;
    color: #fff;
}

#s1:checked ~ .slider-control:first-of-type,
#s2:checked ~ .slider-control:nth-of-type(2),
#s3:checked ~ .slider-control:nth-of-type(3),
#s4:checked ~ .slider-control:nth-of-type(4) {
    width: 14px;
    height: 14px;
    border: 2px solid #ea2e49;
    background: transparent;
}

#s1:checked ~ .slide {
    @include transform(translateX(0%));
}
#s2:checked ~ .slide {
    @include transform(translateX(-100%));
}
#s3:checked ~ .slide {
    @include transform(translateX(-200%));
}
#s4:checked ~ .slide {
    @include transform(translateX(-300%));
}

#s1:checked ~ .slide1 h4,
#s2:checked ~ .slide2 h4,
#s3:checked ~ .slide3 h4,
#s4:checked ~ .slide4 h4,
#s1:checked ~ .slide1 p,
#s2:checked ~ .slide2 p,
#s3:checked ~ .slide3 p,
#s4:checked ~ .slide4 p,
#s1:checked ~ .slide1 > img,
#s2:checked ~ .slide2 > img,
#s3:checked ~ .slide3 > img,
#s4:checked ~ .slide4 > img {
    @include transform(translateX(0));
    opacity: 1
}

@media only screen and (max-width: 768px) {
    .slider h4 {
        font-size: 20px;
    }
    .slider p {
        font-size: 16px;
    }

    .slider-content {
        padding: 0 2%
    }

    .slide-number {
        right: 2%;
    }
    .slider-controls {
        left: 2%;
    }

    .slider .buy-now-btn {
        padding: 0 15px;
        width: 175px;
        height: 42px;
    }

    .slider .buy-now-btn:after {
        top: 15px;
    }

    .slider > img {
        right: 2%;
    }

    .slide-1 > img {
        right: -110px;
    }
}


.slider-wrapper {
    position: relative;
    margin-bottom: 0;
    padding-bottom: 25px;
    width: 100%;
    overflow: hidden;

    .controls {
        position: absolute;
        bottom: 25px;
        left: 40px;
        z-index: 999;

        .s {
            display: inline-block;
            margin-right: 5px;
            padding: 6px;
            background-color: #ecf0f1;
            border-radius: 20px;
            cursor: pointer;

            &:nth-child(4) {
                margin-right: 0;
            }

            &:hover {
                background-color: darken($grey, 2);
            }
        }
    }


    .inner-wrapper {
        top: 0;
        left: 0;
        margin-bottom: 0;
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    .control {
        display: none;

        &:nth-child(1):checked ~ .controls #s1{
            background-color: $accent-color;
            opacity: 1;
        }

        &:nth-child(2):checked ~ .controls #s2 {
            background-color: $accent-color;
            opacity: 1;
        }

        &:nth-child(3):checked ~ .controls #s3 {
            background-color: $accent-color;
            opacity: 1;
        }

        &:nth-child(4):checked ~ .controls #s4 {
            background-color: $accent-color;
            opacity: 1;
        }

        &:nth-child(1):checked ~ .overflow-wrapper{
            margin-left: 0%;
        }

        &:nth-child(2):checked ~ .overflow-wrapper {
            margin-left: -100%;
        }

        &:nth-child(3):checked ~ .overflow-wrapper {
            margin-left: -200%;
        }

        &:nth-child(4):checked ~ .overflow-wrapper {
            margin-left: -300%;
        }
    }

    .overflow-wrapper {
        position: relative;
        top: 0;
        left: 0;
        width: 400%;
        height: 100%;
        overflow-y: hidden;
        @include transition(all .3s ease-in-out);
        z-index: 1;
        animation-duration: 30s;
        animation-name: slider;

        .slide {
            float: left;
            padding: 0 40px 40px 40px;
            width: 25%;

            blockquote {
                line-height: 1.8;
                font-size: 1rem;
                font-style: italic;

                address {
                    padding-top: 20px;
                    color: $primary-color;
                    font-size: .8rem;
                    font-weight: 300;
                }
            }
        }
    }
}

@keyframes slider {
    0% {
        margin-left: 0;
    }

    24% {
        margin-left: 0;
    }

    25% {
        margin-left: -100%;
    }

    49% {
        margin-left: -100%;
    }

    50% {
        margin-left: -200%;
    }

    74% {
        margin-left: -200%;
    }

    75% {
        margin-left: -300%;
    }

    99% {
        margin-left: -300%;
    }

    100% {
        margin-left: -400%;
    }
}
