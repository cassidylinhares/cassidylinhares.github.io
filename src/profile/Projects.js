import React from 'react';
import { Card, Elevation, AnchorButton } from '@blueprintjs/core';
import Projects from './projects.json';
import { MapTags, Carousel } from '../helper';

const mapProjects = (projects) => {
    return projects.map(proj => (
        <div key={proj.title}>
            <Card elevation={Elevation.TWO} className="projCard">
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
        </div>
    ));
}

function Project() {
    return (
        <div id="Projects">
            <div className="large-right">Projects.</div>
            <Carousel items={mapProjects(Projects)}/>
        </div>
    );
}

export default Project;