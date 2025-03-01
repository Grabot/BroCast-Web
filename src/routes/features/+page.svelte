<script>
    import text_promo_image from '$lib/images/Brocast_promo.png';
    import image_promo_image from '$lib/images/Brocast_photo_promo.png';
    import love_icon from '$lib/images/Brocast_Emotion.png';
    import bros_icon from '$lib/images/Brocast_Bro.png';
    import emotion_icon from '$lib/images/Brocast_enjoyment.png';
    import security_gif from '$lib/images/security.gif';
    import brocast_logo from '$lib/images/brocast_transparent.png';
</script>

<div class="container">
    <div class="main-column">
        <div class="column left1">
            <div class="text-wrapper">
                <h1>TEXTS</h1>
                <h3>Simple, Emotional, <br> Reliable Messaging</h3>
                <p>
                    No matter where they come from, what they do, who they love or what gender they are, everyone can be your bro! All that is required is some mutual love and understanding. All of that can be done by sending them messages via Brocast! Now you can message all of your bros for free over the internet!
                </p>
            </div>
            <img src={text_promo_image} alt="Brocast Text promo" class="image">
        </div>
        <div class="column left2">
            <img src={image_promo_image} alt="Brocast Text promo" class="image">
            <div class="text-wrapper">
                <h1>Photos and Images</h1>
                <h3>Share Moments that Matter</h3>
                <p>
                    Send photos and images on Brocast instantly. You can even capture the moments that matter to you most emotionally with a built-in camera. With Brocast, photos and images send quickly even if you're on a slow connection.
                </p>
            </div>
        </div>
    </div>
    <div class="main-column">
        <div class="column right1">
            <div class="right1-content">
                <h1>BROUP CHAT</h1>
                <h3>Bro groups to keep in touch</h3>
                <p>
                    Keep in touch with the groups of bros that matter the most emotionally. With broup chats, you can share messages, photos, and emotions. You can also name your broup, mute or customize the chat with colour and aliases, and more!
                </p>
                <div class="icons">
                    <div class="icon-column">
                        <div class="icon love">
                            <img src={love_icon} alt="Love">
                            <p>LOVE</p>
                        </div>
                        <div class="icon emotions">
                            <img src={emotion_icon} alt="Emotions">
                            <p>EMOTIONS</p>
                        </div>
                    </div>
                    <div class="icon bros">
                        <img src={bros_icon} alt="Bros">
                        <p>BROS</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="column right2">
            <div class="right2-content">
                <img src={security_gif} alt="Security" class="security-image">
                <h1>END-TO-END ENCRYPTION</h1>
                <h3>Security by Default</h3>
                <p>
                    Some of your most personal emotions are shared on Brocast with your bros, which is why we built end-to-end encryption into our app. When end-to-end encrypted, your messages are secured so only you and your bro you're communicating with can read to your emotions. Once everyone has read the message it is stored on your phones and all other traces are completely removed.
                </p>
            </div>
        </div>
        <div class="column right3">
            <div class="right3-content">
                <img src={brocast_logo} alt="Brocast logo" class="image">
                <h1>TRANSPARENT</h1>
                <h3>Open Source software</h3>
                <p>
                    Transparency is an important aspect of Zwaar Developers, the creator of Brocast. All of the code can be seen on their GitHub page for both the frontend (Android, iOS) and the backend.
                </p>
            </div>
        </div>
    </div>
</div>

<style>
    .container {
        display: flex;
        gap: 30px;
        max-width: 1200px; /* Limit the max width for better readability */
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
        margin-bottom: 100px;
        padding-left: 15px; /* Add padding to the left */
        padding-right: 15px; /* Add padding to the right */
        justify-content: center; /* Add this line */
    }
    .column {
        width: 30vw;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
        font-size: 1.5em;
    }
    .right1, .right2, .right3 {
        background-color: #a5d6a7;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 40px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }
    .left1, .left2 {
        background-color: #ffcc80;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 40px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }
    .left2 {
        background-color: #90caf9;
    }
    .text-wrapper, .right1-content, .right2-content, .right3-content {
        width: 70%;
        margin: 0 auto;
    }
    .left1 h1, .left2 h1, .right1 h1, .right2 h1, .right3 h1 {
        color: #4f4f4f;
        font-size: 1em;
        margin-bottom: 5px;
        margin-top: 80px;
    }
    .left1 h3, .left2 h3, .right1 h3, .right2 h3, .right3 h3 {
        color: #4f4f4f;
        font-size: 1.2em;
        margin-bottom: 10px;
    }
    .left1 p, .left2 p, .right1 p, .right2 p, .right3 p {
        color: #505050;
        font-size: 0.7em;
        margin-bottom: 15px;
        line-height: 1.3;
    }
    .left1 .image, .left2 .image {
        width: 80%;
        height: auto;
    }
    .icons {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .icon-column {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-right: 20px;
    }
    .icon {
        text-align: center;
        margin-bottom: 20px;
    }
    .icon img {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        margin-bottom: 10px;
    }
    .icon p {
        font-size: 0.7em;
        margin: 0px;
    }
    .right2 {
        background-color: #51cce0;
    }
    .right3 {
        background-color: #ef9a9a;
    }
    .security-image {
        margin-top: 20px;
        width: 80%;
        height: auto;
    }

    /* Media Query for smaller screens */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            align-items: center;
            padding-left: 0; /* Remove padding for mobile mode */
            padding-right: 0; /* Remove padding for mobile mode */
        }
        .column {
            margin-top: 0px;
            width: 80%;
            margin-bottom: 20px;
            padding: 20px;
            padding-top:0px;
            margin-left: auto;
            margin-right: auto;
        }
        .text-wrapper, .right1-content, .right2-content, .right3-content {
            width: 100%; /* Adjust width to 100% for better readability */
        }
    }
</style>
