<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- V5.1.3 i am using here -->
        <!-- CDN for icons -->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>Welcome to NOU e-Gyan Portal</title>
        <meta content name="description">
        <meta content name="keywords">
        <!-- Logo -->
        <link href="assets/img/logo/logo.png" rel="icon">
        <!-- Google fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
              rel="stylesheet">

        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
              rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
              rel="stylesheet">
        <link rel="stylesheet"
              href="https://md-aqil.github.io/images/swiper.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/lity/2.4.1/lity.min.css"
              integrity="sha512-UiVP2uTd2EwFRqPM4IzVXuSFAzw+Vo84jxICHVbOA1VZFUyr4a6giD9O3uvGPFIuB2p3iTnfDVLnkdY7D/SJJQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
              rel="stylesheet" id="bootstrap-css">

        <link href="assets/css/style1.css" rel="stylesheet">
    </head>

    <body>

        <jsp:include page="header.jsp"/>
        <!-- Section 4 and 5 end -->
        <!-- main section start-->
        <div class="row">
            <div class="col-sm-12" style="background-color: pink;min-height: 600px">
                <h2 style="text-align: center;color: blue">Student Registration</h2>
                <form method="post" class="form-group" action="controller.jsp">
                    <input type="hidden" name="page" value="registration"/>
                    <table class="table table-bordered" style="width: 70%;margin: auto">
                        <tr>
                            <td>Enter Roll No</td>
                            <td>
                                <input type="number" name="rollno" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Name</td>
                            <td>
                                <input type="text" name="name" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Father Name</td>
                            <td>
                                <input type="text" name="fname" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Mother Name</td>
                            <td>
                                <input type="text" name="mname" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Select Gender</td>
                            <td>
                                <input type="radio" name="gender" value="male" required/>Male
                                <input type="radio" name="gender" value="female" required/>Female
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Address</td>
                            <td>
                                <textarea name="address" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Select Program</td>
                            <td>
                                <select name="program"class="form-control">
                                    <option selected>-Select Program-</option>
                                    <option value="B.Tech.">B.Tech.</option>
                                    <option value="M.Tech.">M.tech.</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Select Branch</td>
                            <td>
                                <select name="branch"class="form-control">
                                    <option selected>-Select Branch-</option>
                                    <option value="CS">Computer Science</option>
                                    <option value="IT">Information Technology</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Select Year</td>
                            <td>
                                <select name="year"class="form-control">
                                    <option selected>-Select Year-</option>
                                    <option value="First Year">First Year</option>
                                    <option value="Second Year">Second Year</option>
                                    <option value="Third Year">Third Year</option>
                                    <option value="Final Year">Final Year</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Contact No</td>
                            <td>
                                <input type="number" name="contactno" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Email Addrss</td>
                            <td>
                                <input type="email" name="emailaddress" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Password</td>
                            <td>
                                <input type="password" name="password" class="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" class="form-control" required/>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Regsiter</button>
                                
                            </td>
                        </tr>

                    </table>
                </form>
            </div>

        </div>
        <!-- main section end-->

        <jsp:include page="footer.jsp"/>


        <!-- importing aos library -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

        <script src="assets/js/main1.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"
                integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lity/2.4.1/lity.min.js"
                integrity="sha512-UU0D/t+4/SgJpOeBYkY+lG16MaNF8aqmermRIz8dlmQhOlBnw6iQrnt4Ijty513WB3w+q4JO75IX03lDj6qQNA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script>
            var today = new Date();
            document.getElementById("p1").innerHTML = today;
        </script>
        <script src="https://md-aqil.github.io/images/swiper.min.js"></script>
        <script>
            var galleryThumbs = new Swiper('.gallery-thumbs', {
                effect: 'coverflow',
                grabCursor: true,
                centreedSlides: true,
                slidesPerView: '2',
                // coverflowEffect: {
                //   rotate: 50,
                //   stretch: 0,
                //   depth: 100,
                //   modifier: 1,
                //   slideShadows : true,
                // },

                coverflowEffect: {
                    rotate: 0,
                    stretch: 0,
                    depth: 50,
                    modifier: 6,
                    slideShadows: false,
                },
            });


            var galleryTop = new Swiper('.swiper-container.testimonial', {
                speed: 400,
                spaceBetween: 50,
                autoplay: {
                    delay: 3000,
                    disableOnInteraction: false,
                },
                direction: 'vertical',
                pagination: {
                    clickable: true,
                    el: '.swiper-pagination',
                    type: 'bullets',
                },
                thumbs: {
                    swiper: galleryThumbs
                }
            });
        </script>
    </body>

</html>

