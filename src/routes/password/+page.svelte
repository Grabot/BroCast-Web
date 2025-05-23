<script>
    import { onMount } from 'svelte';

    let accessToken;
    let refreshToken;
    let newPassword = '';
    let confirmPassword = '';
    let showForm = false;
    let showNotFound = false;
    let showSuccess = false;
    let showFailure = false;
    let passwordMismatch = false;
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

    async function handleSubmit(event) {
        event.preventDefault();

        if (newPassword !== confirmPassword) {
            passwordMismatch = true;
            return;
        }

        passwordMismatch = false;

        try {
            const response = await fetch('/api/v1.4/password/update', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    new_password: newPassword,
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
                errorMessage = 'Failed to reset password. The token might have expired. Please try again.';
                showFailure = true;
                showForm = false;
            }
        } catch (error) {
            console.error('Error resetting password:', error);
            errorMessage = 'An error occurred while resetting the password. Please try again.';
            showFailure = true;
            showForm = false;
        }
    }
</script>

<style>
    .container, .not-found, .success, .failure {
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
    .container h2, .not-found h2, .success h2, .failure h2 {
        margin-bottom: 20px;
        color: #ff4444;
    }
    .container form {
        display: flex;
        flex-direction: column;
    }
    .container label {
        margin-bottom: 5px;
        color: #cccccc;
    }
    .container input {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #555;
        border-radius: 4px;
        background-color: #333;
        color: white;
    }
    .container button {
        padding: 10px;
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .container button:hover {
        background-color: #0056b3;
    }
    .success {
        background-color: #4caf50;
    }
    .failure {
        background-color: #f44336;
    }
    .error-message {
        color: #ff4444;
        margin-top: 10px;
    }
</style>

{#if showForm}
<div class="container">
    <h2>Reset Your Password</h2>
    <form on:submit={handleSubmit}>
        <label for="newPassword">New Password</label>
        <input type="password" id="newPassword" bind:value={newPassword} required>

        <label for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" bind:value={confirmPassword} required>

        {#if passwordMismatch}
        <div class="error-message">Passwords do not match. Please try again.</div>
        {/if}

        <button type="submit">Reset Password</button>
    </form>
</div>
{:else if showNotFound}
<div class="not-found">
    <h2>Not Found</h2>
    <p>The page you are looking for does not exist.</p>
</div>
{:else if showSuccess}
<div class="success">
    <h2>Success!</h2>
    <p>Your password has been reset successfully. Please log in with your new password.</p>
</div>
{:else if showFailure}
<div class="failure">
    <h2>Failed to Reset Password</h2>
    <p>{errorMessage}</p>
</div>
{/if}
