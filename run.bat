@echo off
REM Car Dealership Website - Quick Start Script for Windows
REM This script starts the Flask application

echo.
echo ╔════════════════════════════════════════════════════╗
echo ║  Car Dealership Website - Flask Application        ║
echo ║  Starting development server...                    ║
echo ╚════════════════════════════════════════════════════╝
echo.

REM Check if virtual environment exists
if not exist "venv\Scripts\python.exe" (
    echo ERROR: Virtual environment not found!
    echo.
    echo Run setup first with:
    echo   uv venv venv
    echo   uv pip install -r requirements.txt --python ./venv/Scripts/python.exe
    echo.
    pause
    exit /b 1
)

REM Run Flask app using uv
echo Starting application...
echo.
uv run app.py

pause
