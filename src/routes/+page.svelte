<script>
    import brocast_promo from '$lib/images/Brocast_promo.png';
</script>

<div class="container">
    <div class="text">
        <div class="large-text">
            Simple. Secure. 
            Emotional. 
            Reliable messaging.
        </div>
        <br>
        <div class="small-text">
            With Brocast, you'll get fast, simple, secure and emotional messaging for free over the internet, available on phones all over the world. No number needed, just your name, emotions and your desire to talk to your friends!
        </div>
        <br>
        <br>
        <div class="links">
            <div class="link-item">
                <a href="https://play.google.com/store/apps/details?id=nl.brocast">
                    <span class="icon"><i class="fab fa-android"></i></span>
                    Android
                </a>
            </div>
            <div class="link-item">
                <a href="https://apps.apple.com/nl/app/brocast/id1571745515?platform=iphone">
                    <span class="icon"><i class="fab fa-apple"></i></span>
                    IOS
                </a>
            </div>
        </div>
    </div>
    <div class="image">
        <img src="{brocast_promo}" alt="Large Image">
    </div>
</div>
<div class="button-container">
    <a href="/features" class="button" id="redirectButton">Explore features</a>
</div>

<style>
    /* body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 100px;
    } */
    .container {
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: left;
        padding: 100px;
    }
    .text {
        margin-right: 40px;
    }
    .large-text {
        width: 30vw;
        font-size: 3em;
        font-weight: bold;
        color: #999;
        margin-bottom: 10px;
    }
    .links {
        color: #FFA500;
        display: flex;
        flex-direction: column;
    }
    .link-item {
        display: flex;
        align-items: center;
        margin-bottom: 5px;
    }
    .link-item .icon {
        font-size: 1em;
        margin-right: 5px;
    }
    .link-item a {
        font-size: 1em;
        color: #FFA500;
        text-decoration: none;
    }
    .link-item a:hover {
        text-decoration: underline;
    }
    .icon {
        width: 32px;
    }
    .small-text {
        width: 30vw;
        font-size: 1.3em;
        color: #e6e6e6;
    }
    .image img {
        height: 100vh;
        width: auto;
        margin-left: 20px;
    }
    .button {
        background-color: #FFA500;
        color: #555;
        border: none;
        border-radius: 25px;
        padding: 15px 30px;
        font-size: 1.2em;
        cursor: pointer;
        margin-top: 20px;
        transition: box-shadow 0.3s, transform 0.3s;
        display: inline-block; /* Ensure the button only takes up the space it needs */
        margin-left: auto;
        margin-right: auto;
        text-align: center;
        text-decoration: none;
        width: auto; /* Allow the width to adjust based on content */
        text-align: center;
        margin-bottom: 100px;
    }
    .button:hover {
        box-shadow: 0 0 20px rgba(255, 165, 0, 0.6);
    }
    .button:active {
        transform: scale(0.98);
    }
    .button-container {
        width: 100%;
        text-align: center;
    }
</style>
