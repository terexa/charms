$j = jQuery.noConflict();

$j(document).ready(function(){
	
$j(".submit-answer").live("click", function(event) {
	var a = $j('input:radio[name=activity[answer]]:checked').val();
	jQuery.get("/home/validate_question", {
		answer : a
	}, function(data) {
		$j('#result').html(data.data);
	}, "json");
});

});
