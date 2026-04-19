# 🚗 Luxury Motors - Premium Car Dealership Website

A professional, full-stack car dealership website built with Flask, SQLAlchemy, MySQL, and Tailwind CSS. Features a modern UI with a complete CRUD admin dashboard for managing vehicles, customers, and sales.

## 🎯 Features

### Frontend
- ✨ **Premium Design** - Luxury brand aesthetic with smooth animations
- 📱 **Fully Responsive** - Works perfectly on mobile, tablet, and desktop
- 🔍 **Advanced Search & Filters** - Filter by type, model, year, color, and price
- 🎨 **Modern UI/UX** - Built with Tailwind CSS
- 🚀 **Smooth Animations** - Professional transitions and interactions

### Backend
- 🗄️ **MySQL Database** - Robust relational database with 9 tables
- 🔐 **SQLAlchemy ORM** - Type-safe database interactions
- 📊 **Complete CRUD** - Full Create, Read, Update, Delete operations
- 📈 **Dashboard & Reports** - Analytics and sales tracking
- 🏗️ **Clean MVC Architecture** - Well-organized code structure

### Admin Dashboard
- 🚗 **Car Management** - Add, edit, delete vehicles
- 👥 **Customer Management** - Track buyers and contacts
- 💰 **Sales Management** - Record sales and financing
- 📋 **Reports** - View sales analytics and metrics
- 📊 **Statistics** - Real-time inventory and revenue tracking

## 📁 Project Structure

```
car-dealership-app/
├── app/
│   ├── __init__.py                 # Flask app factory
│   ├── models/
│   │   └── __init__.py             # SQLAlchemy models (9 tables)
│   ├── routes/
│   │   ├── main.py                 # Main routes (home, listings, details)
│   │   └── admin.py                # Admin CRUD routes
│   ├── templates/
│   │   ├── base.html               # Base template with navbar/footer
│   │   ├── index.html              # Homepage with featured cars
│   │   ├── cars/
│   │   │   ├── listing.html        # Car listing with filters
│   │   │   └── detail.html         # Car details page
│   │   ├── admin/
│   │   │   ├── dashboard.html      # Admin overview
│   │   │   ├── cars/               # Car management templates
│   │   │   ├── customers/          # Customer management
│   │   │   ├── sales/              # Sales management
│   │   │   └── reports.html        # Analytics reports
│   │   └── errors/                 # Error pages
│   └── static/
│       ├── css/                    # Custom stylesheets
│       ├── js/
│       │   └── main.js             # Main JavaScript
│       └── images/                 # Static images
├── config.py                       # Configuration file
├── app.py                          # Entry point
├── requirements.txt                # Python dependencies
└── README.md                       # This file
```

## 🗄️ Database Schema

The application uses 9 interconnected tables:

- **vehicle_type** - Car categories (Sedan, SUV, Pickup, etc.)
- **model** - Specific car models with type relationships
- **car** - Individual vehicles with status tracking
- **customer** - Buyer information
- **employee** - Sales agents and staff
- **sale** - Transaction records linking cars, customers, employees
- **financing** - Loan details with auto-calculated payments
- **payment** - Payment records for sales
- **Relationships** - Foreign keys create a fully normalized structure

## 🚀 Getting Started

### Prerequisites
- Python 3.8+
- MySQL Server (or MariaDB)
- pip (Python package manager)

### Installation

1. **Clone the repository**
   ```bash
   cd car-dealership-app
   ```

2. **Create a virtual environment**
   ```bash
   python -m venv venv
   source venv/Scripts/activate  # On Windows
   # or
   source venv/bin/activate      # On macOS/Linux
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Import the database**
   ```bash
   # Open MySQL and run:
   mysql -u root -p < car_dealership_db-2.sql
   # Or copy-paste the SQL file contents into MySQL Workbench/PhpMyAdmin
   ```

5. **Configure database connection**
   - Edit `config.py` and update the database URI:
   ```python
   SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://username:password@localhost/car_dealership_db'
   ```

6. **Run the application**
   ```bash
   python app.py
   ```

7. **Open in browser**
   - Homepage: http://localhost:5000
   - Browse Cars: http://localhost:5000/cars
   - Admin Dashboard: http://localhost:5000/admin

## 📖 Usage

### For Customers

1. **Browse Inventory**
   - Visit `/cars` to see all available vehicles
   - Use advanced filters to find your perfect car
   - Search by plate, model, or type

2. **View Details**
   - Click on any car to see detailed specifications
   - Check pricing and availability
   - See similar vehicles

3. **Request Information**
   - Click "Request Info" to inquire about a vehicle
   - Request a test drive
   - Contact sales team

### For Administrators

1. **Dashboard** (`/admin`)
   - View real-time statistics
   - Monitor inventory levels
   - Check revenue and sales metrics

2. **Manage Cars** (`/admin/cars`)
   - Add new vehicles to inventory
   - Edit car details (price, color, status)
   - Delete vehicles from inventory
   - Track availability

3. **Manage Customers** (`/admin/customers`)
   - View all customer records
   - Add new customers
   - Update contact information
   - Track customer history

4. **Record Sales** (`/admin/sales`)
   - Create new sale transactions
   - Add financing details (auto-calculates monthly payments)
   - Track payment history
   - View sale analytics

5. **View Reports** (`/admin/reports`)
   - Sales by vehicle type
   - Top selling models
   - Revenue tracking
   - Cash vs. financing breakdown

## 🔧 Configuration

### Database Setup

Edit `config.py` to configure:
- Database connection string
- Flask secret key
- Session lifetime
- Upload folder paths
- Max content length

```python
SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://user:pass@localhost/db_name'
SECRET_KEY = 'your-secret-key'  # Change in production
```

### Environment Variables

Create a `.env` file (optional):
```
FLASK_ENV=development
DATABASE_URL=mysql+pymysql://user:pass@localhost/car_dealership_db
SECRET_KEY=your-secret-key-here
```

## 🎨 Design Highlights

### Color Scheme
- **Primary Gradient**: Purple to Blue (#667eea → #764ba2)
- **Accent Gold**: #d4af37 (luxury feel)
- **Clean Whites & Grays**: Modern, minimal aesthetic

### Typography
- **Headings**: Bold, gradient text for emphasis
- **Body**: Clean, readable Segoe UI font
- **Icons**: Font Awesome 6.4 for consistent iconography

### Components
- Premium card designs with hover effects
- Smooth transitions and animations
- Responsive grid layouts
- Accessible forms and inputs

## 📊 Sample Data

The database comes with pre-loaded sample data:
- 20 car models across 9 vehicle types
- 51 individual cars with various statuses
- 30 customers with full contact details
- 30 employees in various positions
- 30 complete sales transactions
- 30 financing records with calculated payments
- 30 payment records

Perfect for testing and demonstration!

## 🔑 Key Technologies

- **Backend**: Flask 3.0.0
- **Database ORM**: SQLAlchemy 2.0
- **Database**: MySQL/MariaDB with PyMySQL
- **Frontend**: HTML5, Tailwind CSS, Vanilla JavaScript
- **Icons**: Font Awesome 6.4
- **Architecture**: MVC Pattern

## 🚀 Production Deployment

Before deploying to production:

1. **Update Configuration**
   ```python
   DEBUG = False  # in config.py
   SQLALCHEMY_ECHO = False
   ```

2. **Use Production Database**
   ```bash
   set DATABASE_URL=your_production_db_url
   ```

3. **Generate Strong Secret Key**
   ```python
   import secrets
   secrets.token_hex(32)
   ```

4. **Use Production Server**
   ```bash
   pip install gunicorn
   gunicorn app:app --workers 4
   ```

5. **Enable HTTPS**
   - Use SSL certificates
   - Set SECURE_PROXY_HEADER
   - Configure CORS if needed

## 🔐 Security Features

- Database connection via PyMySQL (safer than MySQLdb)
- Input validation on forms
- SQL injection protection via SQLAlchemy
- CSRF protection ready (implement in production)
- Password handling (add authentication layer)

## 📝 API Endpoints

### Public Routes
- `GET /` - Homepage
- `GET /cars` - Car listings with filters
- `GET /car/<car_id>` - Car details
- `GET /search?q=query` - AJAX search
- `GET /api/cars/filter` - AJAX filter

### Admin Routes (Protected)
- `GET /admin/` - Dashboard
- `GET /admin/cars` - Manage cars
- `POST /admin/cars/add` - Add car
- `POST /admin/cars/edit/<id>` - Edit car
- `POST /admin/cars/delete/<id>` - Delete car
- `GET /admin/customers` - Manage customers
- `POST /admin/customers/add` - Add customer
- `GET /admin/sales` - Manage sales
- `POST /admin/sales/add` - Record sale
- `GET /admin/reports` - View reports

## 🐛 Troubleshooting

### Database Connection Error
```
Error: Can't connect to MySQL server
```
- Verify MySQL is running
- Check database credentials in config.py
- Ensure database exists: `CREATE DATABASE car_dealership_db;`

### Port Already in Use
```
Address already in use
```
- Change port: `app.run(port=5001)`
- Or kill process using port 5000

### Missing Templates
```
TemplateNotFound: index.html
```
- Verify templates folder structure
- Check file names match exactly
- Ensure running from correct directory

## 📈 Future Enhancements

- [ ] User authentication and roles
- [ ] Email notifications for inquiries
- [ ] Image upload for car photos
- [ ] Payment gateway integration
- [ ] API documentation with Swagger
- [ ] Mobile app version
- [ ] Multi-language support
- [ ] Advanced analytics dashboard
- [ ] Customer review system
- [ ] Appointment booking system

## 📞 Support

For issues or questions:
1. Check the troubleshooting section
2. Review configuration settings
3. Verify database connection
4. Check browser console for errors
5. Review Flask logs

## 📄 License

This project is provided as-is for educational and commercial use.

## 👨‍💻 About

Built as a premium, production-ready car dealership solution featuring:
- Professional UI/UX design
- Complete backend implementation
- Database integration with real data
- Admin dashboard with full CRUD
- Responsive, modern interface

Perfect for learning Flask, SQLAlchemy, database design, and full-stack web development!

---

**Version**: 1.0.0  
**Last Updated**: April 2026  
**Status**: Production Ready ✓
