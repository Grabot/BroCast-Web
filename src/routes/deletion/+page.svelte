<script>
    import { onMount } from 'svelte';

    let accessToken;
    let refreshToken;
    let showForm = false;
    let showSuccess = false;
    let showNotFound = false;
    let showFailure = false;
    let errorMessage = '';

    onMount(() => {
        const urlParams = new URLSearchParams(window.location.search);
        accessToken = urlParams.get('access_token');
        refreshToken = urlParams.get('refresh_token');

        if (accessToken && refreshToken) {
            showForm = true;
        } else {
            showNotFound = true;
        }
    });

    async function handleDelete() {
        try {
            const response = await fetch('/api/v1.4/delete/account/all', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    access_token: accessToken,
                    refresh_token: refreshToken
                })
            });

            if (!response.ok) {
                throw new Error('Network response was not ok');
            }

            const data = await response.json();

            if (data.result) {
                showSuccess = true;
                showForm = false;
            } else {
                errorMessage = 'Failed to delete account. Please try again.';
                showFailure = true;
                showForm = false;
            }
        } catch (error) {
            console.error('Error deleting account:', error);
            errorMessage = 'An error occurred while deleting the account. Please try again.';
            showFailure = true;
            showForm = false;
        }
    }
</script>

<style>
    .container, .success, .failure, .not-found {
        background-color: #444;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 100%;
        max-width: 400px;
        margin: 100px auto; /* Added top margin to move content down */
        text-align: center;
        color: white;
    }
    .container h2, .success h2, .failure h2, .not-found h2 {
        margin-bottom: 20px;
        color: #ff4444;
    }
    .container button {
        padding: 10px;
        background-color: #d9534f;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .container button:hover {
        background-color: #c9302c;
    }
    .success {
        background-color: #4caf50;
    }
    .failure {
        background-color: #f44336;
    }
    .not-found {
        background-color: #f44336;
    }
    .error-message {
        color: #ff4444;
        margin-top: 10px;
    }
</style>

{#if showForm}
<div class="container">
    <h2>Delete Account</h2>
    <p>Are you sure you want to delete your account? This action cannot be undone.</p>
    <button on:click={handleDelete}>Delete Account</button>
</div>
{:else if showSuccess}
<div class="success">
    <h2>Success!</h2>
    <p>Your account has been successfully deleted.</p>
</div>
{:else if showFailure}
<div class="failure">
    <h2>Failed to Delete Account</h2>
    <p>{errorMessage}</p>
</div>
{:else if showNotFound}
<div class="not-found">
    <h2>Not Found</h2>
    <p>The page you are looking for does not exist.</p>
</div>
{/if}
