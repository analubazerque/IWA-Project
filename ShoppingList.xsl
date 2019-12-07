<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
    <head>
    <script src="js/ShoppingListCode.js"></script>
    <script>    
    window.addEventListener("load", function() {
        document.querySelector("#calcBill").addEventListener("click",function(){
            console.log('here');
            document.forms[0].txtBillAmt.value = calculateBill('listTable');
            <!-- document.querySelector("#resultbill").value = calculateBill('listTable'); -->
        });
    });
    <!-- window.addEventListener("load", function() {
            document.forms[0].txtBillAmt.value = calculateBill('listTable');
            console.log("HERE");
            document.querySelector("#calcBill").addEventListener("click", function() {
                document.forms[0].txtBillAmt.value = calculateBill('listTable');
            });
            }); -->
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
    <form>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">€</span>
                </div>
    <input type="text" class="form-control" name="txtBillAmt" aria-label=""Total>
    <input class="btn btn-block btn-secondary" type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill">
            </div>
            
    </form>
    <!-- <input type="button" class="btn btn-block btn-secondary" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
			Total: €
    <input type="text" class="form-control" name="txtBillAmt" id="resultbill" /> -->
    
    </p>
    </form>
    </body>
    </html>
    </xsl:template>
    </xsl:stylesheet>