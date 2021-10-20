import React, {useState} from "react";


function NewRequestForm ({handleAddRequest}) {
    const [formData, setFormData] = useState({location: "", userid: null, date: ""})

    //handle change 
    function handleChange (event) {
        setFormData({...formData, [event.target.name]: event.target.value})
    }

    //handle submit
    function handleSubmit (event) {
        event.preventDefault()

        const newRequest = {
            location: formData.location,
            userid: formData.userid,
            date: formData.date,
            status: "pending"
  
        }
        
        const configObj = {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newRequest)
        }
        
        fetch("http://localhost:3000/requests", configObj)
        .then (r=> r.json())
        .then(handleAddRequest)
    }

    

    return (
     <section>
         <form onSubmit={handleSubmit} className = "form" autoCorrect = "off">
         <label htmlFor="location">Location</label>
         <textarea
                id="location"
                name="location"
                value={formData.location}
                onChange = {handleChange}
                />
          <input type="date" />
          <input type="time" />    
         </form>
     </section>   
    )
}

export default NewRequestForm;