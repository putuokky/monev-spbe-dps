<div class="container-fluid">

    <!-- 404 Error Text -->
    <div class="text-center">
        <div class="error mx-auto" data-text="404">404</div>
        <p class="lead text-gray-800 mb-5">Maaf, Halaman Ini Tidak Tersedia</p>
        <p class="text-gray-500 mb-0"></p>
        <?php
        if ($_SESSION['grupindeks'] == 0 || $_SESSION['grupindeks'] == 1) { ?>
            <a href="?page=home">&larr; Back to Dashboard</a>
        <?php } else if ($_SESSION['grupindeks'] == 2) { ?>
            <a href="?page=homeikci">&larr; Back to Dashboard</a>
        <?php } else { ?>
            <a href="?page=homeapp">&larr; Back to Dashboard</a>
        <?php } ?>
    </div>

</div>