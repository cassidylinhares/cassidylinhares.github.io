import React from 'react';
import { Navbar, Alignment, AnchorButton } from "@blueprintjs/core";

function Contact() {
    return (
        <Navbar className="contact">           
            <Navbar.Group align={Alignment.CENTER}>
                <Navbar.Heading>Reach Out to Me!</Navbar.Heading> 
                <AnchorButton text="Github" rightIcon="git-repo" className="projCardItem" href={"https://github.com/cassidylinhares"} target={"_blank"}/> 
                <AnchorButton text="LinkedIn" rightIcon="git-repo" className="projCardItem" href={"https://www.linkedin.com/in/cassidy-linhares/"} target={"_blank"}/>
            </Navbar.Group>
        </Navbar>
    );
}

export default Contact;