# README
I am using MAC so the instructions will be according to the MAC

Running this project:
Install the rails and ruby using rvm or rbenv(versions can be found in Gems file)

Tapin and Tapout of the card works from API requests(API tested)
links:

This system have four db tables:
Users
Trips
Stations
Zones
Fares

First i created new project using "rails new" command then added the migration according to the needs

In this application we have both API and Non-API module
API Part:
This module will take API request from the card reader when users tap there card for trip

Non API:
This module will show user there journey details and remaining balance in account

Not implemented in this:
Token based authintication

More concentrated on the logic other than design and DRY up the controller
