# Module 9.1 Release 0

**What are some common HTTP status codes?**

* **404 Not Found** - means the requested source is no longer available or not found
* **403 Forbidden** - means access to the resource is forbidden
* **500 Internal Server Error** - a catchall error for errors generated on the server side

[Source](https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/)

**What is the difference between a GET request and a POST request? When might each be used?**

* GET requests include all required data in the URL
* POST requests supplies additional data from the client to the server in the message body

POST is likely used in situations where the information being sent is customized for the user (e.g., input from a form) and is potentially sensitive (e.g., passwords), as such you'd want the information to be sent in a way that is not easily accessed (e.g., from a URL) whereas GET is probably more useful for accessing a set of existing information that requires a few non-sensitive parameters to determine what to show in the browser (e.g., loading a location on Google Maps)

[Source 1](https://www.w3schools.com/tags/ref_httpmethods.asp)

[Source 2](http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests)
