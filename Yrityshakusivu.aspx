<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yrityshakusivu.aspx.cs" Inherits="Yritys10.Yrityshakusivu" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css"/>
 

    <script src="css/bootstrap.js"></script>
    <title>Homepage</title>

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




        <!--vasen lista-->
        <div class="row">
            <div class="col-sm-3" id="sidebar1">
                <!--käyttöohje-->
                <h3>Instructions for use</h3>
                <ul>
                  Find registered companies in your area! <br/>
                  <br/>
                  <p>This website is used to find information about registered companies in your selected area. You start doing the search by choosing few parameters for the search. First you will be choosing the area of your choice which will be on city basis on this site. <br />
                      Secondly you can choose a specific time window for the companies. There will be boxes where you write the date in dd/mm/yyyy format for your search. After all this is done you will get companies for your specified parameters. 

                      Next there will be a listing of possible companies that were based on your search parameters.<br />

                      Press on one and it will take you to a page with public information to it. On that page you can find a link to the chosen company website [if they have one] and a link to the stock market. On the page you can also see the net income of the chosen company. </p>

                  


                </ul>
                <!--käyttöhjeen loppu-->
            </div>
            <!--vasen lista loppuu-->
            <!--keskellä oleva alue-->
            <div class="col-sm-9" id="middlebar1">
                <h3>Home</h3>
                <p>
                    Welcome to Registered Companies! From this site you will find all the necessary information you need about the new companies in your selected area!

                    You can filter by the area, registration date, industry, company size and sales. <br />
                    <b>Just kidding no you cant....yet atleast</b>
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
     <!-- en muista mitkä kaikki näistä on turhia joten en ota pois ettei hajoa -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

    
</body>
</html>
