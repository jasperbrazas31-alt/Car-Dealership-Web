"""
Car Dealership Flask Application - Entry Point
Run this file to start the application
"""

import os
from app import create_app, db
from app.models import (
    VehicleType, Model, Car, Customer, Employee, 
    Sale, Financing, Payment
)

# Create Flask app
app = create_app(os.getenv('FLASK_ENV', 'development'))


@app.shell_context_processor
def make_shell_context():
    """Flask shell context for debugging"""
    return {
        'db': db,
        'VehicleType': VehicleType,
        'Model': Model,
        'Car': Car,
        'Customer': Customer,
        'Employee': Employee,
        'Sale': Sale,
        'Financing': Financing,
        'Payment': Payment
    }


if __name__ == '__main__':
    print("""
    ╔══════════════════════════════════════════════════════╗
    ║   🚗 Car Dealership Application - Premium Edition   ║
    ║   Flask + MySQL + Tailwind CSS                       ║
    ╚══════════════════════════════════════════════════════╝
    
    Starting development server...
    Visit http://localhost:5000
    Admin Dashboard: http://localhost:5000/admin
    """)
    
    app.run(debug=True, host='0.0.0.0', port=5000)
