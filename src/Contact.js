import React from 'react';
import { Card, AnchorButton } from "@blueprintjs/core";

function Contact() {
    return (
        <Card id="Contact">           
            <h2 className="bp3-heading">Connect with Me!</h2> 
            <AnchorButton text="Github" rightIcon="git-repo" href={"https://github.com/cassidylinhares"} target={"_blank"}/> 
            <AnchorButton text="LinkedIn" rightIcon="git-repo" href={"https://www.linkedin.com/in/cassidy-linhares/"} target={"_blank"}/>
        </Card>
    );
}

export default Contact;