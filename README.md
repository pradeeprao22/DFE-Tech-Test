# README
I am using MAC so the instructions will be according to the MAC

Running this project:
For this to work it is important to install the ruby and ruby on rails
Install the rails and ruby using rvm or rbenv(Version: Rails 6.1.3, Ruby 2.7.2)
May need to install the webpacker and yarn in terms of the system

Populate the data according to the data tables

For setup of rails and db

Run: bundle install
Run: rails db:migrate

Running the server: rails s
For running the console: rails c
For looking in db in console run: ActiveRecord::Base.connection.tables
for seeing migration status run: rails db:migrate:status

Tapin and Tapout of the card works from API requests(API tested)
links: localhost:3000/trips -----> request type: POST for creating the trip when user tap in tap out i am using postman for testing this.

This system have four db tables:
Users
Trips
Stations
Zones
Payments
Fares

First i created new project using "rails new" command then added the migration according to the needs

In this application we have both API and Non-API module
API Part:
This module will take API request from the card reader when users tap there card for trip

Non API:
This module will show user there journey details and remaining balance in account and able to load the amount

Not implemented in this:
Token based authintication for API

More logic other than design and DRYing up the controller

* Can explain what are all the things are covered most the logic can be found in controllers
* few cases are not convered
* test cases are not covered
* may find few errors