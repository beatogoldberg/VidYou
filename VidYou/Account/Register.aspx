<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
	CodeBehind="Register.aspx.cs" Inherits="VidYou.Account.Register" %>

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
    <div class="register">
        <div class="register__showcase">
            <div class="register__overlay">

            </div>
        </div>
        <div class="register__content">
            <p class="register__danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <h4 class="register__caption">Create a new account</h4>
            <hr class="register__divider" />
            <asp:ValidationSummary runat="server" CssClass="register__text--danger" />
            <div class="register__formGroup">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="register__label">Username</asp:Label>
                <div class="register__inputContainer">
                    <asp:TextBox runat="server" ID="UserName" CssClass="global__input" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        CssClass="register__text--danger" ErrorMessage="The username field is required." />
                </div>
            </div>
            <div class="register__formGroup">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="register__label">Email</asp:Label>
                <div class="register__inputContainer">
                    <asp:TextBox runat="server" ID="Email" CssClass="global__input" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="register__text--danger" ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="register__formGroup">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="register__label">Password</asp:Label>
                <div class="register__inputContainer">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="global__input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="register__text--danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="register__formGroup">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="register__label col-md-6">
                    Confirm password</asp:Label>
                <div class="register__inputContainer">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="global__input" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="register__text--danger" Display="Dynamic"
                        ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="register__text--danger" Display="Dynamic"
                        ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
            <div class="register__formGroup form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="global__button" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>