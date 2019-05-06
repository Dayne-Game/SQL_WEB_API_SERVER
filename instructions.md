# Scafhold the C# models from the SQL Server

1. Run the SQL Server - script is located in the docker file

2. Run this if you haven't got the sql extension => `code --install-extension ms-mssql.mssql`

3. Execute the SQL scripts

4. Restore the dotnet packages that are located in the api project

```
cd api && dotnet restore
```

5. Once that is up and running, run this:

```
dotnet ef dbcontext scaffold "Server=localhost;Database=Rugby7db;User=sa;Password=yourStrong(*)Password" Microsoft.EntityFrameworkCore.SqlServer -o Models -f -c Rugby7Context 
```

