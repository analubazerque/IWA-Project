<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
    <head>
    <script src="js/ShoppingListCode.js"></script>
    <script>
    
        window.addEventListener("load", function() {
            //console.log(document.forms[0].value);
            //document.forms[0].txtBillAmt.value = calculateBill('listTable');
            
            //document.querySelector("#calcBill").addEventListener("click", function() {
            //    document.forms[0].txtBillAmt.value = calculateBill('listTable');
            //    alert('OI');
            //});

            document.querySelector("#calcBill").addEventListener("click",function(){
                console.log('here');
                document.querySelector("#resultbill").value = calculateBill('listTable');
            });
        });
    </script>    
    </head>
    <body>

            <h2><img src="./img/cart.jpg" alt="Shopping cart" width="90" height="100" />Start Listing</h2>

                <table id="listTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Shopping List</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/shoppinglist/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                <tr>                            
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
            <form class="indent">
    <p>
    <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
			Total: €
    <input type="text" name="txtBillAmt" id="resultbill" />
    
    </p>
    </form>
    </body>
    </html>
    </xsl:template>
    </xsl:stylesheet>