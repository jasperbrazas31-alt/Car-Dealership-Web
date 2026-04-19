# Car Dealership Website - Windows Setup Script
# This script automates the setup process on Windows

Write-Host "=== Car Dealership Website Setup ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check Python
Write-Host "Step 1: Checking Python..." -ForegroundColor Yellow
$pythonPath = ".\venv\Scripts\python.exe"
if (Test-Path $pythonPath) {
    Write-Host "✓ Python virtual environment found" -ForegroundColor Green
} else {
    Write-Host "✗ Virtual environment not found" -ForegroundColor Red
    Write-Host "Run: uv venv venv" -ForegroundColor Yellow
    exit
}

# Step 2: Check dependencies
Write-Host "`nStep 2: Checking dependencies..." -ForegroundColor Yellow
$depsInstalled = & $pythonPath -c "import flask; import sqlalchemy; print('OK')" 2>$null
if ($depsInstalled -eq "OK") {
    Write-Host "✓ All dependencies installed" -ForegroundColor Green
} else {
    Write-Host "✗ Dependencies not installed" -ForegroundColor Red
    Write-Host "Run: uv pip install -r requirements.txt --python $pythonPath" -ForegroundColor Yellow
    exit
}

# Step 3: Check MySQL
Write-Host "`nStep 3: Checking MySQL..." -ForegroundColor Yellow
$mysqlExists = Get-Command mysql -ErrorAction SilentlyContinue
if ($mysqlExists) {
    Write-Host "✓ MySQL found" -ForegroundColor Green
} else {
    Write-Host "✗ MySQL not installed" -ForegroundColor Red
    Write-Host "`nTo install MySQL on Windows:" -ForegroundColor Yellow
    Write-Host "1. Download from: https://dev.mysql.com/downloads/mysql/" -ForegroundColor Cyan
    Write-Host "2. Run the installer and follow instructions" -ForegroundColor Cyan
    Write-Host "3. Default port: 3306, username: root" -ForegroundColor Cyan
    exit
}

# Step 4: Check database
Write-Host "`nStep 4: Checking database..." -ForegroundColor Yellow
$dbCheck = mysql -u root -N -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME='car_dealership_db'" 2>$null
if ($dbCheck) {
    Write-Host "✓ Database 'car_dealership_db' exists" -ForegroundColor Green
} else {
    Write-Host "✗ Database needs to be created" -ForegroundColor Red
    Write-Host "`nImporting database..." -ForegroundColor Yellow
    $sqlFile = Resolve-Path "car_dealership_db-2.sql"
    
    # Create database and import
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS car_dealership_db;" 2>$null
    
    # Import SQL file
    $content = Get-Content $sqlFile -Raw
    $content | mysql -u root car_dealership_db
    
    if ($?) {
        Write-Host "✓ Database imported successfully" -ForegroundColor Green
    } else {
        Write-Host "✗ Error importing database" -ForegroundColor Red
        Write-Host "`nManual import:" -ForegroundColor Yellow
        Write-Host "Open MySQL Workbench or command line and run:" -ForegroundColor Cyan
        Write-Host "mysql -u root -p < car_dealership_db-2.sql" -ForegroundColor Gray
        exit
    }
}

# Step 5: Verify database content
Write-Host "`nStep 5: Verifying database content..." -ForegroundColor Yellow
$tableCount = mysql -u root -N -e "SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='car_dealership_db'" 2>$null
$carCount = mysql -u root -N -e "SELECT COUNT(*) FROM car_dealership_db.car" 2>$null

Write-Host "✓ Tables: $tableCount" -ForegroundColor Green
Write-Host "✓ Cars in inventory: $carCount" -ForegroundColor Green

# Step 6: Summary
Write-Host "`n=== Setup Complete ===" -ForegroundColor Green
Write-Host ""
Write-Host "To start the application:" -ForegroundColor Cyan
Write-Host "  1. Set execution policy: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process" -ForegroundColor Gray
Write-Host "  2. Activate venv: .\venv\Scripts\activate.ps1" -ForegroundColor Gray
Write-Host "  3. Run app: python app.py" -ForegroundColor Gray
Write-Host ""
Write-Host "Or run directly with uv:" -ForegroundColor Cyan
Write-Host "  uv run app.py" -ForegroundColor Gray
Write-Host ""
Write-Host "Visit: http://localhost:5000" -ForegroundColor Yellow
