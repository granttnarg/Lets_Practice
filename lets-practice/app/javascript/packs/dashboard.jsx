// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.
import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import {Image, Video, Transformation, CloudinaryContext} from 'cloudinary-react';

class Dashboard extends Component {

  constructor(props) {
    super(props);

    this.state = {
      term: '',
      autoCompleteResults: [],
      itemSelected: {},
      showItemSelected: false
    };

    $.getJSON('/search?q=' + this.state.term)
      .then(response => this.setState({ autoCompleteResults: response.songs }))
  }

  getAutoCompleteResults(e){
    e.preventDefault();
    this.setState({
      term: e.target.value
    }, () => {
      $.getJSON('/search?q=' + this.state.term)
        .then(response => this.setState({ autoCompleteResults: response.songs }))
    });
  }

  render(){
    let autoCompleteList = this.state.autoCompleteResults.map((response, index) => {
      return <div key={index} className="row show-page">
              <div id="search-results" className="container">
              <a href={"songs/" + response.id}>
                <div className="card-product index-card"key={index}>

                <Image cloudName="dpxibu6l4" publicId={response.photo.url} width="300" crop="scale" />

                  <div className="card-product-infos">
                    <h2>{response.artist}</h2>
                    <h3>{response.name}</h3>
                    <h3 id="bpm-key-card"> {response.native_bpm} BPM  / {response.key}</h3>
                  </div>
                </div>
              </a>
              </div>
            </div>
    });

    return (
      <div className="container">

        <div className="song-search-input">
        <h2 id="" className="show-info-search-head">Search via Artist, Track, Key, Keyword or BPM</h2>
          <input id="search-input" ref={ (input) => { this.searchBar = input } } value={ this.state.term } onChange={ this.getAutoCompleteResults.bind(this) } type='text' placeholder='Search...' />
          { autoCompleteList }
        </div>
      </div>
    )
  }
}

// document.addEventListener('turbolinks:load', (e) => {
  ReactDOM.render(
    <Dashboard />, document.getElementById("results-div"))
// });


// export default Dashboard;

// document.body.appendChild(document.createElement('div')
