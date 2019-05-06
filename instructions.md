# Scafhold the C# models from the SQL Server

1. Run the SQL Server - script is located in the docker file (`./new-server.sh`)

2. Run this if you haven't got the sql extension => `code --install-extension ms-mssql.mssql`

3. Execute the SQL scripts

4. Restore the dotnet packages that are located in the api project

```
cd api && dotnet restore
```

5. Still in the api folder run this:

```
dotnet ef dbcontext scaffold "Server=localhost;Database=Rugby7db;User=sa;Password=yourStrong(*)Password" Microsoft.EntityFrameworkCore.SqlServer -o Models -f -c Rugby7Context 
```

6. Back in the project root folder run the projects

Each of these need to be in a separate terminal window

```
dotnet run -p api
dotnet run -p web
```