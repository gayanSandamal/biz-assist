<?php // include_once '../../controllers/connection.php';    ?>
<?php
$barcode = htmlspecialchars($_GET["barcode"]);
$count = htmlspecialchars($_GET["count"]);
?>
<html>
    <head>
        <title>Print <?php echo $barcode; ?></title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <link href="../../assets/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <!--<script src="../../assets/js/jquery-3.2.1.min.js"></script>-->
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="../../assets/js/jquery-barcode.js"></script>
        <script src="https://www.google.com/cloudprint/client/cpgadget.js">
        <script>
        </script>
    </head>
    <body style="margin:0px;" onload="print_proc()">
        <div class="barcode-page">
            <?php for ($loop_count = 1; $loop_count <= $count; $loop_count++) { ?>
                <div class="barcode-container" style="display:inline-block; float:left; padding:5px; border:1px solid #000; margin-right:-1px; margin-bottom:-1px;">
                    <div class="barcode-block"></div>
                </div>
            <?php } ?>
        </div>
    </body>
    <script>
        $(document).ready(function ($) {
            $('.barcode-block').barcode("<?php echo $barcode; ?>", "ean13");
        });
        
            var ua = navigator.userAgent.toLowerCase();
            var isAndroid = ua.indexOf("android") > -1; //&& ua.indexOf("mobile");

            function print_proc() {
                if (isAndroid) {
                    // https://developers.google.com/cloud-print/docs/gadget
                    var gadget = new cloudprint.Gadget();
                    gadget.setPrintDocument("url", $('title').html(), window.location.href, "utf-8");
                    gadget.openPrintDialog();
                } else {
                    window.print();
                }
                return false;
            }
    </script>
</html>