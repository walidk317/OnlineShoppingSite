# Online Shopping Site

Welcome to the Online Shopping Site GitHub repository! 
This project is a full-fledged online shopping site developed using Visual Studio 2022 and SQL Server Management Studio 2019. 
Below, you'll find instructions on setting up the project and incorporating the required dependencies.

## Setup Instructions
### Prerequisites
Make sure you have the following installed:
- [Visual Studio 2022](https://visualstudio.microsoft.com/)
- [SQL Server Management Studio 2019](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- [iTextSharp.dll](https://github.com/itext/itextsharp)

  ### Project Configuration
  1. Clone the repository to your local machine.
   git clone https://github.com/your-username/online-shopping-site.git

## Languages Used

This project is primarily built using the following programming/scripting languages:

[![HTML](https://img.shields.io/badge/HTML-orange)](https://en.wikipedia.org/wiki/HTML)

[![CSS](https://img.shields.io/badge/CSS-blue)](https://en.wikipedia.org/wiki/CSS)

[![JavaScript](https://img.shields.io/badge/JavaScript-yellow)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

[![SQL](https://img.shields.io/badge/SQL-lightgrey)](https://en.wikipedia.org/wiki/SQL)

[![C#](https://img.shields.io/badge/C%23-brightgreen)](https://docs.microsoft.com/en-us/dotnet/csharp/)

[![Bootstrap](https://img.shields.io/badge/Bootstrap-purple)](https://getbootstrap.com/)



## Framework Used
This project is built on the **.NET** framework.

[![Framework](https://img.shields.io/badge/Framework-.NET-blueviolet)](https://dotnet.microsoft.com/)



# Open the project in Visual Studio 2022
1. Locate the `app_data` folder in the project and ensure you have the necessary SQL scripts for database setup. 
2. Open SQL Server Management Studio 2019, connect to your server, and execute the SQL queries from the scripts mentioned in the `app_data` folder.

### Configuration

Before running the project, please ensure you update the data source name in the `web.config` file and the connection string. Follow the steps below:

### 1. Update `web.config`

Open the `web.config` file and locate the `<connectionStrings>` section. Update the `data source` attribute from `YOURSERVERNAME` to your required server name.

```xml
<connectionStrings>
  <add name="RecordDBConnectionString" connectionString="Data Source=YOURSERVERNAME;Initial Catalog=RecordDB;Integrated Security=True" providerName="System.Data.SqlClient" />
</connectionStrings>


# iTextSharp.dll Integration (ALready in project,just given for knowledge)
1. Download the `iTextSharp.dll` from the [official repository](https://github.com/itext/itextsharp).
2. Place the `iTextSharp.dll` file in the project's root directory.
3. In Visual Studio, right-click on the project in Solution Explorer, choose "Add" > "Reference."
4. Browse and select the `iTextSharp.dll` file you added.

# Running the Project
1. Set the desired startup project (set Default.aspx as startup item if you want).
2. Press F5 or click on the "Run" button to build and launch the application.
3. Access the online shopping site through your preferred web browser.
Feel free to explore the various features of the online shopping site. If you encounter any issues or have suggestions for improvement, please open an issue or submit a pull request.

## Author Information

Please be aware that author information, such as names and contact details, might exist in various places within the project,
including databases and code files. If you encounter any instances of the author's name or related details,
it is recommended to replace them with your own or your team's information.

### Updating Author Information in Databases
If you find author details in databases:
1. Open your database management tool.
2. Locate the relevant tables or records containing author information.
3. Update the existing details with your own or your team's information.

### Updating Author Information in Code
If you find author details in code files:
1. Search for and identify instances where the author's name or contact details are present.
2. Replace the existing details with your own or your team's information.

Feel free to customize the author information according to your needs. If you have any questions or need assistance,
don't hesitate to reach out. Thank you!


## Contact
If you have any questions or suggestions, feel free to reach out:
- **Email:** [walidkadri1177@gmail.com)



