<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:f="http://java.sun.com/jsf/core">

<head>
<meta name="keywords" content="basic jquery validation form demo" />

<title>Basic jQuery Validation Form Demo | jQuery4u</title>

<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="resources/css/style.css" />

</head>
<body>
	<div id="page-wrap">


		<div id="header">
			<h1 style="color: #ffffff;">Proof of concept
				jQuery/Javascript/JSF/Spring/Morphia/MongoDB</h1>
		</div>

		<div id="content">

			<h:form id="register-form" prependId="false">
				<h2>
					Registration |
					<h:commandLink action="index?faces-redirect=true" value="Home" />
				</h2>

				<div id="form-content">
					<fieldset>

						<div class="fieldgroup">
							<h:outputText value="user " />
							<strong><h:outputText value="#{registrationBean.user}" /></strong>
							<h:outputText value=" saved" />
						</div>

					</fieldset>
				</div>

			</h:form>

		</div>
	</div>
</body>
</html>