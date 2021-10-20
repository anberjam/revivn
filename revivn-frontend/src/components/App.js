import React, {useState, useEffect} from "react";
import NewRequestForm from "./NewRequestForm";

function App () {
    const [requests, setRequests] = useState([])
    const [user, setUser] = useState("")

    useEffect(()=> {
        fetch("http://localhost:3000/requests")
        .then(r=>r.json())
        .then(requestData => {setRequests(requestData)})

    }
    ,[])

    //handleAddRequest function to add a request
    function handleAddRequest (newRequest) {
        setRequests([...requests, newRequest])
    }


    return (
        <div className = "App">
            Hello Director of IT!
            <NewRequestForm handleAddRequest = {handleAddRequest}  />
        </div>
    )
}

export default App;
