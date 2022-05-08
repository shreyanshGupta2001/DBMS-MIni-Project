# DBMS Mini Project: Employee CRUD Web Application
This is our DBMS mini project, it is Employee Management CRUD web application

This project is made on .NET Framework Webforms, and manually written SQL commands on IDE Visual Studio 2017. Here for making the local Server and Database, MS Sql Server Management Studio 2018 was used.

In .NET Framework for web development, the ASP.NET Webforms can be used. Webforms have 2 parts: 
1) .aspx file where Front-end is written.
2) .cs file where the back-end is written in C# language.

# Screenshots

# CREATE
1- Creating a record

![](Screenshots/1%20Create/CreateOp.png)

2- After Clicking Submit Button

![](Screenshots/1%20Create/CreateOp2.png)

3- Record has been created in the MS Sql Server Management

![](Screenshots/1%20Create/CreateOp3.png)

# READ
1- Clicking the Display Button on WebForm1.aspx

![](Screenshots/2%20Read/ReadOp.png)

2- Records present in the database are visible on DisplayEmpDetails.aspx

![](Screenshots/2%20Read/ReadOp2.png)

# UPDATE
1- We can updates the records by clicking on Edit link present on DisplayEmpDetails.aspx, here it redirects to EditEmpDetails.aspx after taking the ID of the record we have clicked on

![](Screenshots/3%20Update/UpdateOp.png)

2- We can update on the attributes related to that record here, for example I have updated the Salary here from 40000 to 80000

![](Screenshots/3%20Update/UpdateOp2.png)

3- After clicking Update button, we can clearly see that the change has reflected back in the database

![](Screenshots/3%20Update/UpdateOp3.png)

4- On clicking Display on WebForm1.aspx

![](Screenshots/2%20Read/ReadOp2.png)

# DELETE
1- Any record can be deleted, after clicking on Edit link on DisplayEmpDetails.aspx

![](Screenshots/4%20Delete/DeleteOp.png)

2- I clicked on the Edit link of 3rd record, EditEmpDetails.aspx opens, here we can clearly see the Delete button, after clicking on it, the record will get deleted

![](Screenshots/4%20Delete/DeleteOp2.png)

3- Now, after we go and click on Display, the 3rd record is not visible and has got deleted

![](Screenshots/4%20Delete/DeleteOp3.png)

# SEARCH
1- I also made one Search record button, which searches any record on the basis of ID given, for example I give ID as 2 here

![](Screenshots/5%20Search/SearchOp.png)

2- Details of record on ID = 2 is displayed

![](Screenshots/5%20Search/SearchOp2.png)
