import React from "react";
import {nanoid} from "nanoid"


export default function (props) {
    return (<div className="Scoreboard">
        <ol>
            {props.scores.map(score => <li key={nanoid()}>{score}</li>)}
        </ol>
    </div>);
}