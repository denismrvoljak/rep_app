> This is a work-in-progress project, where I try to learn Rails, and write all the code myself by hand ✍️

# Rep App

Minimalistic workout tracker. Built with Rails 8 + PostgreSQL.

## Setup

```bash
# Prerequisites: Homebrew, Ruby 4.0+, PostgreSQL 17+

# Start PostgreSQL
brew services start postgresql@17

# Install dependencies
bundle install

# Create databases
bin/rails db:create

# Run migrations
bin/rails db:migrate

# Start the server
bin/rails server
```

App runs at `http://localhost:3000`.

## What it does

- Create workouts with exercises (weight, sets, reps, notes)
- See previous performance when repeating exercises
- Tag workouts and exercises for filtering
- Track progress with statistics
