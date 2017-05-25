# Module 9.3: jQuery

Plan to learn jQuery:

**Step 1:** Google jQuery to learn basic purpose of jQuery and how to get started

Helpful Resources Found:

* [https://jquery.com/](https://jquery.com/)
* [https://www.digitalocean.com/community/tutorials/an-introduction-to-jquery](https://www.digitalocean.com/community/tutorials/an-introduction-to-jquery)
* [https://www.w3schools.com/jquery/jquery_get_started.asp](https://www.w3schools.com/jquery/jquery_get_started.asp)

**Step 2:** Find cheatsheet on syntax of jQuery and/or common functions

Basic syntax: `$(selector).action()`

* [https://www.w3schools.com/jquery/jquery_syntax.asp](https://www.w3schools.com/jquery/jquery_syntax.asp)
* [http://api.jquery.com/](http://api.jquery.com/)
* [https://oscarotero.com/jquery/](https://oscarotero.com/jquery/)

**Step 3:** Find sample code to see how jQuery is typically implemented/integrated

Sample Code:
```
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide();
    });
});
```

**Step 4:** Find FAQ on jQuery

* [http://learn.jquery.com/using-jquery-core/faq/](http://learn.jquery.com/using-jquery-core/faq/)

**Step 5:** Try basic snippets of code like ones W3School sometimes provide, if not available can try it in Repl. If code is provided, try to first read it to see what I expect it to do, then see if it does it and if there are places I've misinterpreted.

**Step 6:** Build something


## Other Notes

Google CDN:
```
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
```

Document Ready Event (to prevent code from running before document is finished loading):
```
$(function(){

   // jQuery methods go here...

});
```
