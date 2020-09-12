<tr class="product-single-container">
    <th class="product-select">
        <div class="checkbox">
            <label>
                <input type="checkbox" name="optionsCheckboxes">
            </label>
        </div>
    </th>
    <td class="product-id"><span><?php echo $row["category_id"]; ?></span></td>

    <td class="product-name-td"><div class="product-name"><?php echo $row["category_name"]; ?></div></td>
    <td class="product-name-td"><div class="product-name"><?php echo $row["parent_category_name"]; ?></div></td>    
    <td class="product-actions">
        <a href="#" class="product-actions-btn product-actions-edit"><i class="material-icons">mode_edit</i><span>Edit</span></a>
        <a href="#" class="product-actions-btn product-actions-delete"><i class="material-icons">delete</i><span>Delete</span></a>
    </td>
</tr>