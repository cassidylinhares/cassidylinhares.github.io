import React from 'react';
import { Card, Elevation } from '@blueprintjs/core';
import { Carousel } from '../helper';
import Jobs from './resume.json';

const mapJobs = (jobs) => {
    return jobs.map(job => (
        <div key={job.title}>
            <Card elevation={Elevation.TWO} className="flexItem jobCard" key={job.title}>
                <div>
                    <h3 className="bp3-heading">{job.title}</h3>
                    <div>
                        <h5 className="bp3-heading">{job.company}</h5>
                        <h5 className="bp3-heading">{job.year}</h5>
                    </div>
                </div>
                <Card className="aboutItem aboutWriting">
                    <p className="bp3-text-large">Responsibilities</p>
                    {mapDescription(job.description)}
                </Card>
            </Card>
        </div>
    ));
}

const mapDescription = (description) => {
    let list = description.split("/").map((item,i) => (
        <li key={i}>{item}</li>
    ));
    return (
        <ul className=".bp3-list">
            {list}
        </ul>
    );
}

function Resume() {
    return (
        <div id="Resume">
            <div className="large-left">Experience.</div>
            <Carousel items={mapJobs(Jobs)}/> 
        </div>
    );
}

export default Resume;