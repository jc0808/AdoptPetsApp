import { useHistory } from "react-router-dom"

export default function Profile({ currentUser, setCurrentUser }) {

    const navigate = useHistory();

    function handleDelete() {
        fetch(`/adopters/${currentUser.id}`, {
            method: "DELETE"
        })
            .then(setCurrentUser(null))
            .then(navigate.push('/'))
    }
    return (
        <div className="profile">
            <div className="containerProfile">
                <div className="userInfo">
                    <label>Name: {currentUser.firstName} {currentUser.lastName} </label>
                    <label >Username: {currentUser.credential.username}</label>

                    <div className="deleteAccount">
                        <button onClick={handleDelete}>Delete Account</button>
                    </div>
                </div>
            </div>
        </div>
    )
}