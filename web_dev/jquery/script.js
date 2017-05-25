$(function(){

	$("img").css("border", "3px solid black");

	$("img").on({

		mouseenter: function(){
			$(this).css("border", "3px solid green");
		},

		mouseleave: function(){
			$(this).css("border", "3px dotted red");
		},

	});

	var wrapper = document.getElementById("wrapper")

	$("#header").click(function(){

		$("img").fadeToggle(3000);

		$("#side-a").slideToggle();

		$("#wrapper").css("background","none")

	})

});