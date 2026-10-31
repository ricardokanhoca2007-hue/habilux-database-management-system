# HabiLux — Database Management System

Academic relational-database project for an accommodation/property-management scenario. The database covers entities such as apartments, customers, contracts, payments, maintenance and operational resources.

## Contents
- `HABILUX SCRIPT.sql` — database/schema creation.
- `HABILUX DATA - ANONYMIZED.sql` — sample data with contact details anonymised.
- `HABILUX CONSULTA.sql` — SQL queries.
- `HABILUX CONSULTA AVANÇADA.sql` — advanced queries.
- `HABILUX VIEWS AND USERS.sql` — views and database-user/privilege examples.
- `HabiLux.dia` — database diagram source (Dia format).

## Concepts demonstrated
- Relational database design and entity relationships.
- Primary and foreign keys and associative tables.
- SQL data manipulation and multi-table queries.
- Joins, grouping, aggregation and sorting.
- Views and database access privileges.
- Operational and financial reporting queries.

## How to use
The scripts were created for MySQL. Review the SQL files and execute them in the intended dependency order using MySQL Workbench or the MySQL command-line client. Check database names and permissions for your local environment before execution.

## Security and privacy
The sample dataset included in this repository has been anonymised for publication. Password strings in the user/privilege script have been replaced with placeholders. Set new local credentials before running that script. Never commit real passwords, personal contact details or production data.

## Academic context
Developed as part of the Databases course. This repository contains academic work; it is not a production database system.
