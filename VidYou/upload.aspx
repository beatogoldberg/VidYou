<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="VidYou.upload" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeaderStyle" runat="server">


    <link href="css/style.css" rel='stylesheet' type='text/css' media="all" />


    <style>
        #upload {
            color: white !important;
            font-weight: 500;
            background: linear-gradient(50deg, #ee0b77 0%, #ff6901 100%);
            padding: 0.4rem 1.2rem;
            border-radius: 1rem;
            border: 1px solid rgba(255, 105, 12, 0.5);
            text-decoration: none;
            font-size: 1em;
            -webkit-box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
            -webkit-border-radius: 1rem;
            -moz-border-radius: 1rem;
            -ms-border-radius: 1rem;
            -o-border-radius: 1rem;
        }
    </style>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="upload">
        <div class="container">
            <div class="upload-grids" id="box">
                <div class="upload-right">
                    <div class="upload-file">
                        <div class="services-icon">
                            <span class="glyphicon glyphicon-open" aria-hidden="true"></span>
                        </div>
                        <input type="file" value="Choose file..">
                    </div>
                    <div class="upload-info">
                        <h5>Drag and drop files</h5>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <center>
        <input id="upload" type="button" value="Upload Selected Files" />
    </center>

    <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="modernizr-2.5.3.js"></script>
    <script type="text/javascript">

        var selectedFiles;
        $(document).ready(function () {
            if (!Modernizr.draganddrop) {
                alert("This browser doesn't support File API and Drag & Drop features of HTML5!");
                return;
            }

            var box;
            box = document.getElementById("box");
            box.addEventListener("dragenter", OnDragEnter, false);
            box.addEventListener("dragover", OnDragOver, false);
            box.addEventListener("drop", OnDrop, false);

            $("#upload").click(function () {
                var data = new FormData();
                for (var i = 0; i < selectedFiles.length; i++) {
                    data.append(selectedFiles[i].name, selectedFiles[i]);
                }
                $.ajax({
                    type: "POST",
                    url: "FileHandler.ashx",
                    contentType: false,
                    processData: false,
                    data: data,
                    success: function (result) {
                        alert(result);
                    },
                    error: function () {
                        alert("There was error uploading files!");
                    }
                });
            });

        });

        function OnDragEnter(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function OnDragOver(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function OnDrop(e) {
            e.stopPropagation();
            e.preventDefault();
            selectedFiles = e.dataTransfer.files;
            $("#box").text(selectedFiles.length + " file(s) selected for uploading!");
        }
    </script>
</asp:Content>
