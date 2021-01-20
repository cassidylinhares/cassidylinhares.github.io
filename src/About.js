import React from 'react';
import { Card, Elevation } from '@blueprintjs/core';

function About() {
    return (
        <div id="About" >
            <Card interactive elevation={Elevation.TWO} className="flexItem" >
                <img src={"/bitmoji.png"}  alt="Me"/>
                <h4 className="bp3-heading">Cassidy Linhares</h4>
                <h6 className="bp3-heading">Software Engineer</h6>  
            </Card>
            <Card elevation={Elevation.TWO} className="flexItem aboutWriting">
                    <p className="bp3-text-large">
                        Hello! I'm Cassidy, a Software Engineer in the making! 
                    </p>
                    <p>
                        I currently am attending Ontario Tech Univeristy pursuing a degree in the Bachelors of Engineering as a Software Engineer.
                        I enjoy designing and developing web applications, problem solving, and making things on the Raspberry Pi to make my life simpler.
                        I also enjoy many hobbies such as cooking, rock climbing, and have a green thumb for indoor gardening. 
                    </p>
            </Card>
        </div>
    );
}

export default About;