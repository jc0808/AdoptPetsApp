export default function CardPet({ id, name, image, breed, age, adopted, handleAdopt, pet_type }) {

    function onAdopt() {
        handleAdopt(id, pet_type)
    }

    return (
        <div className="cardPet">
            <div className="image_card">
                <img src={image} alt={name} />
            </div>

            <label>Name: {name}</label>
            <label>Breed: {breed}</label>
            <label>Age: {age} years</label>

            <div className="adopt">
                {adopted ? <div className="adopted"><label>Already adopted</label></div> : <button onClick={onAdopt}>Adopt?</button>}
            </div>
        </div>
    )
}