The front end is written in React.js

You can start the server by typing npm start in your terminal. 

So far, I have two components - App being the parent of NewRequestForm
-both import useState and useEffect hooks


In App.js
-array of requests and current user are held in state
-fetch request is made to the db to get all the requests
-passes down handleAddRequest function to child component that updates the state of requests


In newRequestForm.js
-formData is saved in state
-handleChange saves changes of formData to state
-handleSubmit posts a new request to the db and updates the state of requests 

____________________________________________
WHAT I WOULD DO NEXT:

-In NewRequestForm
    ~Add a SUBMIT button!!! and have onClick of the button run the handleSubmit function

-Create a new child component of App called RequestContainer 
    ~pass down requests as prop
    ~create a child component called RequestItem
    ~map through requests array and send info of each request as a prop to RequestItem

-In RequestItem
    ~display each individual request 





