import { useState } from "react";
import { useHistory } from "react-router-dom";

export default function Login({ handleLogin }) {

    const navigate = useHistory();
    const [username, setUsername] = useState(null);
    const [password, setPassword] = useState(null);
    const [error, setError] = useState(null);


    function handleUsername(e) {
        setUsername(e.target.value);
    }

    function handlePassword(e) {
        setPassword(e.target.value)
    }

    function handleSubmit(e) {
        e.preventDefault()

        fetch("/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ username, password }),
        })
            .then((r) => {
                if (r.ok) {
                    r.json().then(handleLogin)
                } else {
                    setError("Invalid username or password")
                }
            })

    }

    return (
        <div className="credentialsPage">
            <div className="loginBox">
                <h2>Welcome To Love and Joy Adoption Site!</h2>

                <h3>Enter your Credentials</h3>
                <label style={{ color: "red" }}>{error}</label>

                <form className="form" onSubmit={handleSubmit}>

                    {/* <label htmlFor="username">Username:</label> */}
                    <input id="username" name="username" placeholder="Enter Username..." type="text" onChange={handleUsername}></input>

                    {/* <label htmlFor="password">Password:</label> */}
                    <input id="password" name="password" placeholder="Enter Password..." type="password" onChange={handlePassword}></input>

                    <div className="loginButton">
                        <button>Login</button>
                    </div>
                </form>


                <div className="lowerBox">
                    <div onClick={() => navigate.push('/resetPassword')} style={{ cursor: "pointer" }}>Forgot Password?</div>

                    <span className="dotted">-------------------------</span>

                    <div onClick={() => navigate.push('/signUp')} style={{ cursor: "pointer" }}>Create an Account</div>
                </div>



            </div>
        </div>
    )
}