<?xml version="1.0" encoding="UTF-8" standalone="no" ?>

<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

    
    <xsl:template match="/">

        <html lang="en">

            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"></meta>

                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></link>
                <link rel="stylesheet" href="style.css"></link>
                <link rel="stylesheet" href="pettable.js"></link>


                <title>Pet Shop Dublin

    </title>
            </head>
            <body>
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                    <button class="navbar-toggler" type="button" data-target="#navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a href="index.html" class="nav-link"> Home </a>
                            </li>
                            <li class="nav-item">
                                <a href="pettable.html" class="nav-link"> Pet Table </a>
                            </li>
                        </ul>
                    </div>
                </nav>


                <link rel="stylesheet" href="https://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></link>
                <script type="text/javascript" src="https://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
                <div class="container">
                    <div class="row header" style="text-align:center;color:green">
                        <h3>Pet Information</h3>
                    </div>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <th>
                            <tr>
                                <th>Pet Name</th>
                                <th>Animal Type</th>
                                <th>Owner Name</th>
                                <th>Owner Phone</th>

                            </tr>
                        </th>
                        <tbody>

                            <xsl:for-each select="/petShopServices/section/entree">
                                <tr>
                                    <td>
                                        <xsl:value-of select="petName" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="animalType" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="ownerName" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="ownerPhone" />
                                    </td>
                                </tr>
                            </xsl:for-each>


                        </tbody>
                    </table>
                </div>


                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:transform>