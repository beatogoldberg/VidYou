<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
	CodeBehind="Login.aspx.cs" Inherits="VidYou.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeaderStyle">
    <style>
        .landing {
            display: none;
        }

        .site__container {
            grid-template: "Header Header"var(--header--height) "SideNav Landing"0 "SideNav Content"1fr "SideNav Footer"var(--footer--height) / var(--sidenav--width) 1fr;
        }

        .footer {
            margin-top: 0;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div class="login">
        <div class="login__external">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
        <div class="login__internal">
            <h4 class="login__caption">Internal Login</h4>
            <hr class="login__divider" />
            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                <p class="login__text--danger">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
            </asp:PlaceHolder>
            <div class="login__formGroup">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="login__label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="global__input" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="login__text--danger"
                        ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="login__formGroup">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="login__label">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="global__input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="login__text--danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="login__formGroup">
                <div class="col-md-offset-2 col-md-10">
                    <div class="checkbox">
                        <asp:CheckBox runat="server" ID="RememberMe" />
                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="global__button" />
                </div>
                <center>
                    <p>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new
                            user</asp:HyperLink>
                    </p>
                </center>
            </div>
        </div>
    </div>


</asp:Content>