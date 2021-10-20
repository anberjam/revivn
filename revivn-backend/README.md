The backend was written in Ruby on Rails, with the ActiveRecord framework in place.

You can run the server by typing rails s in the terminal.

There are two tables, where directors have a one to many relationship with requests.

directors have one attribute, name:string

requests have the following attributes -
location:string //where to pick up
date:string //when you want to schedule the pickup
status:string //initially set to pending
userid:integer (since a request belongs to a director)
date_status_updated:datetime //when the status was updated last

In the routes, I included 
-GET http requests to see all requests/directors
-GET http requests to see a specific request/director
-POST http requests to create a new request/director
-DELETE http requests to delete request/director
-PATCH http requests to edit request/director
All routes are linked to actions in the Requests or Director Controllers









