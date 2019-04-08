<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VidYou._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeaderStyle" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="videos">
		<div class="videos__newVideos">
			<hr class="videos__divider">
			<div class="videos__caption--container">
				<span class="videos__caption">
					New Videos
				</span>
			</div>
			<div class="videos__cards videos__cards--1">
				<asp:ImageButton ID="videos__IB1" runat="server"
					CssClass="videos__thumb videos__thumb--1 videos__thumb--IB" ImageUrl="~/Content/img/img1.jpg"
					PostBackUrl="Watch" />
				<div class="videos__info videos__info--1">

					<strong class="videos__title videos__title--1">
						Making a Scene in Adobe Illustrator CC | Room Interior | Speed Art
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
					<strong class="videos__title videos__title--2">
						Figma Tutorial - A Free UI Design/Prototyping Tool. It's awesome.
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
					<strong class="videos__title videos__title--3">
						If the Emperor had a Text-to-Speech Device - Episode 19: Warp Grumbling
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
					<strong class="videos__title videos__title--4">
						Loneliness
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

			<div class="videos__cards videos__cards--5">
				<asp:ImageButton ID="videos__IB5" runat="server"
					CssClass="videos__thumb videos__thumb--5 videos__thumb--IB" ImageUrl="~/Content/img/img5.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--5">
					<strong class="videos__title videos__title--5">
						I'm not mad, just disappointed... - Galaxy S10/S10+ Review
					</strong>
					<div class="videos__author videos__author--5">
						Linus Tech Tips
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--5">
							293,264 views
						</div>
						<div class="videos__date videos__date--5">
							7 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--6">
				<asp:ImageButton ID="videos__IB6" runat="server"
					CssClass="videos__thumb videos__thumb--6 videos__thumb--IB" ImageUrl="~/Content/img/img6.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--6">
					<strong class="videos__title videos__title--6">
						Learn JavaScript - Full Course for Beginners
					</strong>
					<div class="videos__author videos__author--6">
						freeCodeCamp.org
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--6">
							129,431 views
						</div>
						<div class="videos__date videos__date--6">
							12 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--7">
				<asp:ImageButton ID="videos__IB7" runat="server"
					CssClass="videos__thumb videos__thumb--7 videos__thumb--IB" ImageUrl="~/Content/img/img7.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--7">
					<strong class="videos__title videos__title--7">
						Turn Photos Into Logos with GIMP
					</strong>
					<div class="videos__author videos__author--7">
						Logos By Nick
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--7">
							404,273 views
						</div>
						<div class="videos__date videos__date--7">
							17 hours ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--8">
				<asp:ImageButton ID="videos__IB8" runat="server"
					CssClass="videos__thumb videos__thumb--8 videos__thumb--IB" ImageUrl="~/Content/img/img8.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--8">
					<strong class="videos__title videos__title--8">
						Web APIs You [Probably] Didn't Know Existed
					</strong>
					<div class="videos__author videos__author--8">
						Coding Tech
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--8">
							226,181 views
						</div>
						<div class="videos__date videos__date--8">
							20 hours ago
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="videos__popularVideos">
			<hr class="videos__divider">
			<div class="videos__caption--container">
				<span class="videos__caption">
					Popular Videos
				</span>
			</div>
			<div class="videos__cards videos__cards--1">
				<asp:ImageButton ID="videos__IB9" runat="server"
					CssClass="videos__thumb videos__thumb--1 videos__thumb--IB" ImageUrl="~/Content/img/img9.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--1">
					<strong class="videos__title videos__title--1">
						Genetic Engineering Will Change Everything Forever – CRISPR
					</strong>
					<div class="videos__author videos__author--1">
						Kurzgesagt – In a Nutshell
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--1">
							15,589,127 views
						</div>
						<div class="videos__date videos__date--1">
							1 month ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--2">
				<asp:ImageButton ID="videos__IB10" runat="server"
					CssClass="videos__thumb videos__thumb--2 videos__thumb--IB" ImageUrl="~/Content/img/img10.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--2">
					<strong class="videos__title videos__title--2">
						Cicada 3301: An Internet Mystery
					</strong>
					<div class="videos__author videos__author--2">
						LEMMiNO
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--2">
							12,398,874 views
						</div>
						<div class="videos__date videos__date--2">
							2 months ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--3">
				<asp:ImageButton ID="videos__IB11" runat="server"
					CssClass="videos__thumb videos__thumb--3 videos__thumb--IB" ImageUrl="~/Content/img/img11.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--3">
					<strong class="videos__title videos__title--3">
						How People Disappear
					</strong>
					<div class="videos__author videos__author--3">
						Vsauce
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--3">
							12,217,545 views
						</div>
						<div class="videos__date videos__date--3">
							3 weeks ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--4">
				<asp:ImageButton ID="videos__IB12" runat="server"
					CssClass="videos__thumb videos__thumb--4 videos__thumb--IB" ImageUrl="~/Content/img/img12.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--4">
					<strong class="videos__title videos__title--4">
						Rammstein - Deutschland (Official Video)
					</strong>
					<div class="videos__author videos__author--4">
						Rammstein Official
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--4">
							11,267,972 views
						</div>
						<div class="videos__date videos__date--4">
							2 weeks ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--5">
				<asp:ImageButton ID="videos__IB13" runat="server"
					CssClass="videos__thumb videos__thumb--5 videos__thumb--IB" ImageUrl="~/Content/img/img13.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--5">
					<strong class="videos__title videos__title--5">
						The Leaning Tower of Lire
					</strong>
					<div class="videos__author videos__author--5">
						DONG
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--5">
							9,850,601 views
						</div>
						<div class="videos__date videos__date--5">
							2 months ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--6">
				<asp:ImageButton ID="videos__IB14" runat="server"
					CssClass="videos__thumb videos__thumb--6 videos__thumb--IB" ImageUrl="~/Content/img/img14.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--6">
					<strong class="videos__title videos__title--6">
						Why Alien Life Would be our Doom - The Great Filter
					</strong>
					<div class="videos__author videos__author--6">
						Kurzgesagt – In a Nutshell
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--6">
							9,369,978 views
						</div>
						<div class="videos__date videos__date--6">
							2 months ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--7">
				<asp:ImageButton ID="videos__IB15" runat="server"
					CssClass="videos__thumb videos__thumb--7 videos__thumb--IB" ImageUrl="~/Content/img/img15.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--7">
					<strong class="videos__title videos__title--7">
						TIMELAPSE OF THE FUTURE: A Journey to the End of Time (4K)
					</strong>
					<div class="videos__author videos__author--7">
						melodysheep
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--7">
							8,679,373 views
						</div>
						<div class="videos__date videos__date--7">
							3 months ago
						</div>
					</div>
				</div>
			</div>

			<div class="videos__cards videos__cards--8">
				<asp:ImageButton ID="videos__IB16" runat="server"
					CssClass="videos__thumb videos__thumb--8 videos__thumb--IB" ImageUrl="~/Content/img/img16.jpg"
					PostBackUrl="Videos" />
				<div class="videos__info videos__info--8">
					<strong class="videos__title videos__title--8">
						Engineers Created A New Bionic Arm That Can Grow With You
					</strong>
					<div class="videos__author videos__author--8">
						Seeker
					</div>
					<div class="videos__stats">
						<div class="videos__views videos__views--8">
							3,727,170 views
						</div>
						<div class="videos__date videos__date--8">
							3 months ago
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>