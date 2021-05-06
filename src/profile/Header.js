import React from 'react';
import { Navbar, Alignment } from "@blueprintjs/core";

const headers = ["About", "Resume", "Projects", "Contact"];

const mapHeader = (data) => {
    return data.map(item => (
        <a href={'#'+item} className={"headers"} key={item}>{item}</a>
    ));
}

function Header() {
    return (
        <Navbar fixedToTop>
            <Navbar.Group >
                <Navbar.Heading>Cassidy Linhares</Navbar.Heading> 
            </Navbar.Group>
           
            <Navbar.Group align={Alignment.RIGHT}>
                {mapHeader(headers)}
            </Navbar.Group>
        </Navbar>
    );
}

export default Header;