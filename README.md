# Booking System Challenge

A Rails API application for managing activity bookings. This project is a coding challenge implementation.

📝 [Challenge description](https://docs.google.com/document/d/1EoSu_37SIi6Ogtloaiydgd6-PBQ8cy5QMTZJZ0o-7IA/edit?usp=sharing)

## Tech Stack

- **Ruby** 3.4.7
- **Rails** 8.1
- **PostgreSQL** 16
- **RSpec** for testing
- **Docker** & **Docker Compose** for containerization

## Getting Started

### Prerequisites

- Docker and Docker Compose installed
- OR Ruby 3.4.7 and PostgreSQL 16 installed locally

### Running with Docker (Recommended)

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd booking-system-challenge
   ```

2. **Build and start services**

   ```bash
   docker compose up --build
   ```

3. **Set up the database** (in a new terminal)

   ```bash
   docker compose exec web ./bin/rails db:create db:migrate
   ```

4. **Access the application**

   The API will be available at `http://localhost:3000`

### Running Locally

1. **Install dependencies**

   ```bash
   bundle install
   ```

2. **Configure the database**

   Make sure PostgreSQL is running and update credentials if needed:

   ```bash
   export DATABASE_HOST=localhost
   export DATABASE_USERNAME=postgres
   export DATABASE_PASSWORD=postgres
   ```

3. **Set up the database**

   ```bash
   ./bin/rails db:create db:migrate
   ```

4. **Start the server**

   ```bash
   ./bin/rails server
   ```

## Running Tests

### With Docker

```bash
docker compose exec web bundle exec rspec
```

### Locally

```bash
bundle exec rspec
```

## Useful Commands

### Rails Console

```bash
# With Docker
docker compose exec web rails console

# Locally
./bin/rails console
```

### Database Operations

```bash
# Reset database
docker compose exec web rails db:reset

# Run migrations
docker compose exec web rails db:migrate

# Seed database
docker compose exec web rails db:seed
```

### Stop Services

```bash
docker compose down

# To also remove volumes (database data)
docker compose down -v
```

## Project Structure

```
app/
├── controllers/    # API controllers
├── models/         # ActiveRecord models
├── services/       # Business logic services
└── jobs/           # Background jobs

spec/
├── models/         # Model specs
├── requests/       # Request/integration specs
├── services/       # Service specs
└── factories/      # FactoryBot factories
```

## License

This project is part of a coding challenge.
