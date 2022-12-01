import CurrentPetCard from "./CurrentPetCard";

export default function Home({ currentUser, giveUpPet }) {

    const displayCurrentPets = currentUser.pets.map(pet => {
        return (
            <CurrentPetCard key={pet.id} name={pet.name} pet_type={pet.pet_type} breed={pet.breed} id={pet.id} image={pet.image} giveUpPet={giveUpPet} />
        )
    })

    return (
        <div className="home">
            <div className="welcomeMessage">
                <h2>Welcome {currentUser.firstName}!</h2>
            </div>


            <div className="container">
                <div className="boxDisplay">Your Pets</div>
                <div className="rows">

                    {displayCurrentPets}
                </div>
            </div>

        </div>
    )
}
