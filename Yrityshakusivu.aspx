<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yrityshakusivu.aspx.cs" Inherits="Yritys10.Yrityshakusivu" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <meta charset="utf-8"/>
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
    <title>RG Homepage</title>

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


                            
                            <!--multicheck dropdown boxit alkaa-->
                            <li>
                              <form action="#">
                                    <%
                                        String[] municipalities = { "Akaa","Alajärvi","Alavieska","Alavus","Asikkala","Askola","Aura","Brändö","Eckerö","Enonkoski","Enontekiö","Espoo","Eura","Eurajoki","Evijärvi","Finström","Forssa","Föglö","Geta","Haapajärvi","Haapavesi","Hailuoto","Halsua","Hamina","Hammarland","Hankasalmi","Hanko","Harjavalta","Hartola","Hattula","Hausjärvi","Heinola","Heinävesi","Helsinki","Hirvensalmi","Hollola","Honkajoki","Huittinen","Humppila","Hyrynsalmi","Hyvinkää","Hämeenkyrö","Hämeenlinna","Ii","Iisalmi","Iitti","Ikaalinen","Ilmajoki","Ilomantsi","Imatra","Inari","Inkoo","Isojoki","Isokyrö","Janakkala","Joensuu","Jokioinen","Jomala","Joroinen","Joutsa","Juuka","Juupajoki","Juva","Jyväskylä","Jämijärvi","Jämsä","Järvenpää","Kaarina","Kaavi","Kajaani","Kalajoki","Kangasala","Kangasniemi","Kankaanpää","Kannonkoski","Kannus","Karijoki","Karkkila","Karstula","Karvia","Kaskinen","Kauhajoki","Kauhava","Kauniainen","Kaustinen","Keitele","Kemi","Kemijärvi","Keminmaa","Kemiönsaari","Kempele","Kerava","Keuruu","Kihniö","Kinnula","Kirkkonummi","Kitee","Kittilä","Kiuruvesi","Kivijärvi","Kokemäki","Kokkola","Kolari","Konnevesi","Kontiolahti","Korsnäs","Koski Tl","Kotka","Kouvola","Kristiinankaupunki","Kruunupyy","Kuhmo","Kuhmoinen","Kumlinge","Kuopio","Kuortane","Kurikka","Kustavi","Kuusamo","Kyyjärvi","Kärkölä","Kärsämäki","Kökar","Lahti","Laihia","Laitila","Lapinjärvi","Lapinlahti","Lappajärvi","Lappeenranta","Lapua","Laukaa","Lemi","Lemland","Lempäälä","Leppävirta","Lestijärvi","Lieksa","Lieto","Liminka","Liperi","Lohja","Loimaa","Loppi","Loviisa","Luhanka","Lumijoki","Lumparland","Luoto","Luumäki","Maalahti","Maarianhamina - Mariehamn","Marttila","Masku","Merijärvi","Merikarvia","Miehikkälä","Mikkeli","Muhos","Multia","Muonio","Mustasaari","Muurame","Mynämäki","Myrskylä","Mäntsälä","Mänttä-Vilppula","Mäntyharju","Naantali","Nakkila","Nivala","Nokia","Nousiainen","Nurmes","Nurmijärvi","Närpiö","Orimattila","Oripää","Orivesi","Oulainen","Oulu","Outokumpu","Padasjoki","Paimio","Paltamo","Parainen","Parikkala","Parkano","Pedersören kunta","Pelkosenniemi","Pello","Perho","Pertunmaa","Petäjävesi","Pieksämäki","Pielavesi","Pietarsaari","Pihtipudas","Pirkkala","Polvijärvi","Pomarkku","Pori","Pornainen","Porvoo","Posio","Pudasjärvi","Pukkila","Punkalaidun","Puolanka","Puumala","Pyhtää","Pyhäjoki","Pyhäjärvi","Pyhäntä","Pyhäranta","Pälkäne","Pöytyä","Raahe","Raasepori","Raisio","Rantasalmi","Ranua","Rauma","Rautalampi","Rautavaara","Rautjärvi","Reisjärvi","Riihimäki","Ristijärvi","Rovaniemi","Ruokolahti","Ruovesi","Rusko","Rääkkylä","Saarijärvi","Salla","Salo","Saltvik","Sastamala","Sauvo","Savitaipale","Savonlinna","Savukoski","Seinäjoki","Sievi","Siikainen","Siikajoki","Siikalatva","Siilinjärvi","Simo","Sipoo","Siuntio","Sodankylä","Soini","Somero","Sonkajärvi","Sotkamo","Sottunga","Sulkava","Sund","Suomussalmi","Suonenjoki","Sysmä","Säkylä","Taipalsaari","Taivalkoski","Taivassalo","Tammela","Tampere","Tervo","Tervola","Teuva","Tohmajärvi","Toholampi","Toivakka","Tornio","Turku","Tuusniemi","Tuusula","Tyrnävä","Ulvila","Urjala","Utajärvi","Utsjoki","Uurainen","Uusikaarlepyy","Uusikaupunki","Vaala","Vaasa","Valkeakoski","Valtimo","Vantaa","Varkaus","Vehmaa","Vesanto","Vesilahti","Veteli","Vieremä","Vihti","Viitasaari","Vimpeli","Virolahti","Virrat","Vårdö","Vöyri","Ylitornio","Ylivieska","Ylöjärvi","Ypäjä","Ähtäri","Äänekoski" };
                                        %>


                                    <div class="form-group">
                                        <label for="City"><b>Select City</b></label><br>
                                        <select name="City" id="ChosenCity" class="selectpicker" multiple>
                                            <%
                                                for (int i = 0; i < municipalities.Length; i++)
                                                {
                                                    Response.Write("<option value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                                                }
                                                %>
                                           
                                        </select>
                                    </div>
                                </form>

                            </li>
                            <li>

                                <form action="#">

                                    <%
                                        String[] field = {"Beauty","Commerce and food","Construction","Education","Healthcare","Hospitality and tourism","IT","Logistics","Wood and forest" };
                                        %>

                                    <div class="form-group">
                                        <label for="Industry"><b>Select Industries</b></label><br/>
                                        <select name="Industry" id="ChosenIndustry" class="selectpicker" multiple>
                                            <%
                                                for (int a = 0; a < field.Length; a++)
                                                {
                                                    Response.Write("<option value=\"" + field[a] + "\">" + field[a] + "</option>");
                                                }
                                                %>
                                        </select>
                                    </div>
                                </form>

                            </li>
                            <li>

                                <form action="#">
                                      <%
                                        String[] size = {"Small","Medium","Big" };
                                        %>
                                    <div class="form-group">
                                        <label for="Size"><b>Select Company Size</b></label><br/>
                                        <select name="Size" id="ChosenSize" class="selectpicker" multiple>
                                              <%
                                                for (int k = 0; k < size.Length; k++)
                                                {
                                                    Response.Write("<option value=\"" + size[k] + "\">" + size[k] + "</option>");
                                                }
                                                %>
                                        </select>
                                    </div>
                                </form>

                            </li>
                            <!--multicheck dropdownit loppuu-->
                            <!--kalenteriyritys-->
                            <li id="kalenterilista1">

                                <form>
                                    <div class="form-group1">
                                        <label for="Industry"><b>Choose begin date</b></label><br/>
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
                                    <div class="form-group2">
                                        <label for="Industry"><b>Choose end date</b></label><br/>
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
                                    <a class="search-btn" href="Yritys11.aspx">  <!--Search buttonin linkki -->
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




        <!--vasen lista-->
        <div class="row">
            <div class="col-sm-3" id="sidebar1">
                <!--käyttöohje-->
                <h3>Instructions for use</h3>
                <ul>
                  Find registered companies in your area! <br/>
                  <br/>
                  <p>From this page you will find information about newly established companies in your selected area.<br/>
                     You can start searching by first selecting the city you are searching companies from.<br/>
                     Then select the wanted industry of the company.<br/>
                     You can then decide what sizes of companies you want to browse.<br/>
                     In case you want to search for companies established in a specific time window, please enter the dates to the boxes reserved for them.<br/>
                     You will now get a list of companies matching your criteria!<br/>
                     You can also use keywords, such as business-ID, for the searchbar.</p>

                  <p>Once you have selected one company from the list, you will see all the necessary information you need about the company, its size, revenue, stock market, establishment date etc.<br>
                     Let's go!
                     </p><br />


                </ul>
                <!--käyttöhjeen loppu-->
            </div>
            <!--vasen lista loppuu-->
            <!--keskellä oleva alue-->
            <div class="col-sm-9" id="middlebar1">
                <h3>Home</h3>
                <p>
                    Welcome to Registered Companies! From this site you will find all the necessary information you need about the new companies in your selected area!

                    You can filter by the area, registration date, industry, company size and sales.
                </p>
                <img src="images/laptop.jpg" alt="kompuutteri" class="responsive">

            </div>
            <!--keskellä oleva alue loppuu-->
        </div>
        <!--alhaalla oleva palkki alkaa-->
        <div class="row">
            <div class="col-sm-12" id="middlebar2">
                <p>Information for this site is gathered from (#linktotheoriginalsource)</p>

            </div>

        </div>
        <!--alapalkki loppuu-->

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

    <!--kalenteri1-->
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
    <!--kalenteri1 loppu-->
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
