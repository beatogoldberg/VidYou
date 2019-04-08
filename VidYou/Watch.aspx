<%@ Page Title="Video" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
	CodeBehind="Watch.aspx.cs" Inherits="VidYou.Videos" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
	<link href="/node_modules/plyr/dist/plyr.css" rel="stylesheet" />
	<style>
		.landing {
			display: none;
		}

		.site__container {
			grid-template: "Header Header"var(--header--height) "SideNav Landing"0 "SideNav Content"auto "SideNav Footer"var(--footer--height) / var(--sidenav--width) 1fr;
		}

		.videos__newVideos {
			grid-area: New;
			padding: 0 2em;
		}

		.footer {
			
		}

		.videos__newVideos {
			display: grid;
			grid-template: "Divider Divider Divider Divider"auto "Caption Caption Caption Caption"auto "Video1 Video2 Video3 Video4"1fr / 1fr 1fr 1fr 1fr;
			grid-gap: 1em;
		}


		@media (max-width: 599px) {
			.videos__popularVideos {
				grid-template: "Divider Divider"auto "Caption Caption"auto "Video1 Video2"1fr "Video3 Video4"1fr / 1fr 1fr;
			}

			.videos__newVideos {
				grid-template: "Divider Divider"auto "Caption Caption"auto "Video1 Video2"1fr "Video3 Video4"1fr / 1fr 1fr;
			}
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="watch">
		<div class="watch__stream">
			<div class="watch__video">
				<video class="watch__video--video" id="player" controls>
					<source runat="server" src="~/Videos/SIAMÉS.mp4" type="video/mp4">
				</video>
				<script src="/node_modules/plyr/dist/plyr.min.js"></script>
				<script type="text/javascript">
					const player = new Plyr('#player');
				</script>
			</div>
			<div class="watch__info">
				<section class="watch__title">
					<h1>SIAMÉS "The Wolf" [Official Animated Music Video]</h1>
				</section>
				<section class="watch__author">
					Uploaded by SIAMÉS
				</section>
				<section class="watch__stats">
					<section class="watch__likes">
						264K Likes
					</section>
					<section class="watch__views">
						57,376,841 Views
					</section>
				</section>

				<section class="watch__memo">
					<span>SIAMÉS "The Wolf" 1st single from "Bounce into The Music" Directed by Fer Suniga
						& RUDO Co. Animated & Produced by RUDO Co.
					</span>
				</section>
			</div>
		</div>
		<div class="videos__newVideos">
			<hr class="videos__divider">
			<div class="videos__caption--container">
				<span class="videos__caption">New Videos
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
	</div>

</asp:Content>
