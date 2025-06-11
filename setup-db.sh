#!/bin/bash

# Check if MySQL is running
if ! mysql -u root -e "SELECT 1" >/dev/null 2>&1; then
    echo "Error: MySQL is not running"
    exit 1
fi

# Create database and tables
echo "Setting up database..."
mysql -u root < schema.sql

if [ $? -eq 0 ]; then
    echo "Database setup completed successfully!"
else
    echo "Error: Failed to set up database"
    exit 1
fi

# Test database connection
echo "Testing database connection..."
mysql -u root -e "USE escuela_virtual; SELECT COUNT(*) FROM materias;" >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Database connection test successful!"
else
    echo "Error: Failed to connect to database"
    exit 1
fi
