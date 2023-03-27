import './App.css';
import React from 'react';
import { BrowserRouter, Route, Link, Routes } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib';

function App() {
  return (
    <BrowserRouter>
      
      <div className="App">
        {/* <header className='App-header'> */}
          <Link to="/">Home</Link>
          <Link to="/otherpage">Other Page</Link>
        {/* </header> */}
        <div>
        <Routes>
          <Route exact path="/" element={ <Fib /> } />
          <Route path="/otherpage" element={ <OtherPage/> } />
        </Routes> 
        </div>
      </div>
    </BrowserRouter>
  );
}

export default App;
