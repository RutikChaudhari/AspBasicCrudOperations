# AspBasicCrudOperations
Overview : 
          Basic Crud operations using Bootstrap, Ajax, Jquery in ASP.Net Core (c#). User can Insert, Update, Delete and View the data.
          
# About ASP. Net :
  ASP.NET is an open-source, server-side web-application framework designed for web development to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic web sites, applications and services.

# Objectives :
  
  1. Create a form to store customer details and perform CRUD operations on the same. 
  2. Form must have following fields with proper validations : Name , DOB (calendar control), Email, Phone, City. 
     E.g. for validations :  
          ·       All fields will be required 
          ·       Mobile Number validations 
          ·       Age should not be less than 18years (to be calculated using DOB) 
          ·       Email Address validation. 
  3. Database to store information.
  4. Perform crud operations.

# Learnings : 
  
  1. Create web application in Asp.Net Core using Visual stuio 2019 Community version.
  2. Using Toolbox and predefined form validation controls.
  3. Database management using Sql server management and sql server express 2019.
  4. Inserting data using AJAX (without refreshing page).
  5. Javascript validations for input fields.
  6. GridView to fetch, update and delete data from provided datasource.

# Applications Used : 
  
  1. Microsoft Visual Studion 2019 Community Version.
  2. Microsoft Sql Server Express 2019
  3. Microsoft SQL server management studion 2018.

# Application Flow (Basic) :
  
  1. Main page : index.aspx -> Once user enters the values in required fields -> Click on submit button -> redirects to js/allfunctions.js for validation -> 
  2. If no invalid entries then -> calls ajax function (js/allfunction.js) -> sends data through ajax to insert.aspx.cs -> data received -> connection to db
  3. connection success -> Query executes -> returns success message (js/allfunction.js)
  4. index.aspx -> click on members information -> redirects to crud.aspx -> view, update and delete data using gridview 

# Application Screenshots :
  
   1. Main page (index.aspx) : 
   
      ![image](https://user-images.githubusercontent.com/16133846/149504358-42324972-715d-4795-8f34-bb6f88f9a3fd.png)
      
   
   2. Validations (All fields are mandatory, Age shoulb be 18+, basic Email Id and phone number validation - All this validations are client side validations using Javascript) : 

      ![image](https://user-images.githubusercontent.com/16133846/149504508-10dd8ed3-55c3-4c69-a637-a0ee0fe438de.png)
      
      ![image](https://user-images.githubusercontent.com/16133846/149505628-07e34461-6a99-478e-9792-e8a161ae8294.png)
      
      ![image](https://user-images.githubusercontent.com/16133846/149505813-ed76313e-f9d1-4856-93a4-1bdf083d7e67.png)
      
      ![image](https://user-images.githubusercontent.com/16133846/149506153-81dd346e-5d7d-4699-8365-a13bde5e562e.png)

   3. Insert, View, Update and Delete data (crud.aspx - used gridview) : 

      ![image](https://user-images.githubusercontent.com/16133846/149506362-bb3b9c27-37c3-47d6-9848-61eb7de6d6ab.png)
      
      Click on Members information for view, update and delete (Redirects to crud.aspx)
      
      ![image](https://user-images.githubusercontent.com/16133846/149506728-f36faa10-040c-4a4a-b14b-a54e9229dd53.png)
      
      Updated name of row 1 :
      
      ![image](https://user-images.githubusercontent.com/16133846/149506883-ba4fa25a-fb52-4d08-9ba6-54922e31baae.png)
      
      Deleted second record : 
      
      ![image](https://user-images.githubusercontent.com/16133846/149506964-132e3f1b-d853-4b8f-9b74-09d8d5283638.png)
    
   4. Database - Table definations and data : 

      ![image](https://user-images.githubusercontent.com/16133846/149507581-a4ec244f-7287-46d3-8b64-16ccc694ce1a.png)

      ![image](https://user-images.githubusercontent.com/16133846/149507727-12eb89d2-f450-4e41-b835-6852af7b7453.png)


Thank you.

# Author

<a href="https://github.com/RutikChaudhari">RutikChaudhari</a>

