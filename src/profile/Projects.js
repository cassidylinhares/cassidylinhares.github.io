import React from 'react';
import { Card, Elevation, AnchorButton } from '@blueprintjs/core';
import AliceCarousel from 'react-alice-carousel';
import Projects from './projects.json';
import { MapTags } from '../helper';

const mapProjects = (projects) => {
    return projects.map(proj => (
        <Card elevation={Elevation.TWO} className="projCard" key={proj.title}>
            <h3 className="bp3-heading">{proj.title}</h3>
            <AnchorButton text="Github" rightIcon="git-repo" className="projCardItem" href={proj.link} target={"_blank"}/> 
            <Card className="aboutItem aboutWriting">
                <p className="bp3-text-large">Description</p>
                <p>{proj.description}</p>
                <div>
                    {MapTags(proj.tags)}
                </div>
            </Card>
        </Card>
    ));
}

function Project() {
    return (
        <div id="Projects">
            <div style={{fontSize:"8rem", textAlign:"right"}}>Projects.</div>
            <AliceCarousel>
                {mapProjects(Projects)}
            </AliceCarousel>
        </div>
    );
}

export default Project;