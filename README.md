# EV Population Database

## Overview
This project is a relational SQL database designed to analyze Electric Vehicle (EV) population data in Washington State. The database focuses on Battery Electric Vehicles (BEVs) and Plug-in Hybrid Electric Vehicles (PHEVs) registered through the Washington State Department of Licensing (DOL).

Developed as part of INST 327: Database Design and Modeling at the University of Maryland, this project demonstrates database normalization, relational schema design, SQL querying, and entity relationship modeling using real-world EV population data.

---

## Features
- Relational database schema with 8 interconnected tables
- Many-to-many relationship modeling
- SQL analytical queries
- Electric vehicle registration analysis
- Privacy-conscious database design
- Entity Relationship Diagram (ERD)
- Real-world dataset integration

---

## Technologies Used
- SQL
- MySQL
- MySQL Workbench
- Relational Database Design
- Database Modeling

---

## Database Structure
The database contains 8 tables:

- `make`
- `model`
- `battery`
- `cars`
- `locations`
- `cars_locations`
- `utilities`
- `cars_locations_utilities`

The schema supports:
- Many-to-many relationships
- Vehicle and location tracking
- Utility provider mapping
- EV registration analytics

---

## Skills Demonstrated
- Database normalization
- Relational schema design
- SQL querying
- ERD modeling
- Foreign key relationships
- Many-to-many relationships
- Data privacy considerations
- Analytical query development

---

## Example Questions Answered
- What models of electric vehicles are registered in Washington?
- Which EV models have the most registrations?
- How many EVs are battery powered?
- What is the average electric range of EVs by city?
- What locations have the highest EV registration counts?

---

## Repository Structure

```text
schema/   → Database creation scripts
queries/  → SQL analytical queries
erd/      → ERD model files
report/   → Final project documentation
```

---

## Dataset Source
Washington State Department of Licensing – Electric Vehicle Population Data

https://data.wa.gov/Transportation/Electric-Vehicle-Population-Data/f6w7-q2d2/about_data

---

## Future Improvements
- Expand dataset size for improved analytics
- Add support for additional EV types
- Implement dashboard visualizations
- Integrate cloud-hosted database deployment
- Add automated reporting and analytics

---

## Author
Ibaad Shaikh
