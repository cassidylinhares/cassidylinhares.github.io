import React from 'react';
import Header from "./Header";
import About from "./About";
import Project from "./Projects";
import Resume from "./Resume";
import Contact from "./Contact";
import "react-alice-carousel/lib/alice-carousel.css";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Header/>
      <About/>
      <Project/>
      <Resume/>
      <Contact/>
    </div>
  );
}

export default App;
