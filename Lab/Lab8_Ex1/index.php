<style>
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 90vh;
    }

    form input {
        width: 220px;
        height: 35px;
        margin: 10px 0;
        outline: none;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding-left: 10px;
    }
</style>

<form action="mail.php" enctype="multipart/form-data" method="post">
    <input type="text" class="form-control" name="email" placeholder="Email">
    <input type="text" class="form-control" name="tieude" placeholder="ten">
    <textarea name="content" id="editor" class="form-control"></textarea>
    <input type="file" class="form-control" name="file">
    <button type="submit" class="btn btn-primary">Gửi</button>
</form>