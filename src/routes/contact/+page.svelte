<script>
    import zwaar_logo from '$lib/images/Zwaar_Logo.png';
    import brocast_logo from '$lib/images/brocast_transparent.png';

    
    let innerWidth = 0
    let innerHeight = 0
    $: normalMode = innerWidth*1.33 >= innerHeight

</script>

<div class="container">
    <img class="container_image_brocast" style='--innerWidth:{innerWidth};' src={brocast_logo} alt="Logo" />
</div>
<h1 class="centered_text" id="brocast_text" style='--innerWidth:{innerWidth};'><strong><b>BroCast</b></strong></h1>
<br><br>
<h1 class="centered_text" id="from_text" style='--innerWidth:{innerWidth};'>From</h1>
<div>
    <div class="container">
        <a href="https://zwaar.dev" style='--innerWidth:{innerWidth};' class="clickable-div">
            <img class="container_image_zwaar" style='--innerWidth:{innerWidth};' src={zwaar_logo} alt="Logo" />
            <h1 class="centered_text" id="developers_text" style='--innerWidth:{innerWidth};'><strong><b>Developers</b></strong></h1>
        </a>
    </div>
</div>
<br><br><br><br><br>
<h3 class="centered_text">Thanks for Visiting the Brocast page</h3>
<h3 class="centered_text">Brocast is made with passion and emotion by the team at Zwaar Developers</h3>
<br><br>
<h3 class="centered_text">If you want to get in touch with the team to ask for our services,</h3>
<h3 class="centered_text">please download our app "Brocast" and send a message to "Sander 🥰"</h3>
<br>
<h3 class="centered_text">Or send an email to the CEO at "SanderKools@zwaar.dev"</h3>
<br><br><br><br><br>

<svelte:window bind:innerWidth bind:innerHeight />
<style>
    #from_text {
        color:grey;
        font-size: clamp(0px, calc( var(--innerWidth) * 0.008px ), 42px);
    }
    #brocast_text {
        color:whitesmoke;
        font-size: clamp(0px, calc( var(--innerWidth) * 0.02px ), 52px);
    }
    #developers_text {
        padding-left: clamp(0px, calc( var(--innerWidth) * 0.01px ), 42px);
        color:grey;
        font-size: clamp(0px, calc( var(--innerWidth) * 0.01px ), 42px);
    }
    .centered_text {
        text-align:center;
        padding: 0px;
        margin: 0px;
    }
    .container {
      text-align: center;
      margin-top: 20px;
    }
    .container_image_brocast {
        height:auto;
        width: calc( var(--innerWidth) * 0.14px);
        max-width: 600px;
        min-width: 100px;
    }
    .container_image_zwaar {
        height:auto;
        width: calc( var(--innerWidth) * 0.16px);
        max-width: 600px;
        min-width: 100px;
    }
    
    .clickable-div {
        width: calc( var(--innerWidth) * 0.16px);
        max-width: 600px;
        min-width: 100px;
        overflow: hidden;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
</style>