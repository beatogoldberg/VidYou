<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VidYou._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
	<style>
		body main .ContentArticle {
			-ms-grid-column: 2;
			-ms-grid-row: 1;
			-ms-grid-rows: auto;
			display: -ms-grid;
			display: grid;
			grid-area: ContentMain;
			grid-template-areas: "Landing" "NewVideos" "PopularVideos" !important;
			height: 100%;
			padding-bottom: 0;
			width: 100%
		}
	</style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="new-videos">
	    <asp:LoginView runat="server" ViewStateMode="Disabled">
		    <AnonymousTemplate>
			    <section class="divider">
				    <hr/>
			    </section>
		    </AnonymousTemplate>
		    <LoggedInTemplate>
		    <section class="divider">
			   
		    </section>
			</LoggedInTemplate>
	    </asp:LoginView>
	<section class="section-caption">
		<strong>New Videos</strong>
	</section>
	<section class="video-content">
		<article class="video-cards" style='display: grid; grid-template-areas: "Thumb" "Info";grid-template-rows: 3fr 1fr;'>
			<div class="embed-responsive embed-responsive-16by9" style="grid-area: Thumb;">
				<asp:ImageButton ID="ImageButton1" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img1.jpeg" PostBackUrl="Videos" />
			</div>
			<div class="video-info" style="grid-area: Info;">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
					<br/>
					<div class="counter">
						<span class="video-views">234 Views</span>
						<span class="video-date">2 hours ago</span>
					</div>
				</figcaption>
			</div>
		</article>
		<article class="video-cards">
			<div class="embed-responsive embed-responsive-16by9">
				<asp:ImageButton ID="ImageButton2" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img2.jpeg"/>
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
				<asp:ImageButton ID="ImageButton3" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img3.jpeg"/>
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
				<asp:ImageButton ID="ImageButton4" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img4.jpeg"/>
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
				<asp:ImageButton ID="ImageButton5" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img5.jpeg"/>
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
				<asp:ImageButton ID="ImageButton6" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img6.jpeg"/>
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
				<asp:ImageButton ID="ImageButton7" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img7.jpeg"/>
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
				<asp:ImageButton ID="ImageButton8" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img8.jpeg"/>
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
<section class="popular-videos">
	<section class="divider">
		<hr>
	</section>
	<section class="section-caption">
		<strong>Popular Videos</strong>
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
				<asp:ImageButton ID="ImageButton12" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img12.jpeg"/>
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
				<asp:ImageButton ID="ImageButton13" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img13.jpeg"/>
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
				<asp:ImageButton ID="ImageButton14" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img14.jpeg"/>
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
				<asp:ImageButton ID="ImageButton15" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img15.jpeg"/>
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
				<asp:ImageButton ID="ImageButton16" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img16.jpeg"/>
			</div>
			<div class="video-info">
				<figcaption>
					<div class="overflow--constrain">
						<strong class="video-title">Speed Code - Minimal Fashion Website Landing </strong>
					</div>

					<span class="video-author">CodeBullet</span>
					<br/>
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
