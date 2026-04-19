#!/usr/bin/env python
"""
Quick Setup Script for Car Dealership Application
Run this script to set up the application easily
"""

import os
import subprocess
import sys
from pathlib import Path

def print_header(text):
    """Print a formatted header"""
    print("\n" + "="*60)
    print(f"  {text}")
    print("="*60 + "\n")

def print_success(text):
    """Print success message"""
    print(f"✓ {text}")

def print_error(text):
    """Print error message"""
    print(f"✗ {text}")

def check_python_version():
    """Check if Python version is 3.8+"""
    print_header("Checking Python Version")
    version = sys.version_info
    if version.major < 3 or (version.major == 3 and version.minor < 8):
        print_error(f"Python 3.8+ required. You have {version.major}.{version.minor}")
        sys.exit(1)
    print_success(f"Python {version.major}.{version.minor}.{version.micro} found")

def check_mysql_installed():
    """Check if MySQL is installed"""
    print_header("Checking MySQL Installation")
    try:
        result = subprocess.run(['mysql', '--version'], capture_output=True, text=True)
        if result.returncode == 0:
            print_success(f"MySQL is installed: {result.stdout.strip()}")
            return True
    except FileNotFoundError:
        print_error("MySQL not found in PATH")
        print("  → Download: https://dev.mysql.com/downloads/mysql/")
        return False

def create_virtual_environment():
    """Create Python virtual environment"""
    print_header("Creating Virtual Environment")
    
    if os.path.exists('venv'):
        print("  Virtual environment already exists. Skipping...")
        print_success("Virtual environment ready")
        return
    
    try:
        subprocess.run([sys.executable, '-m', 'venv', 'venv'], check=True)
        print_success("Virtual environment created")
    except subprocess.CalledProcessError:
        print_error("Failed to create virtual environment")
        sys.exit(1)

def install_dependencies():
    """Install Python packages"""
    print_header("Installing Dependencies")
    
    # Determine pip command based on OS
    pip_cmd = 'venv\\Scripts\\pip' if sys.platform == 'win32' else 'venv/bin/pip'
    
    try:
        subprocess.run([pip_cmd, 'install', '-r', 'requirements.txt'], check=True)
        print_success("All dependencies installed")
    except subprocess.CalledProcessError:
        print_error("Failed to install dependencies")
        sys.exit(1)

def setup_database():
    """Guide user through database setup"""
    print_header("Database Setup")
    
    print("""
    Follow these steps to set up the MySQL database:
    
    1. Open MySQL Command Line or MySQL Workbench
    2. Create the database:
       CREATE DATABASE car_dealership_db;
    
    3. Import the SQL file. Choose one option:
       
       Option A - Command Line:
       mysql -u root -p car_dealership_db < car_dealership_db-2.sql
       
       Option B - MySQL Workbench:
       • File → Open SQL Script → Select car_dealership_db-2.sql
       • Execute
       
       Option C - PhpMyAdmin:
       • Select the database → Import → Choose car_dealership_db-2.sql
    
    4. Update config.py with your database credentials:
       SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://username:password@localhost/car_dealership_db'
    """)
    
    input("\n  Press Enter when database setup is complete...")

def create_env_file():
    """Create .env file from .env.example"""
    print_header("Creating Environment File")
    
    if os.path.exists('.env'):
        print("  .env file already exists. Skipping...")
        return
    
    if os.path.exists('.env.example'):
        with open('.env.example', 'r') as f:
            content = f.read()
        with open('.env', 'w') as f:
            f.write(content)
        print_success(".env file created from .env.example")
    else:
        print("  .env.example not found. You can create .env manually later.")

def verify_installation():
    """Verify the installation"""
    print_header("Verifying Installation")
    
    checks = [
        ('app.py exists', os.path.exists('app.py')),
        ('config.py exists', os.path.exists('config.py')),
        ('app/models/__init__.py exists', os.path.exists('app/models/__init__.py')),
        ('app/routes/main.py exists', os.path.exists('app/routes/main.py')),
        ('app/routes/admin.py exists', os.path.exists('app/routes/admin.py')),
        ('app/templates/base.html exists', os.path.exists('app/templates/base.html')),
        ('app/static/js/main.js exists', os.path.exists('app/static/js/main.js')),
        ('requirements.txt exists', os.path.exists('requirements.txt')),
        ('README.md exists', os.path.exists('README.md')),
    ]
    
    all_good = True
    for check_name, result in checks:
        if result:
            print_success(check_name)
        else:
            print_error(check_name)
            all_good = False
    
    return all_good

def print_next_steps():
    """Print next steps"""
    print_header("Next Steps")
    
    activate_cmd = 'venv\\Scripts\\activate' if sys.platform == 'win32' else 'source venv/bin/activate'
    
    print(f"""
    1. Activate virtual environment:
       {activate_cmd}
    
    2. Set up your database (if not done yet):
       • Run: mysql -u root -p < car_dealership_db-2.sql
       • Update DATABASE_URL in config.py
    
    3. Run the application:
       python app.py
    
    4. Open your browser:
       • Homepage: http://localhost:5000
       • Browse Cars: http://localhost:5000/cars
       • Admin Dashboard: http://localhost:5000/admin
    
    5. Sample Data:
       • 51 cars in inventory
       • 30 customers and employees
       • 30 sample sales and financing records
       • Ready for testing!
    
    📖 For more information, see README.md
    """)

def main():
    """Main setup function"""
    print("""
    ╔══════════════════════════════════════════════════════╗
    ║   🚗 Car Dealership Application - Setup Script      ║
    ║   Premium Flask + MySQL + Tailwind CSS              ║
    ╚══════════════════════════════════════════════════════╝
    """)
    
    # Change to script directory
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    # Run setup steps
    check_python_version()
    check_mysql_installed()
    create_virtual_environment()
    install_dependencies()
    create_env_file()
    
    setup_database()
    
    if verify_installation():
        print_success("All components verified!")
    else:
        print_error("Some files are missing. Please check the installation.")
    
    print_next_steps()
    
    print("\n✨ Setup complete! Happy coding!\n")

if __name__ == '__main__':
    main()
