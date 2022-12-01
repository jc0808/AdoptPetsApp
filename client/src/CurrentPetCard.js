export default function CurrentPetCard({ id, name, pet_type, breed, image, giveUpPet }) {

    function handleClick() {
        giveUpPet(id)
    }
    return (
        <div className="card">
            <img src={image} alt={name} />
            <div className="info">
                Name: {name} | Type: {pet_type} | Breed: {breed}
            </div>
            <div className="giveUpButton" onClick={handleClick}>Give Up?</div>
        </div>
    )
}