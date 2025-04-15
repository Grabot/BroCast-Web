<script>
    import { onMount } from 'svelte';

    let email = '';
    let showForm = true;
    let showSuccess = false;
    let showFailure = false;
    let errorMessage = '';

    async function handleSubmit(event) {
        event.preventDefault();

        // Validate email format
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            errorMessage = 'Please enter a valid email address.';
            showFailure = true;
            return;
        }

        try {
            const response = await fetch('/api/v1.4/remove/account', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    email: email,
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
    .container, .success, .failure {
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
    .container h2, .success h2, .failure h2 {
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
    .info {
        margin-bottom: 20px;
        color: #cccccc;
    }
</style>

{#if showForm}
<div class="container">
    <h2>Delete Account</h2>
    <div class="info">
        <p>By entering your email address below, you will receive a deletion email. This email will contain a link to confirm the deletion of all accounts associated with this email address.</p>
        <p>Please ensure that you have access to this email address before proceeding.</p>
    </div>
    <form on:submit={handleSubmit}>
        <label for="email">Email Address</label>
        <input type="email" id="email" bind:value={email} required>
        {#if showFailure}
        <div class="error-message">{errorMessage}</div>
        {/if}
        <button type="submit">Send Deletion Email</button>
    </form>
</div>
{:else if showSuccess}
<div class="success">
    <h2>Success!</h2>
    <p>A deletion email has been sent to {email}. Please check your inbox and follow the instructions to complete the account deletion.</p>
</div>
{:else if showFailure}
<div class="failure">
    <h2>Failed to Send Deletion Email</h2>
    <p>{errorMessage}</p>
</div>
{/if}
