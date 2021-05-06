import React from 'react';
import Header from "./profile/Header";
import About from "./profile/About";
import Project from "./profile/Projects";
import Resume from "./profile/Resume";
import Contact from "./profile/Contact";
// import Sidebar from "./cooking/SideBar";
// import RecipeCards from "./cooking/RecipeCards";
import "./App.css";
import "./common.css";
import 'react-alice-carousel/lib/alice-carousel.css';

function App() {
  return (
    <div className="App">
      <Header/>
      <About/>
      <Resume/>
      <Project/>
      <Contact/>
      {/* <Sidebar/>
      <RecipeCards/> */}
    </div>
  );
}

export default App;
