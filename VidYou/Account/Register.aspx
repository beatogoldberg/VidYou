<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VidYou.Account.Register" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeaderStyle">
	<style>
		.Register-Container {
			grid-area: ContentArticle;
			display: grid;
			grid-template-areas:
			                   "Content Showcase";
			grid-template-columns: 1fr 1fr;
			height: 100%
		}
		.text-danger {
			grid-area: Errors;
            margin: 2em 0 0 2em;

		}
		.Register--Content {
			grid-area: Content;
			display: grid;
			grid-template-areas:
			                   "Errors"
							   "Form";
			grid-template-rows: auto 1fr;
			height: 100%;
		}

		.Register--Showcase {
			background-image: url("../Content/img/Register_Landing.png");
			background-position: center;
			background-size: cover;
			grid-area: Showcase;
			height: 100%;
		}
		.form-horizontal {
			grid-area: Form;
			margin: 2em 0 0 2em;
		}

		p {
			margin: 0;
		}
		
		body main {
			height: calc(100vh - 5rem) !important;
			margin-bottom: 0 !important;
		}

		main .ContentArticle {
            display: block !important;
		}

		.hero-landing {
			display: none !important;
		}
		footer {
			display: none;
		}
	</style>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
	<div class="Register-Container">

		<div class="Register--Showcase z-depth-5">

		</div>
		<div class="Register--Content">
			<p class="text-danger">
				<asp:Literal runat="server" ID="ErrorMessage" />
			</p>
			<div class="form-horizontal">
				<h4>Create a new account</h4>
				<hr />
				<asp:ValidationSummary runat="server" CssClass="text-danger" />
				<div class="form-group">
					<asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">Username</asp:Label>
					<div class="col-md-10">
						<asp:TextBox runat="server" ID="UserName" CssClass="form-control" TextMode="SingleLine" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
							CssClass="text-danger" ErrorMessage="The username field is required." />
					</div>
				</div>
				<div class="form-group">
					<asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
					<div class="col-md-10">
						<asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
							CssClass="text-danger" ErrorMessage="The email field is required." />
					</div>
				</div>
				<div class="form-group">
					<asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
					<div class="col-md-10">
						<asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
							CssClass="text-danger" ErrorMessage="The password field is required." />
					</div>
				</div>
				<div class="form-group">
					<asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 control-label">Confirm password</asp:Label>
					<div class="col-md-10">
						<asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
							CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
						<asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
							CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
