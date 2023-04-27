<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;900&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Noto Sans' rel='stylesheet'>
    <title>Admin Cms</title>
    <link rel="stylesheet" href="CSS/Admin.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="icon" href="" type="images/x-icon">
    <script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/rowreorder/1.3.2/css/rowReorder.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.4.0/css/responsive.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">

            <!-- sidebar -->
            <div class="col-auto col-md-3 col-lg-3 col-xl-2 sidebar">
                <div class="d-flex flex-column align-items-center align-items-sm-start pt-2 text-white min-vh-100">
                    <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">Menu</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                        id="menu">

                        <li class="nav-item">
                            <a href="http://127.0.0.1:5500/Adminuser.html" class="nav-link align-middle px-0">
                                <i class="bi bi-person-fill"></i><span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">User</span>
                            </a>
                        </li>
                        <li class="nav-item  activepage">
                            <a href="http://127.0.0.1:5500/AdminCMS.html" class="nav-link align-middle px-0">
                                <i class="bi bi-file-earmark-medical-fill" style="color: #F88634;"></i><span
                                    class="ms-2 d-none d-sm-inline sidebarbuttons" style="color: #F88634;">CMS Page</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="http://127.0.0.1:5500/Adminmission.html#" class="nav-link align-middle px-0">
                                <i class="bi bi-bullseye"></i><span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">Mission</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <i class="bi bi-columns-gap"></i> <span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">Mission Theme</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <i class="bi bi-tools"></i><span class="ms-1 d-none d-sm-inline sidebarbuttons">Mission
                                    Skills</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <i class="bi bi-folder-fill"></i><span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">Mission Application</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <i class="bi bi-bookmark-star-fill"></i><span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">Story</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0">
                                <img src="images/folded-ribbon.png" alt=""> <span
                                    class="ms-1 d-none d-sm-inline sidebarbuttons">Banner Management</span>
                            </a>
                        </li>

                    </ul>
                    <hr>
                </div>
            </div>

            <!-- main content -->
            <div class="col py-3">
                <div class="headerbar d-flex justify-content-between">
                    <div class="d-flex align-items-center">Thursday november 3, 2022, 10:06 AM</div>
                    <div class="d-flex justify-content-between align-items-center ">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#"
                                id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <div class="gap-2">
                                    <img src="images/user-img.png" class="userimage ">
                                    <span class="blocking uNameuImage"> Evan Donohue</span>
                                    <img src="images/drop-down.png" class="uNameuImage">
                                </div>
                            </a>
                            <ul class="dropdown-menu posAbsolute dropdown-menu-end"
                                aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </div>
                </div>
                <div class="headerborder"></div>

                <div class="EPbasicInfo addbox">
                    <div class="addtext">
                        <p class="mt-2 ms-3">Edit</p>
                    </div>
                    <div class="ms-3 mt-3 titleOfAddbox">
                        Title
                    </div>
                    <input type="text" name="title" class="ms-3 mt-2 titlebox">

                    <div class="ms-3 mt-3 titleOfAddbox">
                        Description
                    </div>
                    <div id="editor" class="w-100"></div>

                    <div class="ms-3 mt-3 titleOfAddbox">
                        Slug
                    </div>
                    <input type="text" name="slug" class="ms-3 mt-2 titlebox">

                    <div class="ms-3 mt-3 titleOfAddbox">
                        Status
                    </div>
                    <input type="text" name="status" class="ms-3 mt-2 titlebox" style="margin-bottom: 15px;">
                </div>




            </div>
        </div>
    </div>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/rowreorder/1.3.2/js/dataTables.rowReorder.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.0/js/dataTables.responsive.min.js"></script>
    <script>
        $(document).ready(function () {
            var table = $('#example1').DataTable({
                rowReorder: {
                    selector: 'td:nth-child(2)'
                },
                responsive: true
            });
            $('#searchboxing').on('keyup', function () {
                table.search(this.value).draw();
            });
        });
    </script>
    <script>
        ClassicEditor
            .create(document.querySelector('#editor'))
            .then(editor => {
                console.log(editor);
            })
            .catch(error => {
                console.error(error);
            });
    </script>

    <script src="js/EditProfile.js"></script>
</body>

</html>