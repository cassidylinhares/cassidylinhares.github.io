import React from 'react';
import { Card, Elevation, AnchorButton, Tag } from '@blueprintjs/core';
import Projects from './projects.json';

const mapProjects = (projects) => {
    return projects.map(proj => (
        <Card interactive elevation={Elevation.TWO} className="projItem" key={proj.title}>
            <h4 className="bp3-heading">{proj.title}</h4>
            <AnchorButton text="Github" rightIcon="git-repo" href={proj.link} target={"_blank"}/> 
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
        <Tag round intent="warning" key={tag+i}>{tag}</Tag>  
    ));
}

function Project() {
    return (
        <div id="Project" >
            {mapProjects(Projects)}
        </div>
    );
}

export default Project;