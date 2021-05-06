import React from 'react';
import { Tag } from '@blueprintjs/core';

export function MapTags(tags) {
    return tags.map((tag, i) => (
        <Tag round intent="primary" key={tag+i} className="tags">{tag}</Tag>  
    ));
}