<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_branch = "
SELECT
u.username,
u.first_name,
u.last_name,
b.branch_id,
b.branch_name,
b.branch_location,
b.address,
b.tel_1,
b.tel_2,
b.tel_3
FROM user u
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = '$user_id_new'
";
$result_get_branch = $conn->query($get_branch);
if ($result_get_branch->num_rows > 0) {
    while ($row = $result_get_branch->fetch_assoc()) {
        $username = $row["username"];
        $first_name = $row["first_name"];
        $last_name = $row["last_name"];
        $branch_name = $row["branch_name"];
        $branch_id = $row["branch_id"];
        $branch_location = $row["branch_location"];
        $address = $row["address"];
        $tel_1 = $row["tel_1"];
        $tel_2 = $row["tel_2"];
        $tel_3 = $row["tel_3"];
    }
} else {
    
}

$get_products = "
SELECT
	p.product_id,
	p.product_name,
	p.product_desc,
	c.cat_name,
	b.brand_name,
	i.img_path,
	p.product_model_no,
	p.product_code_no,
	s.supplier_name,
	p.buying_price,
	p.selling_price,
	p.availability,
	p.tax_id,
	p.offer_type_id,
	p.offer_value,
	p.discounted,
	p.product_added_date,
	p.product_exp_date,
	p.user_id,
	u.first_name,
	u.last_name,
	p.qty,
	p.product_condition_id,
	pcon.product_condition_state
FROM
	product p
LEFT OUTER JOIN user u ON u.user_id = p.user_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN image i ON i.img_id = p.img_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE
	p.branch_id = '$branch_id' AND p.flag = 0
ORDER BY
	c.cat_name ASC
";
$result_get_products = $conn->query($get_products);
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content">
        <div class="container-fluid">
            <div class="col-md-8 col-sm-8">
                <div class="row">
                    <div class="trash-container">
                        <form>
                            <?php
                            if ($result_get_products->num_rows > 0) {
                                while ($row = $result_get_products->fetch_assoc()) {
                                    ?>
                                    <div class="trash-item <?php echo 'trashId-' . $row["product_id"]; ?>" style="background-image: url(<?php echo $baseUrl . $row["img_path"]; ?>)" onclick="trashClick('<?php echo $row["product_id"]; ?>', '<?php echo $row["product_name"]; ?>')" trashTempId="<?php echo $row["product_id"]; ?>" oncontextmenu="trashRightClick('<?php echo $row["product_id"]; ?>')">
                                        <input type="checkbox" name="check_list[]" id="checkLst-<?php echo $row["product_id"]; ?>" value="<?php echo $row["product_id"]; ?>" class="cat-check">
                                        <div class="trash-tooltip">
                                            <div class="trash-tooltip-content">
                                                <?php echo 'Name: ' . $row["product_name"]; ?><br>
                                                <?php echo 'Model: ' . $row["product_model_no"]; ?><br>
                                                <?php echo 'Code: ' . $row["product_code_no"]; ?><br>
                                                <?php echo 'Brand: ' . $row["brand_name"]; ?><br>
                                                <?php echo 'Sell: Rs.' . $row["selling_price"]; ?><br>
                                                <?php echo 'Trashed by: ' . $row["first_name"] . ' ' . $row["last_name"]; ?><br>
                                            </div>
                                        </div>
                                        <h5 class="trash-name"><?php echo $row["product_name"]; ?></h5>
                                    </div>
                                    <?php
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="card">
                    <div class="card-header" data-background-color="purple">
                        <h4 class="title">To be deleted <button class="btn btn-primary select-all" onclick="selectAll()">Select all</button></h4>
                    </div>
                    <div class="card-content">
                        <div class="trash-action-btn-container" id="trashActionBtnContainer">
                        </div>
                        <ul class="to-be-deleted-list" id="toBeDeletedList">
                        </ul>
                    </div>
                </div>
            </div>
            <tempList></tempList>
        </div>
    </div>
    <?php include_once '../../inc/footer-cont.php'; ?>
</div>
<?php include_once '../../inc/footer.php'; ?>

<style>
    .trash-container {
        display: inline-block;
        width: 100%;
    }
    .trash-item {
        position: relative;
        display: inline-block;
        width: 100%;
        max-width: 120px;
        margin: 10px;
        float: left;
        height: 100vh;
        max-height: 120px;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        border: 3px solid #0ea84c;
        -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
        -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
        box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
    }
    .trash-name {
        background-color: #303f9f;
        color: #fff;
        font-size: 12px;
        position: absolute;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: 0px;
        padding: 5px;
    }
    .trash-tooltip {
        position: absolute;
        top: 10%;
        left: 90%;
        background-color: #4b59b3;
        color: #fff;
        width: 200px;
        font-size: 12px;
        font-weight: 300;
        padding: 10px;
        border-radius: 5px;
        -webkit-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        -moz-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.5);
        z-index: 1;
        display: none;
    }
    .trash-item:hover {
        z-index: 1;
        cursor: pointer;
    }
    .trash-item:hover .trash-tooltip {
        display: block;
        transition: 0.2s;
    }
    .trash-item {
        transform: scale(1);
        transition: 0.2s;
    }
    .trash-item.selected {
        transform: rotate(-5deg);
        transition: 0.2s;
    }
    .trash-item.selected .trash-tooltip {
        transform: rotate(5deg);
        transition: 0.2s;
    }
    ul#toBeDeletedList {
        padding: 0px;
        margin: 10px 0px 0px 0px;
        list-style: none;
        font-size: 12px;
    }
    .trash-action-btn-container {
        display: -webkit-flex;
        display: flex;
        -webkit-align-items: center;
        align-items: center;
        -webkit-justify-content: space-between;
        justify-content: space-between;
    }
    .trash-action-btn-container button.btn.btn-primary {
        width: calc(33.33% - 5px);
        padding: 12px 0px;
        margin: 10px 0px;
    }
    /*    .trash-action-btn-container button.btn.btn-primary:first-child {
            margin: 10px 20px 10px 0px;
        }*/
    .item-right-click-container {
        position: fixed;
        background-color: #fff;
        box-shadow: 0 12px 20px -10px rgba(156, 39, 176, 0.28), 0 4px 20px 0px rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(156, 39, 176, 0.2);
        border-radius: 3px;
        line-height: 1;
        padding: 5px;
        min-width: 100px;
        z-index: 99;
    }
    .item-right-click-item {
        padding: 5px;
        transition: 0.2s;
    }
    .item-right-click-item:hover {
        background-color: #EEEEEE;
        transition: 0.2s;
        cursor: pointer;
    }
    .askpopup-container {
        position: fixed;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,0.35);
        z-index: 9;
        display: -webkit-flex;
        display: flex;
        -webkit-align-items: center;
        align-items: center;
        -webkit-justify-content: center;
        justify-content: center;
        opacity: 0;
        transition: 0.5s;
    }
    .askpopup-container.after {
        opacity: 1;
        transition: 0.5s;
    }
    .askpopup-inner {
        background-color: #FFF;
        padding: 10px;
        border-radius: 4px;
        box-shadow: 0 12px 20px -10px rgba(156, 39, 176, 0.28), 0 4px 20px 0px rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(156, 39, 176, 0.2);
        opacity: 0;
        transform: translateY(-50px);
        transition: 0.5s;
    }
    .askpopup-container.after .askpopup-inner {
        opacity: 1;
        transform: translateY(0px);
        transition: 0.5s;
    }
    .askpopup-inner h4 {
        font-size: 16px;
        font-weight: 600;
        text-align: center;
    }
    .askpopup-btn-container > button {
        width: calc(50% - 5px);
        float: left;
        margin: 0px;
    }
    .askpopup-btn-container > button:first-child {
        margin-right: 5px;
    }
    .askpopup-btn-container > button:last-child {
        margin-left: 5px;
    }
    .to-be-deleted-list > li {
        display: -webkit-flex;
        display: flex;
        -webkit-align-items: center;
        align-items: center;
        -webkit-justify-content: space-between;
        justify-content: space-between;
        background-color: #eee;
        margin: 0px 0px 10px 0px;
        padding: 12px 10px 10px 10px;
        border-radius: 4px;
        box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
        line-height: 1;
        position: relative;
        text-transform: capitalize;
        font-weight: 600;
    }
    .remove-single-from-trash {
        position: absolute;
        top: 0px;
        right: 0px;
        padding: 12px;
        transition: 0.3s;
    }
    .remove-single-from-trash:hover {
        transition: 0.3s;
        background-color: #0ea84c;
        color: #FFFFFF;
        cursor: pointer;
    }
    input.cat-check {
        display: none;
    }
    .restore-all-btn {
        background: linear-gradient(60deg, #ffa726, #fb8c00);
    }
    .select-all {
        margin: 0px;
        float: right;
        position: relative;
        top: -7px;
        right: -8px;
    }
    .trash-item.hover {
        transform: rotate(0deg) scale(1.2);
        box-shadow: 0 12px 20px -10px rgba(156, 39, 176, 0.28), 0 4px 20px 0px rgba(0, 0, 0, 0.12), 0 7px 8px -5px rgba(156, 39, 176, 0.2);
        transition: 0.2s;
    }
</style>
<script>
//    menu_trigger();
    var trashList = [];
    function trashClick(trashId, trashName) {
        var checkBox = $(event.target).closest('.trash-item').find('.cat-check');
        var thisId = '.trashId-' + trashId;
        $(thisId).toggleClass('selected');
        if ($.inArray(trashId, trashList) !== -1) {
            checkBox.removeAttr('checked');
            checkBox.triggerHandler("click");
            var index = trashList.indexOf(trashId);
            trashList.splice(index, 1);
        } else {
            trashList.push(trashId);
            checkBox.attr('checked', 'true');
            checkBox.triggerHandler("click");
        }
        var i;
        var deleteList = "";

        for (i = 0; i < trashList.length; i++) {
            if (trashList[i]) {
                deleteList += '<li trashTempId=' + trashList[i] + ' onmouseover="getSelected()" onmouseleave="offSelected()"><span class="trashTempNameHolder">' + trashList[i] + '</span><span class="remove-single-from-trash" onclick="removeFromDelList(' + trashList[i] + ')"><i class="fa fa-times"></i></span></li>';
            } else {
            }
        }
        document.getElementById("toBeDeletedList").innerHTML = deleteList;
        showActionBtns();
        console.log(JSON.stringify(trashList));

        $('.trash-item').each(function () {
            var itemSelf = $(this);
            var trashTempItemId = itemSelf.attr('trashTempId');
            $('.to-be-deleted-list > li').each(function () {
                var liSelf = $(this);
                var trashTempLiId = liSelf.attr('trashTempId');
                if (trashTempItemId === trashTempLiId) {
                    var tempTrashNAme = itemSelf.find('.trash-name').text();
                    liSelf.find('.trashTempNameHolder').text(tempTrashNAme);
                }
            });
        });
    }
    function showActionBtns() {
        var actionBtns = `
            <button class="btn btn-primary" onclick="clearTrashList()">Clear</button>
            <button class="btn btn-primary restore-all-btn" onclick="restoreTrashList()">Restore</button>
            <button class="btn btn-primary btn-danger pull-right" onclick="askDeleteTrash()">Delete</button>
        `;
        var trashActionBtnContainer = document.getElementById("trashActionBtnContainer");
        if (trashList.length) {
            document.getElementById("trashActionBtnContainer").innerHTML = actionBtns;
        } else {
            while (trashActionBtnContainer.hasChildNodes()) {
                trashActionBtnContainer.removeChild(trashActionBtnContainer.lastChild);
            }
        }
    }
    function clearTrashList() {
        $('.trash-item.selected').trigger('click');
        $('.trash-item').removeClass('selected');
        var trashActionBtnContainer = document.getElementById("trashActionBtnContainer");
        while (trashActionBtnContainer.hasChildNodes()) {
            trashActionBtnContainer.removeChild(trashActionBtnContainer.lastChild);
        }
        trashList.splice(0, trashList.length);
        console.log(JSON.stringify(trashList));
    }
    function trashRightClick(itemTrashId) {
        event.preventDefault();
//        alert("clientX: " + event.clientX + " - clientY: " + event.clientY);
        var rightClickWindow = `    
            <div class="item-right-click-container" style="left:` + event.clientX + `px; top:` + event.clientY + `px;" onmouseleave="removeTrashRightClick()">
                <div class="item-right-click-item right-restore" onclick="restoreSingleTrash(` + itemTrashId + `)">Restore</div>
                <div class="item-right-click-item right-delete" onclick="deleteSingleTrash(` + itemTrashId + `)">Delete</div>

            </div>
        `;
        $('.item-right-click-container').remove();
        $(event.target).closest('body').append(rightClickWindow);
    }
    function removeTrashRightClick() {
        $('.item-right-click-container').remove();
    }
    function askPopup(delType, itemTrashId) {
        var askPopup = `
            <div class="askpopup-container">
                <div class="askpopup-inner">
                    <h4>Do you want to delete this?</h4>
                    <div class="askpopup-btn-container">
                        <button class="btn btn-danger"onclick="` + delType + `(` + itemTrashId + `)">Yes</button>
                        <button class="btn btn-primary" onclick="cancelAsk()">No</button>
                    </div>
                </div>
            </div>
        `;
        $('body').append(askPopup);
        setTimeout(function () {
            $('.askpopup-container').addClass('after');
        }, 10);
    }
    function deleteSingleTrash(itemTrashId) {
        askPopup('singleDeleteAsk', itemTrashId);
    }
    function cancelAsk() {
        $('.askpopup-container').removeClass('after');
        setTimeout(function () {
            $('.askpopup-container').remove();
        }, 500);
    }
    function singleDeleteAsk(delTrashId) {
        $.ajax({
            type: 'POST',
            url: '../../uploads/delete.php',
            data: {del_id: delTrashId},
            success: function (data) {
                successfully_deleted();
                cancelAsk();
            }
        });
    }
    function successfully_deleted() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Trashed item is successfully deleted';
        push_notificatoin(color, icon, msg);
    }
    function successfully_restored() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Trashed item is successfully restored';
        push_notificatoin(color, icon, msg);
    }
    function removeFromDelList(delListId) {
        $('.trashId-' + delListId).trigger('click');
        $('.trash-item').removeClass('hover');
    }
    function askDeleteTrash() {
        askPopup('multiDeleteAsk');
    }
    function multiDeleteAsk() {
        $.ajax({
            type: 'POST',
            url: '../../uploads/delete-multiple.php',
            data: $('form').serialize(),
            success: function (data) {
                console.log(data);
                successfully_deleted();
                cancelAsk();
            }
        });
    }
    function restoreSingleTrash(itemTrashId) {
        $.ajax({
            type: 'POST',
            url: '../../uploads/restore-single.php',
            data: {del_id: itemTrashId},
            success: function (data) {
                $('.trashId-' + itemTrashId).fadeOut('slow', function () {
                    $('.trashId-' + itemTrashId).remove();
                });
                $('li[trashtempid="' + itemTrashId + '"]').fadeOut('slow', function () {
                    $('li[trashtempid="' + itemTrashId + '"]').remove();
                });
                successfully_restored();
            }
        });
    }
    function restoreTrashList() {
        $.ajax({
            type: 'POST',
            url: '../../uploads/restore-multiple.php',
            data: $('form').serialize(),
            success: function (data) {
                console.log(data);
                var arrayLength = trashList.length;
                for (var i = 0; i < arrayLength; i++) {
                    console.log(trashList[i]);
                    $('.trashId-' + trashList[i]).fadeOut('slow', function () {
                        $('.trashId-' + trashList[i]).remove();
                    });
                }
                successfully_restored();
            }
        });
    }
    function selectAll() {
        $('.trash-item').trigger('click');
        $('.cat-check').attr('checked', 'true');
        $('.cat-check').triggerHandler("click");
    }
    function getSelected() {
        var trashtempid = $(event.target).closest('li').attr('trashtempid');
        $('.trashId-' + trashtempid).addClass('hover');
    }
    function offSelected() {
        var trashtempid = $(event.target).closest('li').attr('trashtempid');
        $('.trashId-' + trashtempid).removeClass('hover');
    }
</script>