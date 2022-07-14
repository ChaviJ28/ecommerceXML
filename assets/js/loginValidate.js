$().ready(function() {

$("#loginForm").validate(
    {
        rules: {
            email: {
                required: true,
                email:true
            },
            password: {
                required: true,
                minlength: 7
            }
        },
        messages: {
            email: {
                required: "Please enter your email.",
                email:"Enter a valid email."
            },
            password: {
                required: "Please enter your password.",
                minlength: "Minimum no of characters is 7."
            }
            },
        
    }
)
})