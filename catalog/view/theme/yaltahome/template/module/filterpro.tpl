<?php if($tags || $categories || $options || $manufacturers || $attributes || $price_slider) { ?>
<aside class="search-block">
<span><?php echo $heading_title; ?></span>
<div class="box-content">
<section>
<input type="text" class="search-fp" name="search" placeholder="12345678" value="" />
<label>№ Объекта</label>
</section>

<form id="filterpro">

<div class="option_box" <?php if(!$instock_visible) echo 'style="display:none"'; ?>>
<input type="checkbox" class="filtered" name="instock" id="instock" <?php if($instock_checked) echo 'checked="checked"'; ?>><label for="instock"><?php echo $text_instock?></label>
</div>


<?php if($manufacturers) { ?>
<?php foreach($manufacturers as $manufacturer) { ?>
<input type="hidden" class="m_name" id="m_<?php echo $manufacturer['manufacturer_id']?>" value="<?php echo $manufacturer['name']?>">
<?php } ?>
<?php } ?>

<?php if($options) { ?>
<?php foreach($options as $option) { ?>
<?php foreach($option['option_values'] as $option_value) { ?>
<input type="hidden" class="o_name" id="o_<?php echo $option_value['option_value_id']?>" value="<?php echo $option_value['name']?>">
<?php } ?>
<?php } ?>
<?php } ?>
<?php if($category_id !== false) { ?>
<input type="hidden" name="category_id" value="<?php echo $category_id ?>">
<?php } ?>
<?php if(isset($manufacturer_id)) { ?>
<input type="hidden" name="manufacturer_id" value="<?php echo $manufacturer_id ?>">
<?php }?>
<input type="hidden" name="page" id="filterpro_page" value="0">
<input type="hidden" name="path" value="<?php echo $path ?>">
<input type="hidden" name="sort" id="filterpro_sort" value="">
<input type="hidden" name="order" id="filterpro_order" value="">
<input type="hidden" name="limit" id="filterpro_limit" value="">



<?php if($categories) { ?>
<div class="option_box">
<div class="option_name <?php if(!$expanded_categories){echo "hided";}?>"><?php echo $text_categories; ?></div>
<div>
<table id="filter_categories">
<?php foreach($categories as $category) { ?>
<tr>
<td>
<input id="cat_<?php echo $category['category_id']; ?>" class="filtered"
type="checkbox" name="categories[]"
value="<?php echo $category['category_id']; ?>">
</td>
<td>
<label for="cat_<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></label>
</td>
</tr>
<?php } ?>
</table>
</div>
</div>
<?php } ?>

<?php if($tags) { ?>
<div class="option_box">
<div class="option_name <?php if(!$expanded_tags){echo "hided";}?>"><?php echo $text_tags; ?></div>
<div>
<table id="filter_tags">
<?php foreach($tags as $tag) { ?>
<tr>
<td>
<input id="tag_<?php echo $tag['tag']; ?>" class="filtered"
type="checkbox" name="tags[]"
value="<?php echo $tag['tag']; ?>">
</td>
<td>
<label for="tag_<?php echo $tag['tag']; ?>"><?php echo $tag['name']; ?></label>
</td>
</tr>
<?php } ?>
</table>
</div>
</div>
<?php } ?>


<?php if($manufacturers) { ?>
<div class="option_box">
<div class="option_name <?php if(!$expanded_manufacturer){echo "hided";}?>"><?php echo $text_manufacturers; ?></div>
<div class="collapsible" <?php if(!$expanded_manufacturer){echo 'style="display:none"';}?>>
<?php if($display_manufacturer == 'select') { ?>
<div>
<select name="manufacturer[]" class="filtered">
<option value="" class="main_filtered">Выбрать производителя...</option>
<?php foreach($manufacturers as $manufacturer) { ?>
<option id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value"
value="<?php echo $manufacturer['manufacturer_id']?>"><?php echo $manufacturer['name']?></option>
<?php } ?>
</select>
</div>
<?php } elseif($display_manufacturer == 'checkbox') { ?>
<table>
<?php foreach($manufacturers as $manufacturer) { ?>
<tr>
<td>
<input id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value filtered"
type="checkbox" name="manufacturer[]"
value="<?php echo $manufacturer['manufacturer_id']?>">
</td>
<td>
<label for="manufacturer_<?php echo $manufacturer['manufacturer_id']?>"><?php echo $manufacturer['name']?></label>
</td>
</tr>
<?php } ?>
</table>
<?php } elseif($display_manufacturer == 'radio') { ?>
<table>
<?php foreach($manufacturers as $manufacturer) { ?>
<tr>
<td>
<input id="manufacturer_<?php echo $manufacturer['manufacturer_id']?>" class="manufacturer_value filtered"
type="radio" name="manufacturer[]"
value="<?php echo $manufacturer['manufacturer_id']?>">
</td>
<td>
<label for="manufacturer_<?php echo $manufacturer['manufacturer_id']?>"><?php echo $manufacturer['name']?></label>
</td>
</tr>
<?php } ?>
</table>
<?php }?>
</div>
</div>
<?php } ?>

<?php if($attributes) { ?>
<?php foreach($attributes as $attribute_group_id => $attribute) { ?>
<?php if($attr_group) { ?>
<div class="option_box">
<?php } ?>

<?php foreach($attribute['attribute_values'] as $attribute_value_id => $attribute_value) { ?>
<section>

<h4><?php echo $attribute_value['name']; ?></h4>

<div>
<?php if($attribute_value['display'] == 'select') { ?>
<div>
<select class="filtered" name="attribute_value[<?php echo $attribute_value_id?>][]">
<option value="" class="main_filtered">Выбрать <?php echo $attribute_value['name']; ?>...</option>
<?php foreach($attribute_value['values'] as $i => $value) { ?>
<option class="a_name"
at_v_i="<?php echo $attribute_value_id . '_' . $value ?>"
at_v_t="<?php echo $attribute_value_id . '_' . htmlspecialchars(preg_replace('/\s+|\n|\r|\s+$/m', '_', $value)) ?>"
data-value="<?php echo $value ?>"
value="<?php echo $value ?>"><?php echo $value ?></option>
<?php }?>
</select>
</div>
<?php } elseif($attribute_value['display'] == 'checkbox') { ?>
<table>
<?php foreach($attribute_value['values'] as $i => $value) { ?>
<tr>
<td>
<input class="filtered a_name"
id="attribute_value_<?php echo $attribute_value_id . $i; ?>"
type="checkbox" name="attribute_value[<?php echo $attribute_value_id?>][]"
at_v_i="<?php echo $attribute_value_id . '_' . htmlspecialchars($value); ?>"
value="<?php echo $value ?>">
</td>
<td>
<label for="attribute_value_<?php echo $attribute_value_id . $i; ?>"
at_v_t="<?php echo $attribute_value_id . '_' . htmlspecialchars(preg_replace('/\s+|\n|\r|\s+$/m', '_', $value)); ?>"
data-value="<?php echo $value; ?>"
value="<?php echo $value ?>"><?php echo $value?></label>
</td>
</tr>
<?php } ?>
</table>
<?php } elseif($attribute_value['display'] == 'radio') { ?>
<table>
<?php foreach($attribute_value['values'] as $i => $value) { ?>
<tr>
<td>
<input class="filtered a_name"
id="attribute_value_<?php echo $attribute_value_id . $i; ?>"
type="radio" name="attribute_value[<?php echo $attribute_value_id?>][]"
at_v_i="<?php echo $attribute_value_id . '_' . $value ?>"
value="<?php echo $value ?>">
</td>
<td>
<label for="attribute_value_<?php echo $attribute_value_id . $i; ?>"
at_v_t="<?php echo $attribute_value_id . '_' . htmlspecialchars(preg_replace('/\s+|\n|\r|\s+$/m', '_', $value)) ?>"
data-value="<?php echo $value ?>"
value="<?php echo $value ?>"><?php echo $value?></label>
</td>
</tr>
<?php } ?>
</table>
<?php } elseif($attribute_value['display'] == 'slider') { ?>

<div>
<input type="text" id="attribute_value_<?php echo $attribute_value_id; ?>_min" name="attr_slider[<?php echo $attribute_value_id?>][min]" value="" placeholder="кв. м">
<label>от</label>
</div>
<div>
<input type="text" id="attribute_value_<?php echo $attribute_value_id; ?>_max" name="attr_slider[<?php echo $attribute_value_id?>][max]" value="" placeholder="кв. м">
<label style="margin-bottom: 0;">до</label>
</div>

<script>
var attr_arr_<?php echo $attribute_value_id; ?> = [<?php echo implode(',', $attribute_value['values']); ?>];
$('#slider-range-<?php echo $attribute_value_id; ?>').slider({
range:true,
min:0,
max:<?php echo count($attribute_value['values']) - 1; ?>,
values:[0, <?php echo count($attribute_value['values']) - 1; ?>],
slide:function (a, b) {
var min = attr_arr_<?php echo $attribute_value_id; ?>[b.values[0]];
var max = attr_arr_<?php echo $attribute_value_id; ?>[b.values[1]];
$("#attribute_label_<?php echo $attribute_value_id; ?>_min").html(min + '<?php echo $attribute_value['suffix']; ?>');
$("#attribute_label_<?php echo $attribute_value_id; ?>_max").html(max + '<?php echo $attribute_value['suffix']; ?>');
},
stop:function (a, b) {
var min = attr_arr_<?php echo $attribute_value_id; ?>[b.values[0]];
var max = attr_arr_<?php echo $attribute_value_id; ?>[b.values[1]];
$("#attribute_value_<?php echo $attribute_value_id; ?>_min").val(min);
$("#attribute_value_<?php echo $attribute_value_id; ?>_max").val(max);
iF()
}
});
</script>

<?php } ?>
</section>


<?php } ?>
<?php if($attr_group) { ?>
</div>
<?php } ?>
<?php } ?>
<?php } ?>

<section>
<h4>
<span><?php echo $text_price_range?></span>

<input class="inp_valuta" type="radio" name="valute" value="usd" checked="checked" />
<label>$</label>

<input class="inp_valuta" type="radio" name="valute" value="rub" />
<label>руб.</label>
</h4>

<div>
<input class="price_limit" type="text" name="min_price" value="-1" id="min_price" placeholder="руб."/>
<label>от</label>
</div>

<div>
<input class="price_limit" type="text" name="max_price" value="-1" id="max_price" placeholder="руб."/>
<label style="margin-bottom: 0;">до</label>
</div>
</section>

<section>
<h4>Сортировать по цене</h4>
<button onclick="setSort('sort=p.price&order=DESC');return false;">По убыванию</button>
<button onclick="setSort('sort=p.price&order=ASC');return false;">По возрастанию</button>

<i id="pricesort" style="display:none;" data-sort="sort=p.price&order=ASC"></i>
<i id="valutesort" style="display:none;" data-valute="usd"></i>
</section>

<?php if($options) { ?>
<?php foreach($options as $option) { ?>
<div class="option_box">
<div class="option_name <?php if(!$option['expanded']){echo "hided";}?>"><?php echo $option['name']; ?></div>
<?php if($option['display'] == 'select') { ?>
<div>
<select class="filtered" name="option_value[<?php echo $option['option_id']?>][]">
<option value=""><?php echo $text_all?></option>
<?php foreach($option['option_values'] as $option_value) { ?>
<option class="option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
value="<?php echo $option_value['option_value_id'] ?>"><?php echo $option_value['name']?></option>
<?php }?>
</select>
</div>
<?php } elseif($option['display'] == 'checkbox') { ?>
<table class="collapsible" <?php if(!$option['expanded']){echo 'style="display:none"';}?>>
<?php foreach($option['option_values'] as $option_value) { ?>
<tr>
<td>
<input class="filtered option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
type="checkbox" name="option_value[<?php echo $option['option_id']?>][]"
value="<?php echo $option_value['option_value_id']?>">
</td>
<td>
<label for="option_value_<?php echo $option_value['option_value_id']?>"><?php echo $option_value['name']?></label>
</td>
</tr>
<?php } ?>
</table>
<?php } elseif($option['display'] == 'radio') { ?>
<table class="collapsible" <?php if(!$option['expanded']){echo 'style="display:none"';}?>>
<?php foreach($option['option_values'] as $option_value) { ?>
<tr>
<td>
<input class="filtered option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
type="radio" name="option_value[<?php echo $option['option_id']?>][]"
value="<?php echo $option_value['option_value_id']?>">
</td>
<td>
<label for="option_value_<?php echo $option_value['option_value_id']?>"><?php echo $option_value['name']?></label>
</td>
</tr>
<?php } ?>
</table>
<?php } elseif($option['display'] == 'image') { ?>
<div>
<?php foreach($option['option_values'] as $option_value) { ?>

<input style="display: none;" class="filtered option_value" id="option_value_<?php echo $option_value['option_value_id']?>"
type="checkbox" name="option_value[<?php echo $option['option_id']?>][]"
value="<?php echo $option_value['option_value_id']?>">
<img src="<?php echo $option_value['thumb'];?>" onclick="$('#option_value_<?php echo $option_value['option_value_id']?>').click()"/>

<?php } ?>
</div>
<?php }?>
</div>
<?php } ?>
<?php } ?>

</form>
</div>

<script>
function setSort(data){
$('#pricesort').attr('data-sort',data);
valuta = $( "input:radio[name=valute]:checked" ).val();
$('#valutesort').attr('data-valute',valuta);
$("#filterpro .filtered").trigger("change");
}
</script>
<script id="productTemplate" type="text/x-jquery-tmpl">
<div class="pr_left">

{{if thumb}}
<div class="image"><a href="${href}"><img src="${thumb}" title="${name}" alt="${name}"/></a></div>

{{/if}}
<div class="pr_center">



{{if badge}}
<i class="${badge}"</i>
{{/if}}




<div class="name">
<a href="${href}">${name}</a>
</div>

<div class="description">${description}</div>


<div class="bottom_info">
<div class="read_more">
<a href="${href}">Подробнее</a>
</div>




{{if price}}
<div class="price">
{{if special }}
<span class="price-old">${price}</span> <span class="price-new">${special}</span>
{{else}}


<span>Цена </span><span>${price} руб.</span><br />
<span>${usd} $</span>



{{/if}}

</div>
{{/if}}

</div>
</div><!--pr_right-->
</div>
</script>

</aside>
<?php } ?>
