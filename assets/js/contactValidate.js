$().ready(function() {

    jQuery.validator.addMethod(
        "regex",
        function(value, element, regexp) {
          var re = new RegExp(regexp);
          return this.optional(element) || re.test(value);
        },
        "Please check your input."
      );

      $.validator.addMethod("equalStr", function(value, element) {
        return password.value == rePassword.value
        
    }, "* Password should be equal to repassword");

$("#contactF").validate(
    {
        rules: {
            name: {
                required: true,
                minlength: 3
            },
            message: {
                required: true,
                minlength: 50
            },
            email: {
                required: true,
                email:true
            },
        },
        messages: {
            name: {
                required: "Please enter your Name.",
                minlength: "Minimum no of characters is 3."
            },
            message: {
                required: "Please enter your message.",
                minlength: "Message should consist of atleast 50 characters."
            },
            email: {
                required: "Please enter your email.",
                email:"Enter a valid email."
            },
        }
    }
)
})