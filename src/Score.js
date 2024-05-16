import React from "react"

export default function Score(props){
    return (
        <div className="scoreboard">
            <h2>Current Score: {props.score}</h2>
        </div>
    );
}