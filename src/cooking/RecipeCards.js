import React, {useState} from 'react';
import { Card, Elevation, Button } from '@blueprintjs/core';
import { MapTags } from '../helper';


function RecipeCard(props) {
    return (
        <Card elevation={Elevation.TWO}>
            <h3 className="bp3-heading">{props.recipe.name}</h3>
            <p>{props.recipe.desc}</p>
            <div>
                {MapTags(props.recipe.tags)}
            </div>
            <Button text="Close" intent={"danger"} onClick={e=>{props.open(false)}}/>
        </Card>
    );
}

function RecipeCards() {
    // get recipes
    const recipes = [
        {name:"Food", desc:"yummy", ingredients:"stuff", directions:"huh", tags:['o', 'b']}, 
        {name:"Food2", desc:"yummy", ingredients:"stuff", directions:"huh", tags:['o', 'b']}
    ];
    const [recipe, setRecipe] = useState({name:"Food", desc:"yummy", ingredients:"stuff"});
    const [cardOpen, setCardOpen] = useState(false);

    function clickRecipe(key){
        setRecipe(recipes[key]);
        setCardOpen(true);
    }

    function mapRecipes () {
        return recipes.map((r, i)=>(
            <Card className="recipeCard" interactive={true} elevation={Elevation.TWO} key={i} onClick={e=>clickRecipe(i)}>
                <h3 className="bp3-heading center">{r.name}</h3>
                <p>{r.desc}</p>
                <div>
                    {MapTags(r.tags)}
                </div>
            </Card>
        ));    
    }

    return (
        <div id="Recipes">
            {cardOpen ? 
            <RecipeCard recipe={recipe} open={setCardOpen}/> 
            : mapRecipes()
            }
        </div>
    );
}

export default RecipeCards;