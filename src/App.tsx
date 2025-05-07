import "./App.css";

function App() {
  return (
    <div className="app-container">
      <h1>AWS deployed from Github Actions</h1>
      <p>{import.meta.env.VITE_GA_MSG}</p>
    </div>
  );
}

export default App;
