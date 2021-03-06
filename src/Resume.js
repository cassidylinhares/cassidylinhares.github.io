import React from 'react';
import { Card, Elevation } from '@blueprintjs/core';
import AliceCarousel from 'react-alice-carousel'
import Jobs from './resume.json';


const mapJobs = (jobs) => {
    return jobs.map(job => (
        <div>
        <Card interactive elevation={Elevation.TWO} className="flexItem jobCard" key={job.title}>
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
            <div className="resume">Experience.</div>
            <AliceCarousel>
                {mapJobs(Jobs)}
            </AliceCarousel>
            
        </div>
    );
}

export default Resume;