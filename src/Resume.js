import React from 'react';
import { Card, Elevation } from '@blueprintjs/core';
import Jobs from './resume.json';

const mapJobs = (jobs) => {
    return jobs.map(job => (
        <Card interactive elevation={Elevation.TWO} className="flexItem jobCard" key={job.title}>
            <div>
                <h4 className="bp3-heading">{job.title}</h4>
                <div>
                    <h6 className="bp3-heading">{job.company}</h6>
                    <h6 className="bp3-heading">{job.year}</h6>
                </div>
            </div>
            <Card className="aboutItem aboutWriting">
                <p className="bp3-text-large">Responsibilities</p>
                {mapDescription(job.description)}
            </Card>
        </Card>
    ));
}
const mapDescription = (description) => {
    let list = description.split("/").map(item => (
        <li>{item}</li>
    ));
    return (
        <ul className=".bp3-list">
            {list}
        </ul>
    )
}

function Resume() {
    return (
        <div id="Resume">
            <h3 className="bp3-heading">Resume</h3>
            <div className="Resume" >
                {mapJobs(Jobs)}
            </div>
        </div>
    );
}

export default Resume;