import { useEffect, useState } from "react";
import { Switch, Route, NavLink } from "react-router-dom";
import AdoptPage from "./AdoptPage";
import './App.css';
import Home from "./Home";
import Login from "./Login";
import Profile from "./Profile";
import ResetPassword from "./ResetPassword";
import SignUp from "./SignUp";

function App() {

  const [currentUser, setCurrentUser] = useState(null);
  // const [givePetBack, setGivePetBack] = useState(null);
  const [shelters, setShelters] = useState([])


  useEffect(() => {

    fetch("/shelters")
      .then(r => r.json())
      .then(d => setShelters(d))

  }, [])

  //auto login
  useEffect(() => {
    fetch('/auth')
      .then(r => {
        if (r.ok) {
          r.json().then(user => setCurrentUser(user));
        }
      });
  }, [])


  //handles log in
  function handleLogin(user) {
    setCurrentUser(user)
  }

  //handles log out
  function handleLogout() {
    fetch('/logout', {
      method: "DELETE"
    })
      .then(setCurrentUser(null))
      .then(console.log(currentUser))
  }

  // add the new pet to the current user owned pets
  function handlePetsOwned(pet) {
    const update = { ...currentUser, "pets": [...currentUser.pets, pet] }
    setCurrentUser(update)
  }

  console.log(currentUser)

  function giveUpPet(id) {
    const findPet = currentUser.pets.find(pet => pet.id === id);

    const filterPet = currentUser.pets.filter(pet => pet !== findPet);

    const update = { ...currentUser, "pets": filterPet }

    setCurrentUser(update)

    const removePet = {
      ...findPet,
      "adopter_id": null,
      "adopted": false
    }
    givePetBack(removePet)


  }

  function givePetBack(pet) {

    const shelter_type = pet.pet_type.toLowerCase() === "dog" ? 0 : 1

    //the if statement checks what shelter the pet is in
    if (shelter_type === 0) {

      //updates the pets array of objects 
      const updatePets = shelters[shelter_type].pets.map(p => {
        if (p.id === pet.id) {
          return {
            ...p,
            "adopter_id": null,
            "adopted": false
          }
        } else {
          return {
            ...p
          }
        }
      });

      //updates the shelter with the updated array of objects
      const updateShelters = shelters.map(shelter => {
        if (shelter.id === 1) {
          return {
            ...shelter,
            "pets": updatePets
          }
        }

        return shelter
      })

      setShelters(updateShelters)

      fetch(`/giveback`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(pet),
      })

    } else if (shelter_type === 1) {

      //updates the pets array of objects

      const updatePets = shelters[shelter_type].pets.map(p => {
        if (p.id === pet.id) {
          return {
            ...p,
            "adopter_id": null,
            "adopted": false
          }
        } else {
          return {
            ...p
          }
        }
      });

      //updates the shelter with the updated array of objects
      const updateShelters = shelters.map(shelter => {
        if (shelter.id === 2) {
          return {
            ...shelter,
            "pets": updatePets
          }
        }

        return shelter
      })

      setShelters(updateShelters)

      fetch(`/giveback`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(pet),
      })

    }
  }



  return (
    <>
      {currentUser ?
        <div>
          <div className="headerBox">
            <div className="links">
              <NavLink to="/home" className="link">Home</NavLink>
              <NavLink to="/adopt" className="link">Adopt</NavLink>
              <NavLink to="/profile" className="link">Profile</NavLink>
              <NavLink to="/" className="link" onClick={handleLogout}>Log Out</NavLink>
            </div>

          </div>

          <Switch>
            <Route path="/home"><Home currentUser={currentUser} giveUpPet={giveUpPet} /></Route>
            <Route path="/adopt"><AdoptPage currentUser={currentUser} handlePetsOwned={handlePetsOwned} setShelters={setShelters} shelters={shelters} /></Route>
            <Route path="/profile"> <Profile currentUser={currentUser} setCurrentUser={setCurrentUser} /> </Route>
          </Switch>
        </div>
        :
        <Switch>
          <Route path="/resetPassword"> <ResetPassword /> </Route>
          <Route path="/signUp"> <SignUp handleLogin={handleLogin} /> </Route>
          <Route path="/"> <Login handleLogin={handleLogin} /> </Route>
        </Switch>
      }
    </>

  );
}

export default App;
