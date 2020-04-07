<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yritys11.aspx.cs" Inherits="Yritys10.Yritys11" %>

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
    <title>List of searched companies</title>

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
                    <a class="navbar-brand" href ="Yrityshakusivu.aspx" >Home</a> <!-- home buttoni -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        

                             <!--multicheck dropdown boxit alkaa-->
                             <form id="form1" runat="server" method="post" action="Yritys11.aspx">
                                         <%
                                             String[] municipalities = { "Akaa","Alajärvi","Alavieska","Alavus","Asikkala","Askola","Aura","Brändö","Eckerö","Enonkoski","Enontekiö","Espoo","Eura","Eurajoki","Evijärvi","Finström","Forssa","Föglö","Geta","Haapajärvi","Haapavesi","Hailuoto","Halsua","Hamina","Hammarland","Hankasalmi","Hanko","Harjavalta","Hartola","Hattula","Hausjärvi","Heinola","Heinävesi","Helsinki","Hirvensalmi","Hollola","Honkajoki","Huittinen","Humppila","Hyrynsalmi","Hyvinkää","Hämeenkyrö","Hämeenlinna","Ii","Iisalmi","Iitti","Ikaalinen","Ilmajoki","Ilomantsi","Imatra","Inari","Inkoo","Isojoki","Isokyrö","Janakkala","Joensuu","Jokioinen","Jomala","Joroinen","Joutsa","Juuka","Juupajoki","Juva","Jyväskylä","Jämijärvi","Jämsä","Järvenpää","Kaarina","Kaavi","Kajaani","Kalajoki","Kangasala","Kangasniemi","Kankaanpää","Kannonkoski","Kannus","Karijoki","Karkkila","Karstula","Karvia","Kaskinen","Kauhajoki","Kauhava","Kauniainen","Kaustinen","Keitele","Kemi","Kemijärvi","Keminmaa","Kemiönsaari","Kempele","Kerava","Keuruu","Kihniö","Kinnula","Kirkkonummi","Kitee","Kittilä","Kiuruvesi","Kivijärvi","Kokemäki","Kokkola","Kolari","Konnevesi","Kontiolahti","Korsnäs","Koski Tl","Kotka","Kouvola","Kristiinankaupunki","Kruunupyy","Kuhmo","Kuhmoinen","Kumlinge","Kuopio","Kuortane","Kurikka","Kustavi","Kuusamo","Kyyjärvi","Kärkölä","Kärsämäki","Kökar","Lahti","Laihia","Laitila","Lapinjärvi","Lapinlahti","Lappajärvi","Lappeenranta","Lapua","Laukaa","Lemi","Lemland","Lempäälä","Leppävirta","Lestijärvi","Lieksa","Lieto","Liminka","Liperi","Lohja","Loimaa","Loppi","Loviisa","Luhanka","Lumijoki","Lumparland","Luoto","Luumäki","Maalahti","Maarianhamina - Mariehamn","Marttila","Masku","Merijärvi","Merikarvia","Miehikkälä","Mikkeli","Muhos","Multia","Muonio","Mustasaari","Muurame","Mynämäki","Myrskylä","Mäntsälä","Mänttä-Vilppula","Mäntyharju","Naantali","Nakkila","Nivala","Nokia","Nousiainen","Nurmes","Nurmijärvi","Närpiö","Orimattila","Oripää","Orivesi","Oulainen","Oulu","Outokumpu","Padasjoki","Paimio","Paltamo","Parainen","Parikkala","Parkano","Pedersören kunta","Pelkosenniemi","Pello","Perho","Pertunmaa","Petäjävesi","Pieksämäki","Pielavesi","Pietarsaari","Pihtipudas","Pirkkala","Polvijärvi","Pomarkku","Pori","Pornainen","Porvoo","Posio","Pudasjärvi","Pukkila","Punkalaidun","Puolanka","Puumala","Pyhtää","Pyhäjoki","Pyhäjärvi","Pyhäntä","Pyhäranta","Pälkäne","Pöytyä","Raahe","Raasepori","Raisio","Rantasalmi","Ranua","Rauma","Rautalampi","Rautavaara","Rautjärvi","Reisjärvi","Riihimäki","Ristijärvi","Rovaniemi","Ruokolahti","Ruovesi","Rusko","Rääkkylä","Saarijärvi","Salla","Salo","Saltvik","Sastamala","Sauvo","Savitaipale","Savonlinna","Savukoski","Seinäjoki","Sievi","Siikainen","Siikajoki","Siikalatva","Siilinjärvi","Simo","Sipoo","Siuntio","Sodankylä","Soini","Somero","Sonkajärvi","Sotkamo","Sottunga","Sulkava","Sund","Suomussalmi","Suonenjoki","Sysmä","Säkylä","Taipalsaari","Taivalkoski","Taivassalo","Tammela","Tampere","Tervo","Tervola","Teuva","Tohmajärvi","Toholampi","Toivakka","Tornio","Turku","Tuusniemi","Tuusula","Tyrnävä","Ulvila","Urjala","Utajärvi","Utsjoki","Uurainen","Uusikaarlepyy","Uusikaupunki","Vaala","Vaasa","Valkeakoski","Valtimo","Vantaa","Varkaus","Vehmaa","Vesanto","Vesilahti","Veteli","Vieremä","Vihti","Viitasaari","Vimpeli","Virolahti","Virrat","Vårdö","Vöyri","Ylitornio","Ylivieska","Ylöjärvi","Ypäjä","Ähtäri","Äänekoski" };
                                             String selected = "";
                                             if (Request.Form.Count > 0)
                                                 selected = Request.Form["Select1"];
                                             %>


                                         <div>
                                             <label for="City"><b>Select City</b></label>
                                            <select id="Select1" name="Select1">
                                              <%
                                                for (int i = 0; i < municipalities.Length; i++)
                                                {
                                                      if(selected != "" && selected == municipalities[i])
                                                    Response.Write("<option selected = \"selected\" value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                                                      else
                                                    Response.Write("<option value=\"" + municipalities[i] + "\">" + municipalities[i] + "</option>");
                                                }
                                                %>
                                        </select>
                                             <label for="startDate"><b>Select start date</b></label>
                                        <input id="Kalenteri1" name="Kalenteri1" value="<%=Convert.ToString(Request.Form["Kalenteri1"]) %>" type="text" placeholder="dd/mm/yyyy"/>
                                             <label for="endDate"><b>Select end date</b></label>
                                        <input id="Kalenteri2" name="Kalenteri2" value="<%=Convert.ToString(Request.Form["Kalenteri2"]) %>" type="text" placeholder="dd/mm/yyyy"/>
                                             <input id="submitButton" type="submit" value="Get companies" />
                                        </div>
                                         </form>
                                        

                         
                        
                           
                        


                        
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
                <h3>List of companies</h3>
                <p>
                Paikkakunnalla <%=Request.Form["Select1"] %> aikavälillä <%=Request.Form["Kalenteri1"] %> - <%=Request.Form["Kalenteri2"] %> rekisteröidyt yritykset ovat
                </p>
                <a href ="Yritys11.aspx"> Olvi </a> Register date 20.4.2420<br /> <!-- Linkkejä yritysten sivuille -->
                 <a href ="Yritys11.aspx"> Finnair </a>Register date 06.09.1994<br />
                 <a href ="Yritys11.aspx"> Nokia </a>Register date 7.4.2020<br />


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
                    This is our best try! This needs to stick in the bottom of the page all the time<br/>
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



</body>
</html>
