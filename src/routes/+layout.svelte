<script lang="ts">
    import brocast_img from '$lib/images/brocast_transparent.png';
    import { goto } from '$app/navigation';
    let isMenuOpen = false;

    function toggleMenu() {
        isMenuOpen = !isMenuOpen;
    }

    function routeToPage(route: string) {
        goto(route);
        isMenuOpen = false;
    }
</script>

<div class="page-container">
    <title>Brocast</title>
    <header class="topbar">
        <button class="hamburger-menu" on:click={toggleMenu} aria-label="Toggle menu">
            <span class="material-icons">menu</span>
        </button>
        <div class="logo-container">
            <a href="/" class="logo-button">
                <div class='child'>
                    <img src={brocast_img} alt="Logo" class="logo-image" />
                </div>
                <div class='child'>Brocast</div>
            </a>
        </div>
        <nav class="nav-buttons" class:open={isMenuOpen}>
            <a href="/features" class="nav-button" on:click={() => routeToPage('/features')}>Features</a>
            <a href="/privacy" class="nav-button" on:click={() => routeToPage('/privacy')}>Privacy</a>
            <a href="/terms" class="nav-button" on:click={() => routeToPage('/terms')}>Terms</a>
            <a href="/contact" class="nav-button" on:click={() => routeToPage('/contact')}>Contact</a>
        </nav>
    </header>

    <main>
        <slot />
    </main>

    <footer class="bottombar">
        <div class="bottom-nav">
            <div class="section">
                <h3>Brocast</h3>
                <a href="/features" class="bottom-nav-button">Features</a>
                <a href="/privacy" class="bottom-nav-button">Privacy</a>
                <a href="/terms" class="bottom-nav-button">Terms</a>
                <a href="/contact" class="bottom-nav-button">Contact</a>
            </div>
            <div class="section">
                <h3>Zwaar Developers</h3>
                <a href="https://zwaar.dev/about" class="bottom-nav-button">about</a>
                <a href="https://zwaar.dev/contact" class="bottom-nav-button">Get in touch</a>
            </div>
            <div class="section">
                <h3>Download</h3>
                <a href="https://play.google.com/store/apps/details?id=nl.brocast" class="bottom-nav-button">Android</a>
                <a href="https://apps.apple.com/nl/app/brocast/id1571745515?platform=iphone" class="bottom-nav-button">iPhone</a>
            </div>
        </div>

        <div class="copyright">
            <p>&copy; 2025 Zwaar Developers, All Rights Reserved.</p>
        </div>
    </footer>
</div>

<style>
@import url('https://fonts.googleapis.com/icon?family=Material+Icons');
:global(body) {
    margin: 0;
    background-color: #333333;
    color: white;
    font-family: Arial, sans-serif;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.page-container {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
}

.topbar, .bottombar {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 1rem;
    position: relative;
    box-sizing: border-box;
    width: 100%;
}

.topbar {
    background-color: orange;
    height: 4rem;
    justify-content: space-between;
    display: flex;
    align-items: center;
}

.bottombar {
    background-color: #54687c;
    height: auto;
    margin-top: auto;
    padding: 1rem 0;
    width: 100%;
    flex-direction: column;
    display: flex;
}

.bottom-nav {
    display: flex;
    justify-content: space-evenly;
    width: 100%;
    margin-bottom: 0rem; /* Adds spacing between links and copyright */
}

.section {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0rem;
}

.section h3 {
    margin: 0;
    font-size: 1.2rem;
    color: white;
    text-align: center; /* Center the h3 elements */
}

.copyright {
    width: 100%;
    text-align: center;
    color: white;
    font-size: 0.9rem;
    padding: 0.5rem 0;
}

.logo-container {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    left: 15%;
    transform: translateX(-50%);
}

.child {
    display: inline-block;
    vertical-align: middle;
    color: white;
    text-decoration: none;
    background-color: none;
}

.logo-button {
    text-decoration: none;
    background: none;
    border: none;
    cursor: pointer;
}

.logo-image {
    height: 50px;
}

.nav-buttons {
    display: flex;
    justify-content: center;
    gap: 1rem;
    position: absolute;
    left: 55%; /* Adjust this value to move the navigation buttons to the right of center */
    transform: translateX(-50%);
}

.nav-button, .bottom-nav-button {
    background: none;
    border: none;
    color: white;
    font-size: 1rem;
    cursor: pointer;
    padding: 0.5rem 1rem;
    transition: background 0.3s;
}

.nav-button:hover, .bottom-nav-button:hover {
    background: rgba(255, 255, 255, 0.2);
    border-radius: 5px;
}

.hamburger-menu {
    display: none;
    flex-direction: column;
    cursor: pointer;
    background-color: orange;
    border: none;
}

@media (max-width: 768px) {
    .topbar {
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        height: auto;
        padding: 1rem;
    }

    .hamburger-menu {
        display: flex;
    }

    .logo-container {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
    }

    .nav-buttons {
        position: absolute;
        top: 100%;
        left: 50%;
        width: 100%;
        flex-direction: column;
        background-color: orange;
        display: none;
    }

    .nav-buttons.open {
        display: flex;
    }

    .nav-button {
        width: 100%;
        text-align: center;
        padding: 1rem;
        border-top: 1px solid rgba(255, 255, 255, 0.2);
    }

    .bottombar {
        padding: 1rem;
    }

    .bottom-nav {
        flex-direction: column;
        align-items: flex-start;
    }

    .section {
        align-items: center; /* Center the section container */
        width: 100%;
        margin-bottom: 2rem;
    }

    .section h3 {
        margin-bottom: 0.5rem;
        text-align: center; /* Center the h3 elements */
        font-size: 1.5rem; /* Increase font size */
        font-weight: bold; /* Make the text bolder */
    }

    .bottom-nav-button {
        width: 100%;
        text-align: center;
    }

    .copyright {
        text-align: center;
    }
}


</style>
