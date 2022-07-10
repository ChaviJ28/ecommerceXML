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
        return password.value === rePassword.value
        
    }, "* Password should be equal to repassword");

$("#registration").validate(
    {
        rules: {
            fname: {
                required: true,
                minlength: 3
            },
            lname: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email:true
            },
            mobile: {
                required: true,
                regex: "^[5]([0-9])",
                minlength: 8,
                maxlength: 8
            },
            password: {
                required: true,
                regex: "[^\w\d]*(([0-9]+.*[A-Za-z]+.*)|[A-Za-z]+.*([0-9]+.*))",
                minlength: 7
            },
            rePassword: {
                required: true,
                equalStr: true
            },
        },
        messages: {
            fname: {
                required: "Please enter your first Name.",
                minlength: "Minimum no of characters is 3."
            },
            lname: {
                required: "Please enter your last Name.",
                minlength: "Minimum no of characters is 3."
            },
            email: {
                required: "Please enter your email.",
                email:"Enter a valid email."
            },
            mobile: {
                required: "Please enter your mobile no.",
                regex: "^Number should start with 5 and should consist only of numbers.",
                minlength: "Minimum no of characters is 8.",
                maxlength: "Maximum no of characters is 8."
            },
            password: {
                required: "Please enter your password.",
                regex: "password should have atleast 1 character and 1 number.",
                minlength: "Minimum no of characters is 7."
            },
            rePassword: {
                required: "Please re-enter your password.",
                equalStr: "Password is not equal to above one."
            },
        }
    }
)
})