import React from 'react';
import Header from "./Header";
import About from "./About";
import Project from "./Projects"
import "./App.css"

function App() {
  return (
    <div className="App">
      <Header/>
      <About/>
      <Project/>
    </div>
  );
}

export default App;
