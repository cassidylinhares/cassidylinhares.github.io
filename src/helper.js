import React, { useState } from 'react';
import { Tag, Icon, Button } from '@blueprintjs/core';

export function MapTags(tags) {
    return tags.map((tag, i) => (
        <Tag round intent="primary" key={tag+i} className="tags">{tag}</Tag>  
    ));
}

export function Carousel(props) {
    const [index, setIndex] = useState(0);
    function back() {
        if(index <= 0) {
            setIndex(props.items.length-1);
        }else{
            setIndex(index-1);
        }
    }
    function next() {
        if(index >= props.items.length-1) {
            setIndex(0);
        }else{
            setIndex(index+1);
        }
    }

    return (
        <div>
            {props.items[index]}
            <div className="carousel-btns">
                <span onClick={e=>back()} >
                    <Icon icon="chevron-left" iconSize={30} className="carousel-btn"/>
                </span>
                <span onClick={e=>next()} className="carousel-btn">
                    <Icon icon="chevron-right" iconSize={30} />
                </span>
            </div>
        </div>
    );
}