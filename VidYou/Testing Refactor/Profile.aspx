<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="VidYou.Account.Profile" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
    <style>
        body main .ContentArticle {
			-ms-grid-column: 2;
			-ms-grid-row: 1;
			-ms-grid-rows: auto;
			display: -ms-grid;
			display: grid;
			grid-area: ContentMain;
			grid-template-areas: "Profile" 
                                 "UploadedVideos" 
                                 "LikedVideos" !important;
           
			height: 100%;
			padding-bottom: 0;
			width: 100%
		}

        .accountProfile {
            grid-area: Profile;
            height: 40vh;
            width: 100%;
            position: relative;
            background-image: url("../Content/img/img12.jpeg");
            background-position: center right;
            background-size: cover;
        }

        .profile-image {
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-image: url("../Content/img/profileimg.jpg");
            background-size: contain;
            background-position: center;
            border-radius: 50%;
            height: 260px;
            width: 260px;
            box-shadow: 0 1rem 4rem rgb(253, 255, 153) !important

        }
        .profile-image h2 {
            margin-top: 0;
            position: absolute;
            top: 115%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            text-transform: uppercase;
        }
        .hero-landing {
            display: none;
        }
        .popular-videos {
            margin-top: 12rem !important;
            grid-area: UploadedVideos !important;
        }
        .new-videos {
            grid-area: LikedVideos !important;
        }
        .video-content {
                grid-template-rows: auto !important;
        }
    </style>   
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="accountProfile shadow-lg">
        <div class="profile-image shadow-lg">
            <h2><%: Context.User.Identity.GetUserName()  %>

            </h2>
        </div>
    </div>
    <section class="popular-videos">
	<section class="divider">
		<hr>
	</section>
	<section class="section-caption">
		<strong>Uploaded Videos</strong>
	</section>
	<section class="video-content">
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton9" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img9.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton10" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img10.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton11" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img11.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
        <article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton1" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img10.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
        </section>
        </section>
        
     <section class="new-videos">
	<section class="divider">
		<hr>
	</section>
	<section class="section-caption">
		<strong>Liked Videos</strong>
	</section>
	<section class="video-content">
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton2" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img9.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton3" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img10.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton4" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img11.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
        <article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton5" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img10.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
				<br>
				<div class="counter">
					<span class="video-views">234 Views</span>
					<span class="video-date">2 hours ago</span>
				</div>
				</figcaption>
			</div>
		</article>
        </section>
        </section>
</asp:Content>
