<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yritys12.aspx.cs" Inherits="Yritys10.Yritys12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css"/>
    <!--search image-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"/>
    <!--search image loppu-->
    <!--kalenterin juttui-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrapcss"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker3.css" rel="stylesheet" id="bootstrapcss1"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--kalenterin jutut loppuu-->

    <script src="css/bootstrap.js"></script>
    <title>X company</title>

</head>
<body>


    <div class="jumbotron jumbotron-fluid" id="otsikko">
        <div class="container-fluid">
            <h1>Registered Companies</h1>
            <h3>Janika Kemppainen, Kim Poutanen, Teemu Erniö, Ljubomir Matviiv, Kien Ngyuen</h3>
        </div>
    </div>



    <div class="container-fluid">
        <div class="row">
            <div class="col" style="padding: 0;">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="Yrityshakusivu.aspx">Home</a> <!-- home buttoni -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">

                            <li>
                            <!--multicheck dropdown boxit alkaa-->
                            <form action="#">
                                <div class="form-group">
                                    <label for="City"><b>Select City</b></label><br>
                                    <select name="City" id="ChosenCity" class="selectpicker" multiple>
                                        <option value="Lahti">Lahti</option>
                                        <option value="Helsinki">Helsinki</option>
                                        <option value="Hämeenlinna">Hämeenlinna</option>
                                        <option value="Turku">Turku</option>
                                        <option value="Tampere">Tampere</option>
                                        <option value="Vantaa">Vantaa</option>
                                        <option value="Espoo">Espoo</option>
                                        <option value="Oulu">Oulu</option>
                                    </select>
                                </div>
                            </form>

                            </li>
                            <li>

                                <form action="#">
                                    <div class="form-group">
                                        <label for="Industry"><b>Select Industries</b></label><br/>
                                        <select name="Industry" id="ChosenIndustry" class="selectpicker" multiple>
                                            <option value="">Beauty</option>
                                            <option value="">Commerce and food</option>
                                            <option value="">Construction</option>
                                            <option value="tietotekniikka">Education</option>
                                            <option value="healthcare">Healthcare</option>
                                            <option value="">Hospitality and tourism</option>
                                            <option value="">IT</option>
                                            <option value="">Logistics</option>
                                            <option value="">Education</option>
                                            <option value="">Hospitality and tourism</option>
                                            <option value="">Wood and forest</option>
                                        </select>
                                    </div>
                                </form>

                            </li>
                            <li>

                                <form action="#">
                                    <div class="form-group">
                                        <label for="Size"><b>Select Company Size</b></label><br/>
                                        <select name="Size" id="ChosenSize" class="selectpicker" multiple>
                                            <option value="Pieni">Small</option>
                                            <option value="Keskikokoinen">Medium</option>
                                            <option value="Suuri">Big</option>
                                        </select>
                                    </div>
                                </form>

                            </li>
                            <!--multicheck dropdownit loppuu-->
                            <!--kalenteriyritys-->
                            <li id="kalenterilista1">

                                <form>
                                    <div class="form-group">
                                        <label for="Alkupvm"><b>Choose begin date</b></label><br/>
                                        <div class='input-group date' id='datepicker1'>
                                            <input type='text' class="form-control" placeholder="dd/mm/yyyy" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </form>

                            </li>
                            <li id="kalenterilista2">

                                <form>
                                    <div class="form-group">
                                        <label for="Loppupvm"><b>Choose end date</b></label><br>
                                        <div class='input-group date' id='datepicker2'>
                                            <input type='text' class="form-control" placeholder="dd/mm/yyyy" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                </form>

                            </li>
                            <!--kalenteriyritys loppu-->
                            <!--search boxi-->
                            <li>

                                <div class="search-box">
                                    <input class="search-txt" type="text" name="" placeholder="Type to search">
                                    <a class="search-btn" href="Yritys11.aspx"> <!-- search button -->
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>

                            </li>
                            <!--search box loppuu-->


                        </ul>




                    </div>

                </nav>
            </div>
        </div>





        <div class="row">
            <div class="col-sm-3" id="sidebar1">
                <h3>Basic information</h3>
                <ul>
                    <li><a>Company name</a></li>
                    <ul>
                        <li><a>Olvi</a></li>
                    </ul>
                    <li><a>Register date</a></li>
                    <ul>
                        <li><a>05.09.1856</a></li>
                    </ul>
                    <li><a>Company form</a></li>
                    <ul>
                        <li><a>Public stock company</a></li>
                    </ul>
                    <li><a>Revenue</a></li>
                    <ul>
                        <li><a>1000€</a></li>
                        <ul>
                            <li><a>Business ID</a></li>
                        </ul>
                        <li><a>1122334455</a></li>
                    </ul>
                </ul>

            </div>
            <div class="col-sm-9" id="middlebar1">
                <h3>Company Ltd</h3>
                <p>
                    Here is basic information about the selected company. Its history, present and future, where it was formed, when and by who, what they do and how. You will also see the company’s stock situation.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                </p>


            </div>

        </div>
        <div class="row">
            <div class="col-sm-12" id="middlebar2">
                <p>Information for this site is gathered from (#linktotheoriginalsource)</p>

            </div>

        </div>


        <div class="row">
            <div class="col-sm-12" id="footer">

                <p>
                    This is our best try! This needs to stick in the bottom of the page all the time<br>
                    &copy;
                    Team5
                </p>
                <a href="#otsikko"> Back up </a>
            </div>
        </div>



    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>


    <!--kalenteri-->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(function () {
            $('#datepicker1').datepicker({
                format: "dd/mm/yyyy",
                autoclose: true,
                todayHighlight: true,
                showOtherMonths: true,
                selectOtherMonths: true,
                autoclose: true,
                changeMonth: true,
                changeYear: true,
                orientation: "button"
            });
        });
    </script>
    <!--kalenteri loppu-->
  
    <!--kalenteri2-->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(function () {
            $('#datepicker2').datepicker({
                format: "dd/mm/yyyy",
                autoclose: true,
                todayHighlight: true,
                showOtherMonths: true,
                selectOtherMonths: true,
                autoclose: true,
                changeMonth: true,
                changeYear: true,
                orientation: "button"
            });
        });
    </script>
    <!--kalenteri2 loppuu-->

</body>
</html>
