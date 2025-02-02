# SQLNLP
# Organization Database Query Assistant

This project provides a FastAPI-based web application that connects to an SQLite database and responds to various user queries about employees, departments, and salary expenses.

## Features

- Query the list of employees in a specific department.
- Retrieve the manager of a department.
- Find employees hired after a certain date.
- Calculate the total salary expense for a department.

## Installation

1. Clone this repository:

    ```bash
    git clone <repository-url>
    cd <project-directory>
    ```

2. Install the required dependencies:

    ```bash
    pip install -r requirements.txt
    ```

    Alternatively, you can install them individually:

    ```bash
    pip install fastapi uvicorn pydantic
    ```

3. Initialize the SQLite database:

    The database will be created and populated with sample data automatically when you run the FastAPI application.

4. Run the FastAPI app:

    ```bash
    uvicorn main:app --reload
    ```

    Replace `main` with the filename where your FastAPI app is defined (if necessary).

5. Open your browser and go to `http://127.0.0.1:8000/docs` to interact with the API using the Swagger UI.

## API Endpoints

- **GET /query/**: Submit your query in the `q` parameter.

    Example queries:
    
    - "Employees in the Sales department"
    - "Manager of the Engineering department"
    - "Employees hired after 2022-01-01"
    - "Total salary expense for the Marketing department"

## Database Schema

- **Employees Table**: Contains employee details.
    - `ID` (INTEGER): Unique identifier.
    - `Name` (TEXT): Employee's name.
    - `Department` (TEXT): Department the employee belongs to.
    - `Salary` (INTEGER): Employee's salary.
    - `Hire_Date` (TEXT): Date the employee was hired.

- **Departments Table**: Contains department details.
    - `ID` (INTEGER): Unique identifier.
    - `Name` (TEXT): Department name.
    - `Manager` (TEXT): Manager of the department.

## Example Output

### Query: "Employees in the Sales department"

Response:

```json
{
    "employees": ["Alice"]
}
