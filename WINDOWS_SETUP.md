# Windows Setup Guide - Car Dealership Website

## 🆘 Fixing Common Errors on Windows

You encountered these errors:
```
- 'python' is not recognized
- 'pip' is not recognized  
- The '<' operator is reserved for future use
```

This guide will fix all of them!

---

## ✅ Solution: Use `uv` (Already Installed!)

You already have `uv` installed, which is a faster, modern Python package manager. Here's how to use it:

---

## 🚀 QUICK START (3 Steps)

### Step 1: Navigate to Project Directory
```powershell
cd C:\car-dealership-app
```

### Step 2: Install Dependencies
```powershell
uv pip install -r requirements.txt --python ./venv/Scripts/python.exe
```

### Step 3: Run the Application
```powershell
uv run app.py
```

**That's it!** Visit: http://localhost:5000

---

## 📋 Complete Setup Instructions

### Step 1: Verify uv is installed
```powershell
uv --version
```
Should show: `uv 0.11.7` or similar ✓

### Step 2: Create Virtual Environment
```powershell
cd C:\car-dealership-app
uv venv venv
```

### Step 3: Install Dependencies
```powershell
uv pip install -r requirements.txt --python ./venv/Scripts/python.exe
```

This installs:
- Flask 3.0.0
- SQLAlchemy 2.0.23
- PyMySQL 1.1.0
- And 11 other packages

### Step 4: Import Database (IMPORTANT!)

**You need MySQL Server installed first!**

#### Option A: If you have MySQL installed
```powershell
# Create database and import SQL
mysql -u root -p car_dealership_db < car_dealership_db-2.sql
```

#### Option B: Using MySQL Workbench
1. Open MySQL Workbench
2. File → Open SQL Script
3. Select `car_dealership_db-2.sql`
4. Execute (Ctrl+Shift+Enter)

#### Option C: Using PowerShell (No MySQL CLI needed)
```powershell
# First, create database
mysql -u root -p -e "CREATE DATABASE car_dealership_db;"

# Then import the SQL file using PowerShell
$content = Get-Content car_dealership_db-2.sql -Raw
$content | mysql -u root -p car_dealership_db
```

### Step 5: Run the Application

#### Method A: Using uv (Recommended)
```powershell
cd C:\car-dealership-app
uv run app.py
```

#### Method B: Using PowerShell activation
```powershell
# Allow scripts to run (first time only)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

# Activate virtual environment
.\venv\Scripts\Activate.ps1

# Run app
python app.py
```

#### Method C: Double-click the batch file
Just double-click `run.bat` in the project folder!

### Step 6: Access the Application
Open your browser and go to:
- **Homepage**: http://localhost:5000
- **Browse Cars**: http://localhost:5000/cars
- **Admin Dashboard**: http://localhost:5000/admin

---

## 🆘 Troubleshooting

### Problem: "uv command not found"
**Solution**: Install uv from https://docs.astral.sh/uv/
```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

### Problem: "MySQL is not recognized"
**Solution**: Install MySQL Server
1. Download from: https://dev.mysql.com/downloads/mysql/
2. Run installer (choose MySQL Community Server)
3. Default settings are fine
4. During installation:
   - Port: 3306 (default)
   - Username: root
   - Set a password (or leave blank for local development)

### Problem: "Can't connect to database"
**Solution**: Check your database credentials in `config.py`

Open `config.py` and find this line:
```python
SQLALCHEMY_DATABASE_URI = os.environ.get(
    'DATABASE_URL',
    'mysql+pymysql://root:@localhost/car_dealership_db'
)
```

If your MySQL username/password is different:
```python
# Example with password 'mypassword':
'mysql+pymysql://root:mypassword@localhost/car_dealership_db'
```

### Problem: "Virtual environment not working"
**Solution**: Recreate it
```powershell
# Remove old venv
Remove-Item -Recurse venv

# Create new one
uv venv venv

# Install dependencies
uv pip install -r requirements.txt --python ./venv/Scripts/python.exe
```

### Problem: "ModuleNotFoundError: No module named 'flask'"
**Solution**: Make sure dependencies are installed
```powershell
uv pip install -r requirements.txt --python ./venv/Scripts/python.exe
```

### Problem: "Address already in use"
**Solution**: Change port in `app.py`

Open `app.py` and find the last line:
```python
app.run(debug=True, host='0.0.0.0', port=5000)
```

Change 5000 to another port (5001, 5002, etc.):
```python
app.run(debug=True, host='0.0.0.0', port=5001)
```

Then visit: http://localhost:5001

---

## 📚 Understanding uv

`uv` is a fast Python package installer and virtual environment manager. Think of it as:
- `uv venv` = `python -m venv`
- `uv pip` = `pip`
- `uv run` = running Python scripts

It's **faster and more reliable** than traditional pip!

**Key Commands:**
```powershell
uv --version              # Check version
uv venv venv              # Create virtual environment
uv pip list               # List installed packages
uv pip install <package>  # Install package
uv run script.py          # Run Python script
```

---

## ✅ Verification Checklist

Before running the app, verify:

- [ ] uv is installed: `uv --version`
- [ ] Virtual environment exists: `Test-Path ./venv/Scripts/python.exe`
- [ ] Dependencies installed: `uv pip list --python ./venv/Scripts/python.exe | grep Flask`
- [ ] MySQL installed: `where.exe mysql` or check MySQL Workbench
- [ ] Database created: `mysql -u root -p -e "SHOW DATABASES;" | findstr car_dealership_db`
- [ ] SQL file imported: `mysql -u root -p -e "USE car_dealership_db; SHOW TABLES;" | findstr car`
- [ ] config.py has correct database credentials
- [ ] Port 5000 is not in use

---

## 🎉 You're Ready!

Once everything is set up:

```powershell
cd C:\car-dealership-app
uv run app.py
```

Visit: **http://localhost:5000**

---

## 📞 Still Having Issues?

1. **Check the error message carefully** - It usually tells you what's wrong
2. **Read the console output** - Look for the actual error
3. **Verify database is running** - Open MySQL Workbench
4. **Check config.py** - Verify database URI is correct
5. **Review this guide** - Most issues are covered above

---

## 🎓 Next Steps After Setup

1. Explore the application as a customer
2. Try the admin dashboard at http://localhost:5000/admin
3. Add a test car to the inventory
4. Create a sample sale
5. Check reports and analytics

Enjoy your car dealership website! 🚗✨
