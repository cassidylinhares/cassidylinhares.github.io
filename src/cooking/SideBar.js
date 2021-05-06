import React, {useState} from 'react';
import { Icon, FormGroup, Checkbox } from '@blueprintjs/core';

function Sidebar() {
    // get tags, make sure in json format
    // attach a useState hook
    const [tags, setTags] = useState({hi:false, bye:false});

    function changeFilters(key){
        setTags(prevState => {
            return {...prevState, [key]: !tags[key]}
        });
    }

    function mapCheckboxes () {
        return Object.keys(tags).map(k=>(
            <Checkbox checked={tags[k]} onChange={e=>changeFilters(k)} label={k} key={k}/>
        ));    
    }

    return (
        <div id="Sidebar" >
            <div className="bp3-input-group .modifier">
                <Icon icon="search"/>
                <input type="text" className="bp3-input" placeholder="Search" />
            </div>
            <FormGroup label="Filter By:">
                {mapCheckboxes()}
            </FormGroup>
        </div>
    );
}

export default Sidebar;