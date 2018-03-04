jQuery(function() {
  var cars;
  cars = $('#service_model_id').html();
  console.log(cars);
  return $('#service_brand_id').change(function() {
    var brand, options;
    brand = $('#service_brand_id :selected').text();
    options = $(cars).filter("optgroup[label=" + brand + "]").html();
    console.log(options);
    if (options) {
      return $('#service_model_id').html(options);
    } else {
      return $('#service_model_id').empty();
    }
  });
});
