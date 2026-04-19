# 🚀 QUICK START GUIDE

## Car Dealership Web Application
**Premium Flask-based car dealership website with MySQL database and admin dashboard**

---

## 📋 What You're Getting

- ✅ **Complete Flask Application** - Fully functional backend
- ✅ **MySQL Database** - 9 tables with sample data (51 cars, 30 customers, etc.)
- ✅ **Admin Dashboard** - Full CRUD operations
- ✅ **Premium Frontend** - Modern UI with Tailwind CSS
- ✅ **Search & Filters** - Advanced car browsing
- ✅ **Responsive Design** - Works on mobile, tablet, desktop
- ✅ **Production Ready** - Clean architecture, well-organized code

---

## ⚡ 5-Minute Setup (For Experienced Users)

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Import database
mysql -u root -p < car_dealership_db-2.sql

# 3. Update config.py database URI
# SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:@localhost/car_dealership_db'

# 4. Run application
python app.py

# 5. Visit http://localhost:5000
```

---

## 🎯 Complete Step-by-Step Setup

### Step 1: Prerequisites

**Requirements:**
- Python 3.8 or higher
- MySQL Server (or MariaDB)
- ~500MB disk space
- Any modern web browser

**Installation:**
- **Python**: https://www.python.org/downloads/
- **MySQL**: https://dev.mysql.com/downloads/mysql/
- **Git** (optional): https://git-scm.com/

Verify installation:
```bash
python --version          # Should be 3.8+
mysql --version          # Should be 5.7+
```

---

### Step 2: Project Setup

1. **Navigate to the project directory**
   ```bash
   cd car-dealership-app
   ```

2. **Create virtual environment** (recommended)
   
   **Windows:**
   ```bash
   python -m venv venv
   venv\Scripts\activate
   ```
   
   **macOS/Linux:**
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```
   
   This installs:
   - Flask 3.0.0
   - SQLAlchemy 2.0.23
   - PyMySQL 1.1.0
   - And other required packages

---

### Step 3: Database Setup

1. **Open MySQL command line or MySQL Workbench**
   
2. **Create the database**
   ```sql
   CREATE DATABASE car_dealership_db;
   ```

3. **Import the SQL file**
   
   **Option A - Command Line (Recommended):**
   ```bash
   mysql -u root -p car_dealership_db < car_dealership_db-2.sql
   # When prompted, enter your MySQL password
   ```
   
   **Option B - MySQL Workbench:**
   - File → Open SQL Script
   - Select `car_dealership_db-2.sql`
   - Execute (Ctrl+Shift+Enter)
   
   **Option C - PhpMyAdmin:**
   - Go to localhost/phpmyadmin
   - Create database: `car_dealership_db`
   - Go to Import tab
   - Upload `car_dealership_db-2.sql`
   - Click Import

4. **Verify database was created**
   ```sql
   USE car_dealership_db;
   SHOW TABLES;  -- Should show 9 tables
   ```

---

### Step 4: Configure Database Connection

1. **Open `config.py`** in the project root

2. **Update the database URI** (around line 15):
   
   ```python
   SQLALCHEMY_DATABASE_URI = os.environ.get(
       'DATABASE_URL',
       'mysql+pymysql://username:password@localhost/car_dealership_db'
   )
   ```
   
   Replace `username` and `password` with your MySQL credentials.
   
   **Example:**
   ```python
   'mysql+pymysql://root:mypassword@localhost/car_dealership_db'
   ```

3. **Save the file**

---

### Step 5: Run the Application

```bash
python app.py
```

You should see:
```
╔══════════════════════════════════════════════════════╗
║   🚗 Car Dealership Application - Premium Edition   ║
║   Flask + MySQL + Tailwind CSS                       ║
╚══════════════════════════════════════════════════════╝

Starting development server...
Visit http://localhost:5000
Admin Dashboard: http://localhost:5000/admin
```

---

### Step 6: Access the Application

Open your browser and visit:

| Page | URL |
|------|-----|
| **Homepage** | http://localhost:5000 |
| **Browse Cars** | http://localhost:5000/cars |
| **Car Details** | http://localhost:5000/car/50000501 |
| **Admin Dashboard** | http://localhost:5000/admin |
| **Manage Cars** | http://localhost:5000/admin/cars |
| **Manage Customers** | http://localhost:5000/admin/customers |
| **Manage Sales** | http://localhost:5000/admin/sales |
| **View Reports** | http://localhost:5000/admin/reports |

---

## 🎨 Features Overview

### For Customers (Public Pages)

**Homepage** (`/`)
- Featured car showcase
- Statistics (total cars, available, sales, etc.)
- Quick access to inventory

**Browse Cars** (`/cars`)
- Filter by status, type, model, year, color, price
- Sort options (price, year)
- Pagination
- Responsive grid layout

**Car Details** (`/car/<id>`)
- Full specifications
- Sale information (if sold)
- Similar vehicles recommendation
- Contact information
- Request info / Test drive buttons

### For Admin Dashboard (`/admin`)

**Dashboard**
- Real-time statistics
- Recent sales
- Quick access to management areas

**Car Management** (`/admin/cars`)
- View all cars in inventory
- Add new car to inventory
- Edit car details (price, color, status)
- Delete car (if no associated sales)
- Pagination

**Customer Management** (`/admin/customers`)
- View all customer records
- Add new customer
- Edit customer information
- Delete customer (if no associated sales)
- Track customer history

**Sales Management** (`/admin/sales`)
- View all sales transactions
- Record new sale
- Add financing details (auto-calculates monthly payments)
- View payment history
- Delete sale record
- 20% downpayment automatically calculated

**Reports** (`/admin/reports`)
- Total sales and revenue
- Cash vs. Financed sales breakdown
- Sales by vehicle type
- Top selling models
- Payment method distribution
- Quick statistics

---

## 🗄️ Database Schema

**9 Tables:**

1. **vehicle_type** - Car categories (Sedan, SUV, etc.)
2. **model** - Car models with vehicle type relationships
3. **car** - Individual vehicles (status: available/reserved/sold)
4. **customer** - Buyer information
5. **employee** - Sales agents and staff
6. **sale** - Transaction records (links cars, customers, employees)
7. **financing** - Loan details with auto-calculated payments
8. **payment** - Payment records for sales
9. **Relationships** - Fully normalized with foreign keys

**Sample Data Included:**
- 20 car models
- 51 individual cars
- 30 customers
- 30 employees  
- 30 sales transactions
- 30 financing records with payments

---

## 🔧 Common Issues & Solutions

### Issue: "ModuleNotFoundError: No module named 'flask'"

**Solution:**
```bash
# Make sure virtual environment is activated
# Windows:
venv\Scripts\activate

# macOS/Linux:
source venv/bin/activate

# Then install packages:
pip install -r requirements.txt
```

---

### Issue: "Can't connect to MySQL server"

**Causes:**
1. MySQL not running
2. Wrong credentials in config.py
3. Database doesn't exist

**Solutions:**
```bash
# Start MySQL service (Windows)
net start MySQL80

# Verify database exists
mysql -u root -p -e "SHOW DATABASES;"

# Check config.py has correct credentials
# SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://USER:PASS@localhost/car_dealership_db'
```

---

### Issue: "Address already in use" (Port 5000)

**Solution:**
```bash
# Change port in app.py
# Line: app.run(debug=True, host='0.0.0.0', port=5000)
# Change to:
app.run(debug=True, host='0.0.0.0', port=5001)

# Then visit: http://localhost:5001
```

---

### Issue: Database tables not creating

**Solution:**
```bash
# Delete .db file (if exists) and reimport SQL:
mysql -u root -p car_dealership_db < car_dealership_db-2.sql

# Or manually create and import in MySQL Workbench
```

---

## 📁 Project Structure Explained

```
car-dealership-app/
├── app.py                          # Entry point - Run this!
├── config.py                       # Database & Flask configuration
├── requirements.txt                # Python dependencies
├── README.md                       # Full documentation
├── QUICK_START.md                  # This file
│
├── app/
│   ├── __init__.py                 # Flask app factory
│   │
│   ├── models/__init__.py           # SQLAlchemy database models
│   │   # 8 model classes for all tables
│   │
│   ├── routes/
│   │   ├── main.py                 # Homepage, listings, search
│   │   └── admin.py                # Admin CRUD operations
│   │
│   ├── templates/                  # HTML templates
│   │   ├── base.html               # Base template (navbar, footer)
│   │   ├── index.html              # Homepage
│   │   ├── cars/
│   │   │   ├── listing.html        # Car listing with filters
│   │   │   └── detail.html         # Car details page
│   │   └── admin/                  # Admin pages
│   │
│   └── static/                     # CSS, JavaScript, images
│       ├── css/                    # Custom styles (if any)
│       ├── js/main.js              # Interactive features
│       └── images/                 # Image assets
│
└── car_dealership_db-2.sql         # Database SQL file

Key Files to Know:
- app.py         → Run this to start the server
- config.py      → Change database connection here
- app/models/    → Database models (modify for changes)
- app/routes/    → Add new features here
- app/templates/ → Modify HTML/design here
- requirements.txt → Add packages here
```

---

## 🚀 Next Steps After Setup

1. **Explore the application**
   - Browse cars as a customer
   - Test filters and search
   - Check responsive design on mobile

2. **Use the admin dashboard**
   - Add a new car to inventory
   - Create a customer record
   - Record a sample sale

3. **Customize for your business**
   - Update company name/logo in templates
   - Modify colors and branding
   - Add your contact information
   - Upload real car images

4. **Deploy to production** (When ready)
   - Use Gunicorn instead of Flask dev server
   - Set DEBUG = False
   - Use SSL/HTTPS
   - Set strong SECRET_KEY
   - Deploy on cloud (Heroku, AWS, DigitalOcean, etc.)

---

## 📚 Resources & Documentation

**In This Project:**
- `README.md` - Complete documentation
- `config.py` - Configuration options
- `app.py` - Entry point and structure

**External Resources:**
- Flask: https://flask.palletsprojects.com/
- SQLAlchemy: https://sqlalchemy.org/
- Tailwind CSS: https://tailwindcss.com/
- MySQL: https://dev.mysql.com/doc/

**Tech Stack:**
- Backend: Flask 3.0.0
- Database: MySQL/MariaDB + SQLAlchemy 2.0
- Frontend: HTML5 + Tailwind CSS + Vanilla JavaScript
- Architecture: MVC Pattern

---

## 💡 Pro Tips

1. **Keep virtual environment activated**
   - Always activate before running the app
   - Deactivate with: `deactivate`

2. **Use development mode**
   - Hot reload on file changes
   - Better error messages
   - Use for development only!

3. **Database debugging**
   - Use `SQLALCHEMY_ECHO = True` in config.py to see SQL queries
   - Check app.py for database initialization logs

4. **Backup your database**
   ```bash
   mysqldump -u root -p car_dealership_db > backup.sql
   ```

5. **Reset database**
   ```bash
   # Drop and recreate
   mysql -u root -p -e "DROP DATABASE car_dealership_db;"
   mysql -u root -p car_dealership_db < car_dealership_db-2.sql
   ```

---

## ✅ Troubleshooting Checklist

Before asking for help, verify:

- [ ] Python 3.8+ installed
- [ ] MySQL running
- [ ] Virtual environment activated
- [ ] Dependencies installed (`pip install -r requirements.txt`)
- [ ] Database created (`car_dealership_db`)
- [ ] SQL file imported
- [ ] Database URI correct in `config.py`
- [ ] Port 5000 not in use
- [ ] Firewall not blocking port 5000
- [ ] No syntax errors in code

---

## 📞 Support

If you encounter issues:

1. **Check error message** - Read what it says carefully
2. **Look at console** - Check terminal/command prompt for errors
3. **Review logs** - Check `app.py` output
4. **Test database** - Verify MySQL connection manually
5. **Review configuration** - Double-check `config.py`

---

## 🎉 You're Ready!

Your car dealership website is now set up and ready to use!

```bash
python app.py
```

Visit: **http://localhost:5000**

Happy coding! 🚗✨

---

**Version**: 1.0.0  
**Status**: Production Ready  
**Last Updated**: April 2026
