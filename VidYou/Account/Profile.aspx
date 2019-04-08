<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
	CodeBehind="Profile.aspx.cs" Inherits="VidYou.Account.Profile" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
	<style>
		.landing {
			display: none;
		}

		.site__container {
			grid-template: "Header Header"var(--header--height) "SideNav Landing"0 "SideNav Content"auto "SideNav Footer"var(--footer--height) / var(--sidenav--width) 1fr;
		}

		.videos__newVideos {
			grid-area: Uploaded;
			padding: 0 2em;
		}

		.videos__popularVideos {
			grid-area: Liked;
			padding: 0 2em;
		}

		.footer {
			margin-top: 0;
		}

		.videos__newVideos {
			display: grid;
			grid-template: "Divider Divider Divider Divider" auto "Caption Caption Caption Caption" auto "Video1 Video2 Video3 Video4" 1fr / 1fr 1fr 1fr 1fr;
			grid-gap: 1em;

		}

		.videos__popularVideos {
			display: grid;
			grid-template: "Divider Divider Divider Divider" auto "Caption Caption Caption Caption" auto "Video1 Video2 Video3 Video4" 1fr / 1fr 1fr 1fr 1fr;
			grid-gap: 1em;

			@media (max-width: 599px) {
				.videos__popularVideos {
					grid-template: "Divider Divider" auto "Caption Caption" auto "Video1 Video2" 1fr "Video3 Video4" 1fr / 1fr 1fr;
				}
				.videos__newVideos {
										grid-template: "Divider Divider" auto "Caption Caption" auto "Video1 Video2" 1fr "Video3 Video4" 1fr / 1fr 1fr;
				}
			}
		}
	</style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="profile">
		<div class="profile__info">
			<div class="profile__info--wrap">
				<div class="profile__picture">
				<asp:Image ID="profile_picture" runat="server" ImageUrl="~/Content/img/profileimg.jpg"
					CssClass="profile__picture--img" />
			</div>
				<asp:Label ID="profile__name" CssClass="profile__name" Text="Mustafa" runat="server">Mustafa <%: Context.User.Identity.GetUserName()  %></asp:Label>

			</div>
			
		</div>
		<div class="videos__newVideos">
			<hr class="videos__divider">
			<div class="videos__caption--container">
				<span class="videos__caption">Uploaded Videos
				</span>
			</div>
			<div class="videos__cards videos__cards--1">
				<asp:ImageButton ID="videos__IB1" runat="server"
					CssClass="videos__thumb videos__thumb--1 videos__thumb--IB" ImageUrl="~/Content/img/img1.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--1">

					<strong class="videos__title videos__title--1">Making a Scene in Adobe Illustrator CC
						| Room Interior | Speed Art
					</strong>

					<div class="videos__author videos__author--1">
						Digital Art Creation
					</div>

					<div class="videos__stats">
						<div class="videos__views videos__stats--left videos__views--1">
							156,965 views
						</div>
						<div class="videos__date videos__stats--right videos__date--1">
							2 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--2">
				<asp:ImageButton ID="videos__IB2" runat="server"
					CssClass="videos__thumb videos__thumb--2 videos__thumb--IB" ImageUrl="~/Content/img/img2.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--2">
					<strong class="videos__title videos__title--2">Figma Tutorial - A Free UI Design/Prototyping
						Tool. It's awesome.
					</strong>
					<div class="videos__author videos__author--2">
						DesignCourse
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--2">
							177,668 views
						</div>
						<div class="videos__date videos__date--2">
							3 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--3">
				<asp:ImageButton ID="videos__IB3" runat="server"
					CssClass="videos__thumb videos__thumb--3 videos__thumb--IB" ImageUrl="~/Content/img/img3.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--3">
					<strong class="videos__title videos__title--3">If the Emperor had a Text-to-Speech Device
						- Episode 19: Warp Grumbling
					</strong>
					<div class="videos__author videos__author--3">
						Bruva Alfabusa
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--3">
							380,481 views
						</div>
						<div class="videos__date videos__date--3">
							3 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--4">
				<asp:ImageButton ID="videos__IB4" runat="server"
					CssClass="videos__thumb videos__thumb--4 videos__thumb--IB" ImageUrl="~/Content/img/img4.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--4">
					<strong class="videos__title videos__title--4">Loneliness
					</strong>
					<div class="videos__author videos__author--4">
						Kurzgesagt – In a Nutshell
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--4">
							438,829 views
						</div>
						<div class="videos__date videos__date--4">
							5 hours ago
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="videos__popularVideos">
			<hr class="videos__divider">
			<div class="videos__caption--container">
				<span class="videos__caption">Liked Videos
				</span>
			</div>
			<div class="videos__cards videos__cards--5">
				<asp:ImageButton ID="videos__IB9" runat="server"
					CssClass="videos__thumb videos__thumb--1 videos__thumb--IB" ImageUrl="~/Content/img/img9.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--5">
					<strong class="videos__title videos__title--5">Genetic Engineering Will Change Everything
						Forever – CRISPR
					</strong>
					<div class="videos__author videos__author--5">
						Kurzgesagt – In a Nutshell
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--5">
							15,589,127 views
						</div>
						<div class="videos__date videos__date--5">
							1 month ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--6">
				<asp:ImageButton ID="videos__IB10" runat="server"
					CssClass="videos__thumb videos__thumb--2 videos__thumb--IB" ImageUrl="~/Content/img/img10.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--6">
					<strong class="videos__title videos__title--6">Cicada 3301: An Internet Mystery
					</strong>
					<div class="videos__author videos__author--6">
						LEMMiNO
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--6">
							12,398,874 views
						</div>
						<div class="videos__date videos__date--6">
							2 months ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--7">
				<asp:ImageButton ID="videos__IB11" runat="server"
					CssClass="videos__thumb videos__thumb--7 videos__thumb--IB" ImageUrl="~/Content/img/img11.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--7">
					<strong class="videos__title videos__title--7">How People Disappear
					</strong>
					<div class="videos__author videos__author--7">
						Vsauce
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--7">
							12,217,545 views
						</div>
						<div class="videos__date videos__date--7">
							3 weeks ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--8">
				<asp:ImageButton ID="videos__IB12" runat="server"
					CssClass="videos__thumb videos__thumb--8 videos__thumb--IB" ImageUrl="~/Content/img/img12.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--8">
					<strong class="videos__title videos__title--8">Rammstein - Deutschland (Official Video)
					</strong>
					<div class="videos__author videos__author--8">
						Rammstein Official
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--8">
							11,267,972 views
						</div>
						<div class="videos__date videos__date--8">
							2 weeks ago
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
