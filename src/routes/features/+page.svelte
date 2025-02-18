<script>

</script>

<div class="container">
    <div class="main-column">
        <div class="column blue">
            Blue Column
        </div>
        <br>
        <br>
        <div class="column red">
            Red Column
        </div>
    </div>
    <div class="main-column">
        <div class="column green">
            Green Column
        </div>
        <br>
        <br>
        <div class="column yellow">
            Yellow Column
        </div>
    </div>
</div>

<style>
    .container {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        max-width: fit-content;
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
        margin-bottom: 100px;
    }
    .column {
        width: 40vw;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
        font-size: 1.5em;
    }
    .blue {
        height: 900px;
        background-color: #007BFF;
    }
    .green {
        height: 1000px;
        background-color: #28A745;
    }
    .red {
        height: 800px;
        background-color: #DC3545;
    }
    .yellow {
        height: 600px;
        background-color: #FFC107;
        color: black;
    }
</style>