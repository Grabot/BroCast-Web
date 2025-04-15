<script>
    import { onMount } from 'svelte';

    let accessToken;
    let refreshToken;
    let newPassword = '';
    let confirmPassword = '';
    let showForm = false;
    let showNotFound = false;

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

    function handleSubmit(event) {
        event.preventDefault();

        if (newPassword !== confirmPassword) {
            alert('Passwords do not match.');
            return;
        }

        // Here you would typically send a request to your backend to reset the password
        // For example:
        fetch('/api/v1.4/password/update', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${accessToken}`
            },
            body: JSON.stringify({
                    "new_password": newPassword,
                    "access_token": accessToken,
                    "refresh_token": refreshToken
                })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Password reset successfully.');
            } else {
                alert('Failed to reset password.');
            }
        });

        alert('Password reset functionality is not implemented in this demo.');
    }
</script>

<style>
    .container, .not-found {
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
    .container h2, .not-found h2 {
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
</style>

{#if showForm}
<div class="container">
    <h2>Reset Your Password</h2>
    <form on:submit={handleSubmit}>
        <label for="newPassword">New Password</label>
        <input type="password" id="newPassword" bind:value={newPassword} required>

        <label for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" bind:value={confirmPassword} required>

        <button type="submit">Reset Password</button>
    </form>
</div>
{:else if showNotFound}
<div class="not-found">
    <h2>Not Found</h2>
    <p>The page you are looking for does not exist.</p>
</div>
{/if}
