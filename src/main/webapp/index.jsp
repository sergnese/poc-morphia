<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:f="http://java.sun.com/jsf/core">

	<head>
		<script type="text/javascript" src="resources/js/jquery.min.js"></script>
		<script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>

		<title>Basic jQuery Validation Form Demo | jQuery4u</title>

		<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

<script type="text/javascript">
(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
            //form validation rules
            $("#register-form").validate({
                rules: {
                    username: "required",
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                    }
                },
                messages: {
                    username: "Please enter your username",
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                    email: "Please enter a valid email address"
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        }
    }

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);
</script>

</head>
<body>
<div id="page-wrap">


<div id="header">
<h1 style="color: #ffffff;">Proof of concept jQuery/Javascript/JSF/Spring/Morphia/MongoDB</h1>
</div>

<div id="content">

<!-- HTML form for validation demo -->
<h:form id="register-form" prependId="false">

    <h2>User Registration</h2>

    <div id="form-content">
        <fieldset>
 
            <div class="fieldgroup">
                <label for="username">Username</label>
                <h:inputText id="username" value="#{registrationBean.user.name}" />
            </div>

            <div class="fieldgroup">
                <label for="email">Email</label>
                <h:inputText id="email" value="#{registrationBean.user.email}" />
            </div>

            <div class="fieldgroup">
                <label for="password">Password</label>
                <h:inputSecret id="password" value="#{registrationBean.user.password}" />
            </div>

            <div class="fieldgroup">
				<h:commandButton styleClass="submit" value="Register" action="#{registrationBean.send}"/>
                <h:messages showDetail="true" showSummary="false"/>
            </div>

        </fieldset>
    </div>
</h:form>
<!-- END HTML form for validation -->

</div>

</div>

</body>
</html>