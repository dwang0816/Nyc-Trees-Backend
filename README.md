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
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <username>
  password: <password>
  host: localhost

development:
  <<: *default
  database: tree_data_collection_development

test:
  <<: *default
  database: tree_data_collection_test

production:
  <<: *default
  database: tree_data_collection_production
  username: tree_data_collection
  password: <%= ENV['TREE_DATA_COLLECTION_DATABASE_PASSWORD'] %>
```

## Usage

To start the Tree Data Collection App, follow these steps:

1. Start the Rails server:

```bash
$ rails server
```

2. Access the application in your web
