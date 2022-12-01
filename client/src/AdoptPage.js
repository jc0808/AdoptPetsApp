import CardPet from "./CardPet";

export default function AdoptPage({ currentUser, handlePetsOwned, shelters, setShelters }) {

    function handleAdopt(id, type) {

        const shelter_type = type.toLowerCase() === "dog" ? 0 : 1


        //the if statement checks what shelter the pet is in
        if (shelter_type === 0) {

            //updates the pets array of objects 
            const updatePets = shelters[shelter_type].pets.map(p => {
                if (p.id === id) {
                    return {
                        ...p,
                        "adopter_id": currentUser.id,
                        "adopted": true
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

            fetch(`/pets/${id}`, {
                method: "PATCH",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(updatePets.find(pet => pet.id === id)),
            })
                .then((r) => {
                    if (r.ok) {
                        r.json().then(handlePetsOwned)
                    }
                })

        } else if (shelter_type === 1) {

            //updates the pets array of objects

            const updatePets = shelters[shelter_type].pets.map(p => {
                if (p.id === id) {
                    return {
                        ...p,
                        "adopter_id": currentUser.id,
                        "adopted": true
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

            fetch(`/pets/${id}`, {
                method: "PATCH",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(updatePets.find(pet => pet.id === id)),
            })
                .then((r) => {
                    if (r.ok) {
                        r.json().then(handlePetsOwned)
                    }
                })


        }


    }



    if (shelters.length > 0) {
        const displayDogs = shelters[0].pets.map(p => {
            return (
                <CardPet key={p.id} name={p.name} breed={p.breed} age={p.age} image={p.image} adopted={p.adopted} id={p.id} handleAdopt={handleAdopt} pet_type={p.pet_type} />
            )
        })

        const displayCats = shelters[1].pets.map(p => {
            return (
                <CardPet key={p.id} name={p.name} breed={p.breed} age={p.age} image={p.image} adopted={p.adopted} id={p.id} handleAdopt={handleAdopt} pet_type={p.pet_type} />
            )
        })
        return (
            <div className="adoptHome">

                <div className="adoptPage">
                    <h2>Choose a pet and adopt</h2>

                    <label className="subtitle">Dogs Shelter</label>

                    <div className="petsContainer">

                        {displayDogs}

                    </div>

                    <br></br>
                    <br></br>

                    <label className="subtitle">Cats Shelter</label>

                    <div className="petsContainer">

                        {displayCats}

                    </div>
                </div>
            </div >
        );
    }


    return (
        <div></div>
    )
}