<%@ Page Title="" Language="C#" MasterPageFile="~/RTMaster.master" AutoEventWireup="true"
    CodeFile="IndexChild.aspx.cs" Inherits="IndexChild" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link rel='stylesheet' id='camera-css'  href='css/camera.css' type='text/css' media='all'> 
    <style>
		body {
			margin: 0;
			padding: 0;
		}
			color: #09f;
		}
		a:hover {
			text-decoration: none;
		}
		#back_to_camera {
			clear: both;
			display: block;
			height: 80px;
			line-height: 40px;
			padding: 20px;
		}
		.fluid_container {
			margin: 0 auto;
			max-width: 1000px;
			width: 90%;
		}
	</style>
    <script type='text/javascript' src='scripts/jquery.min.js'></script>
    <script type='text/javascript' src='scripts/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='scripts/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='scripts/camera.min.js'></script> 
     <script>
         jQuery(function () {

             jQuery('#camera_wrap_1').camera({
                 thumbnails: true
             });

             jQuery('#camera_wrap_2').camera({
                 height: '400px',
                 loader: 'bar',
                 pagination: false,
                 thumbnails: true
             });
         });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="RT_middle_wrapper">
        <div id="RT_middle">
      
            <h1>
                Recruitment and Training
            </h1>
            <p>
                Recruitment and Training is the process of giving proper Training to Hired Employees
                for certain departments by motivating them to apply their best abilities to those
                works which are available in organization for them.</p>
        </div>
    </div>
    <!-- end of middle_wrapper -->
    <div id="RT_main">
     
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-thumb="images/slides/1jpg" data-src="images/slides/1.jpg">
              </div>
              <div data-thumb="images/slides/2jpg" data-src="images/slides/2.jpg">
              </div>
              <div data-thumb="images/slides/3jpg" data-src="images/slides/3.jpg">
              </div>
              <div data-thumb="images/slides/4jpg" data-src="images/slides/4.jpg">
              </div>
          
        </div><!-- #camera_wrap_1 -->
        <div class="content_box">
            <div class="col_w220">
                <h3>
                    Recruitment</h3>
                <img class="image_wrapper" src="images/RT_image_01.jpg" alt="Image 1" />
                <p>
                    Recruitment refers to the process of attracting,screening, selecting, and onboarding
                    a qualified person for a job.</p>
                <div class="cleaner h20">
                </div>
            </div>
            <div class="col_w220">
                <h3>
                    Employess</h3>
                <img class="image_wrapper" src="images/RT_image_02.jpg" alt="Image 2" />
                <p>
                    Is your business looking to build a young, fresh and energetic team that can be
                    moulded to suit your organisation? Speak to our team to find out about the staff
                    waiting to contribute to your business growth now.</p>
                <div class="cleaner h20">
                </div>
            </div>
            <div class="col_w220">
                <h3>
                    Training</h3>
                <img class="image_wrapper" src="images/RT_image_04.jpg" alt="Image 3" />
                <p>
                    Traineeships help young people get their career off to a great start by providing
                    work skills, training, work experience opportunities and access to apprenticeships.
                    The new, work-based alternative to school after 16.</p>
                <div class="cleaner h60">
                </div>
            </div>
            <div class="col_w220 last_col">
                <h3>
                    Reports</h3>
                <img class="image_wrapper" src="images/RT_image_03.jpg" alt="Image 4" />
                <ul class="tmo_list">
                    <li>Pellentesque vestibulum</li>
                    <li>Sed ac mauris eget massa</li>
                    <li>Etiam nec massa vulputate</li>
                    <li>Proin non odio in justo</li>
                    <li>Vivamus imperdiet tortor</li>
                    <li>Suspendisse vitae dui nunc</li>
                </ul>
                <div class="cleaner h20">
                </div>
            </div>
            <div class="cleaner">
            </div>
        </div>
    
        <div class="cleaner">
        </div>
    </div>
</asp:Content>
