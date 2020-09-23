import React from 'react';
import { Card, Elevation, AnchorButton, Tag } from '@blueprintjs/core';
import Projects from './projects.json';

const mapProjects = (projects) => {
    return projects.map(proj => (
        <Card interactive elevation={Elevation.TWO} className="projCard" key={proj.title}>
            <h3 className="bp3-heading">{proj.title}</h3>
            <AnchorButton text="Github" rightIcon="git-repo" className="projCardItem" href={proj.link} target={"_blank"}/> 
            <Card className="aboutItem aboutWriting">
                <p className="bp3-text-large">Description</p>
                <p>{proj.description}</p>
                <div>
                    {mapProjecTags(proj.tags)}
                </div>
            </Card>
        </Card>
    ));
}

const mapProjecTags = (tags) => {
    return tags.map((tag, i) => (
        <Tag round intent="primary" key={tag+i} className="miniFlexItem">{tag}</Tag>  
    ));
}

function Project() {
    return (
        <div id="Project">
            <div className="Project" >
                {mapProjects(Projects)}
            </div>
            <div style={{fontSize:"9rem"}}>Projects.</div>
        </div>
    );
}

export default Project;