# Stock-Maintenance-System

## Release Notes for the Stock Maintenance System, Version 1.00
<p align="center"><em>&copy Copyright 2017, SSNCE.  All rights reserved.</em></p>

This document contains release notes for the Stock Maintenance System, version 1.00. The information in this document is more up-to-date than that in the manuals.

## Table of Contents
* Part 1: Software Description
* Part 2: System Requirements
* Part 3: Installing the software
* Part 4: Working with the software
	     
### Part 1: Software Description
Stock maintenance is an interface between the customer and the sales person. It aims at improving the efficiency in maintaining the stocks.
The entire process of Stock maintenance is done in a manual manner currently. Considering the fact that the number of customers for purchase is increasing every year, a maintenance system is essential to meet the demand. So this system uses several programming and database techniques to elucidate the work involved in this process.

### Part 2: Stock Maintenance System 1.00 Requirements
The following are system requirements for Stock Maintenance System 1.00:
* Personal computer using a Pentium 4 or higher processor running Windows XP or higher.
* 1 GB of available memory.
* Hard disk with 20 – 50 GB available space.
* Oracle 10g installed

### Part 3: Installing the software
#### Installation Steps
The software is provided as is and does not require any installers to be run to use the Stock Maintenance System in your PC. If you want to re-make the executable, then you need to have Visual Basic installed.

#### Running the Software
Double click the Stock Maintenance System.exe file to run the software.

#### Steps To Perform Before Running the Software
The software requires Oracle 10g to store and access the inventory details in a server. The Oracle 10g software is not provided as a part of this installation and must be installed separately, and the initial configuration done before running the Stock Maintenance System software.

##### Installing Oracle 10g
1. Download the Oracle 10g installer from the Oracle website. Purchase licenses.
2. Run the setup.bat file. 
3. Proceed to create a global database named “oracle”. This will be the host string.
4. Use “tiger” as the password for SYS, SYS DBA, and SYS AS DBA administrator accounts when prompted.
5. Follow the on screen instructions to complete the installation.

##### Initial Configuration of Oracle 10g
Once the Oracle 10g software is successfully installed, the following steps must be performed to enable the Stock Maintenance System software to use the database.
1. Login as database administrator into the Oracle 10g software.
2. Create a new user “nitheesh” with password “tiger”.
3. Grant all privileges to the newly created user “nitheesh”.
4. Exit from the software.

The SQL queries to perform the above steps are:
```
CREATE USER nitheesh IDENTIFIED BY tiger;
GRANT ALL PRIVILEGES TO nitheesh;
EXIT
```
Now, once again login to the Oracle 10g software, but this time using the newly created user credentials.
1. Create a new relation “product” as below: 
`CREATE TABLE product(productID number, productName varchar2(15), quantity number, MFD date, price float);`
This relation will hold the details of all products in the inventory.

2. Create a new relation “manager” as below:
`CREATE TABLE manager(username varchar2(8), password varchar2(8));`
This relation will hold the details of all managers who are allowed to use the Stock Maintenance System. 
In order to allow someone access to the software, INSERT their user credentials into this table, as follows: 
`INSERT INTO manager VALUES (‘username’,’password’);`
Only user credentials whose fields match the record present in this table can login to the software from the Login Screen.

### Part 4: Working with the software
The Stock Maintenance System will perform the proposed functions using the dedicated forms. To perform any function, the user will have to navigate to the particular function’s form, use the user interface to interact and specify the demands. Finally, by submitting their demands using the various command buttons, the different functionalities are executed.

The following is a detailed explanation of the contents of all forms and their functionalities.

#### Login Form

This form will enable the authorized user to login to the software and access its various functionalities. The user has to enter the correct username and password in the textboxes provided in order to login. Successful entry will load the main form (shown below).

<p align="center"><img src="http://i66.tinypic.com/2i7qpec.png"/></p>

Invalid entries will invoke an error until the correct credentials are entered.

<p align="center"><img src="http://i65.tinypic.com/ie1des.png"/></p>

#### Main Form

<p align="center"><img src="http://i66.tinypic.com/33oo8xc.png"/></p>

This is the main user interface screen. The user will use this screen to navigate to the required functionalities and perform the various tasks. The buttons when clicked lead to the corresponding forms:

* Update button - Update Form
* Display button - Display Form
* Search button - Search Form
* Purchase Stock button - Purchase Stock Form
* Exit button - Closes the application

#### Update Form
This form can be reached by clicking the Update button in the Main Form. From here, the user can either choose to add a new product or edit/delete a product.

<p align="center"><img src="http://i66.tinypic.com/2lbgopj.png"/></p>

#### Add New Form
This is form is used to add a new product to the inventory. The user must enter details in all the fields before proceeding to press the OK Button. Once all the details are entered, the user may press the OK button to add the new product into the inventory.

* Product ID – the ID used to refer the product.
* Product Name – the name of the product.
* Quantity – the quantity of the product available in the inventory.
* MFD – the manufacturing date of the product.
* Price – the price of one unit of the product.

<p align="center"><img src="http://i66.tinypic.com/2ih7708.png"/></p>

Successfully adding a new product into the inventory looks like this:

<p align="center"><img src="http://i66.tinypic.com/24g95r6.png"/></p>

#### Edit or Delete Product Form
This form is used to update existing product details, or to remove a product from the inventory.

<p align="center"><img src="http://i63.tinypic.com/x1aa1j.png"/></p>

To edit/delete a product, it must first exist in the inventory. If the user searches for a product that is currently not present in the inventory, an error message is displayed.

<p align="center"><img src="http://i65.tinypic.com/286slcz.png"/></p>

To edit/delete a product, the user will search for said product using any of the given product attributes and press the Search button. The system will return products that match the selection criteria. The list of results can be navigated through by using the arrow keys provided.

<p align="center"><img src="http://i68.tinypic.com/2rfxy05.png"/></p>

Once the required product has been selected, the user may make the necessary changes and click the Save button. An alert confirming successful update will be displayed.

<p align="center"><img src="http://i68.tinypic.com/2vl0d46.png"/></p>

In order to delete the selected product, the user must click the Delete button.

<p align="center"><img src="http://i68.tinypic.com/zwdu9u.png"/></p>

#### Display Form
Displays the entire inventory. Navigation done using the arrows provided. Alert box is displayed when end of inventory is reached.

<p align="center"><img src="http://i65.tinypic.com/kai4gn.png"/></p>

#### Search Form
This form is used to search for a particular product’s details. The user may search based on any of the given product attributes, and may enter partial details about the attributes too (for example, if the user does not remember the exact product name).

<p align="center"><img src="http://i63.tinypic.com/2u6fhcj.png"/><br><em>Searching for a product whose name resembles “App”</em></p>

Results of the above search query:

<p align="center"><img src="http://i63.tinypic.com/nt44w.png"/></p>

If the search query does not match any existing product details, an error is displayed.

<p align="center"><img src="http://i64.tinypic.com/2nupoyf.png"/></p>

#### Purchase Stock Form
The Stock Maintenance System allows an automatic product order placement feature for the products that do not have sufficient stock. Upon installation, the user can decide on the threshold value based on which this function works.

Once the stock quantity goes below a certain value, the system will select such products and automatically place an order for the required amount of stock so as to meet the threshold specified.

The selection of the products that need order placement will be done when the user clicks the Purchase Stock button.
Two cases may ensue: 
* All products have sufficient stock
* There are some products that need replenishing.

If all products have sufficient stock, the following message is displayed:

<p align="center"><img src="http://i63.tinypic.com/30lf7mb.png"/></p>

When there are some products that need more stock, they are displayed. The list can be traversed using the arrows.

<p align="center"><img src="http://i68.tinypic.com/1zx01fs.png"/></p>

The system automatically decides a default quantity of stock to be ordered to maintain the stock quantity above the threshold level. The user may also enter a specify amount to order, but it must be greater than the default quantity decided by the system.

<p align="center"><img src="http://i66.tinypic.com/2uzbg9u.png"/></p>

Once the user has decided on the quantity, they may press the Place Order button to place an order of said quantity for the product. The stock details will be updated automatically.

<p align="center"><img src="http://i63.tinypic.com/2aifp6x.png"/></p>
