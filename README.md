Backend for NYC-Trees

limited amount of data from NYC Tree Consensus 2015

# Tree Data Collection App

This is a Ruby on Rails application designed to collect and manage tree data. The application utilizes PostgreSQL as the database for storing tree-related information. This README file provides instructions on how to set up and run the application, including the necessary steps to pair it with PostgreSQL.

## Prerequisites

Before getting started, ensure that you have the following prerequisites installed on your system:

- Ruby (version 2.7 or later)
- Rails (version 6.0 or later)
- PostgreSQL (version 9.6 or later)

## Installation

Follow these steps to set up the Tree Data Collection App:

1. Clone the repository to your local machine:

```bash
$ git clone https://github.com/your-username/tree-data-collection.git
```

2. Navigate to the project directory:

```bash
$ cd nyc-trees-backend
```

3. Install the required gems:

```bash
$ bundle install
```

4. Create the PostgreSQL database:

```bash
$ rails db:create
```

5. Migrate the database schema:

```bash
$ rails db:migrate
```

## Configuration

The application requires a connection to your PostgreSQL database. Update the database configuration in `config/database.yml` to match your PostgreSQL setup. Replace the `<username>` and `<password>` placeholders with your PostgreSQL credentials.

```yml
development:
  adapter: postgresql
  pool: 5
  timeout: 5000
  database: my_database_development
  password: ****

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  adapter: postgresql
  pool: 5
  timeout: 5000
  database: my_database_development
  password: ****

production:
  adapter: postgresql
  pool: 5
  timeout: 5000
  database: my_database_development
  password: ****
```

## Usage

To start the Tree Data Collection App, follow these steps:

1. Start the Rails server:

```bash
$ rails server
```

2. Access the application in your web
