import React from 'react';
import { Card, Elevation } from '@blueprintjs/core';
import Jobs from './projects.json';

const mapJobs = (jobs) => {
    return jobs.map(job => (
        <Card interactive elevation={Elevation.TWO} className="flexItem projCard" key={job.title}>
            <div>
                <h4 className="bp3-heading">{job.title}</h4>
                <div>
                    <h6 className="bp3-heading">{job.company}</h6>
                    <h6 className="bp3-heading">{job.year}</h6>
                </div>
            </div>
            <Card className="aboutItem aboutWriting">
                <p className="bp3-text-large">Responsibilities</p>
                <p>{job.description}</p>
            </Card>
        </Card>
    ));
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