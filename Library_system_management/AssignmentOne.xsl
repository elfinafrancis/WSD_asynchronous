<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
            <head>
                <style>
            div
            {
                text-align:center;
                border:2px  black;
                width:40%;
            }
            
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center;
            }
                </style>
            </head>
            
            <body>
                <h1 style="text-align:center;">Library Management System</h1>
                <div class='Books' style="float:left;">
                    <h2>List of Books</h2>
                    <table border="2" align="center">
                        <tr bgcolor="#9acd32">
                            <th style="text-align:left">Title</th>
                            <th style="text-align:left">Author</th>
                            <th style="text-align:left">Edition</th>
                            <th style="text-align:left">ISBN</th>
                            <th style="text-align:left">Price</th>
                        </tr>
                        <xsl:for-each select="Library/Book">
                            <tr>
                                <td>
                                    <xsl:value-of select="Title"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Author"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Edition"/>
                                </td>
                                <td>
                                    <xsl:value-of select="ISBN"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Price"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>


                <div class='Students'  style="float:right;">
                    <h2>List of Students</h2>
                    <table border="2"  align="center">
                        <tr bgcolor="#9acd32">
                            <th style="text-align:left">Name</th>
							<th style="text-align:left">Standard</th>
                            <th style="text-align:left">Department</th>
                        </tr>
                        <xsl:for-each select="Library/Student">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Standard"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Department"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
	</xsl:template>
</xsl:stylesheet>
