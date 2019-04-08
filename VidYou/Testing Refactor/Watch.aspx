<%@ Page Title="Video" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Watch.aspx.cs" Inherits="VidYou.Videos" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
	<style>
		body main .ContentArticle {
	-ms-grid-column: 2;
	-ms-grid-row: 1;
	-ms-grid-rows: auto auto auto;
	display: -ms-grid;
	display: grid;
	grid-area: Content;
	grid-template-areas: "Landing" "StreamVideos" "RecommendedVideos" !important;
			grid-template-rows: 0 auto auto;
	height: 100%;
	padding-bottom: 0;
}

	body main article .hero-landing {
		display: none;
	}

.video-stream {
	-ms-grid-column: 1;
	-ms-grid-row: 2;
	-ms-grid-rows: 35rem 1fr;
	-webkit-box-shadow: 0 3px 6px #000000, 0 3px 6px #000000;
	-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.23), 0 3px 6px rgba(0, 0, 0, 0.23);
	display: -ms-grid;
	display: grid;
	grid-area: StreamVideos;
	grid-template-areas: "MainVideo" "InfoVideo";
	grid-template-rows: 35rem 1fr;
	margin: 2em;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.23), 0 3px 6px rgba(0, 0, 0, 0.23);
}

		.iframe-container {
	grid-area: MainVideo;
}

	.iframe-container > div {
		height: 100%;
	}

		.iframe-container > div::before {
			overflow: hidden;
		}

		.iframe-container > div iframe {
			height: 100%;
			width: 100%;
		}

.Info-Video {
	-ms-grid-column: 1;
	-ms-grid-columns: auto 4fr auto;
	-ms-grid-row: 2;
	-ms-grid-rows: auto auto auto;
	display: -ms-grid;
	display: grid;
	grid-area: InfoVideo;
	grid-template-areas: "VideoTitle . VideoStats"
	                     "VideoAuthor . ." 
	                     "Description Description Description";
	grid-template-columns: auto 4fr auto;
	grid-template-rows: auto auto auto;
	padding: 1em;
	background: #dcdcdc;
	font-size: 0.9em;
}

	.Info-Video .Video-Stats {
		-ms-flex: 25%;
		-ms-grid-column: 3;
		-ms-grid-row: 1;
		-webkit-box-flex: 25%;
		display: flex;
		grid-area: VideoStats;
		flex: 25%;
		justify-content: center;
		align-items: center;
	}

		.Info-Video .Video-Stats .Video-Views {
			padding-left: 2em;
		}

	.Info-Video .Video-Title {
		-ms-grid-column: 1;
		-ms-grid-row: 1;
		grid-area: VideoTitle;
	}

		.Info-Video .Video-Title h1 {
			margin: 0;
			font-size: 1.5em;
		}

	.Info-Video .Video-Author {
		-ms-grid-column: 1;
		-ms-grid-row: 2;
		grid-area: VideoAuthor;
		padding-top: 1em;
	}

		.Info-Video .Video-Author p {
			margin: 0;
		}



	.Info-Video .Video-Description {
		-ms-grid-column: 1;
		-ms-grid-column-span: 3;
		-ms-grid-row: 3;
		-o-text-overflow: ellipsis;
		grid-area: Description;
		padding-top: 1em;
		text-overflow: ellipsis;
		font-weight: 100;
	}
.new-videos {
	-ms-grid-column: 1;
	-ms-grid-row: 3;
	grid-area: RecommendedVideos !important;
}

.section-caption strong {
	font-size: 1.4rem !important;
}
.video-content {
    grid-template-rows: auto !important;
}

	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<section class="video-stream z-depth-5">
		<div class="iframe-container ">
			<div style="text-align: center;" class="embed-responsive embed-responsive-16by9">
				<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe>
			</div>
		</div>
		
		<div class="Info-Video">
			<section class="Video-Title">
				<h1>REO Speedwagon - Can't Fight This Feeling (Official Music Video)</h1>
			</section>
			<section class="Video-Author">
				<p>Uploaded by RSpwagonVEVO</p>
			</section>
			<section class="Video-Stats">
				<section class="Video-Likes">
					264K Likes
				</section>
				<section class="Video-Views">
					57,376,841 Views
				</section>
			</section>

			<section class="Video-Description">
				<span>
					EO Speedwagon's official music video for 'Can't Fight This Feeling'. Click to listen to REO Speedwagon on Spotify: http://smarturl.it/REOspot?IQid=REOCFTF 

					As featured on The Essential REO Speedwagon. Click to buy the track or album via iTunes: http://smarturl.it/REOEssiTunes?IQid=... 
					Google Play: http://smarturl.it/REOCFTCplay?IQid=R... 
					Amazon: http://smarturl.it/REOEssAmz?IQid=REO...
				</span>
			</section>
		</div>
	</section>


	<section class="new-videos">
		<section class="divider">
			<hr/>
		</section>
		<section class="section-caption">
			<strong>Recommended Videos</strong>
		</section>
		<section class="video-content">
			<article class="video-cards">
				<div class="embed-responsive embed-responsive-16by9">
					<asp:ImageButton ID="ImageButton1" runat="server" CssClass="video-thumb-button embed-responsive-item" ImageUrl="~/Content/img/img1.jpeg"/>
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
					</br>
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
					</br>
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
					</br>
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