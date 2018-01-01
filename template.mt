<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="ie6 skip-js" lang="en-US"> <![endif]-->
<!--[if IE 7]>         <html class="ie7 skip-js" lang="en-US"> <![endif]-->
<!--[if IE 8]>         <html class="ie8" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US">         <!--<![endif]-->
<head>
    <meta charset="UTF-8" />
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title>CIMA Companies UK</title>

    <style>
        tr.reject td:first-of-type {
            text-decoration: line-through;
        }
    </style>
</head>
<body>
<div class="container-fluid">

<h1>All UK Companies</h1>

<div class="row">
	<div class="col-md-12">
	<table class="table table-condensed table-striped">
		<thead>
		<tr>
			<td>Company</td>
			<td>Website</td>
			<td>Business Area</td>
			<td>Acc. Level</td>
			<td>Notes</td>
		</tr>
		</thead>

		% foreach my $company (@{ $companies }) {
			<tr <% if ($company->{reject}) { %>class="reject"<% } %>>
				<td><%= $company->{name} %></td>
				<td>
                    % if ($company->{link}) {
                    <a href="<%= $company->{link} %>">Visit Site</a>
                    % }
                </td>
				<td><%= $company->{biz} %></td>
				<td><%= $company->{level} %></td>
				<td><%= $company->{notes} %></td>
			</tr>
		% }

	</table>
	</div>
</div>

</div>
</body>
</html>
