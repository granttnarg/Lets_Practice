import React, { Component } from 'react';
// import click1 from '../../../sounds/click1.wav';
// import click2 from '../../../sounds/click2.wav';

// import './Metronome.css';

class Metronome extends Component {
  constructor(props) {
    super(props);

    this.state = {
      playing: false,
      count: 0,
      bpm: 100,
      beatsPerMeasure: 4,
      click1: "https://res.cloudinary.com/dpxibu6l4/video/upload/v1573582513/click1_lyvhze.wav",
      click2: "https://res.cloudinary.com/dpxibu6l4/video/upload/v1573582513/click2_sbkb4l.wav"
    }

   };

    playClick = () => {
      const { count, beatsPerMeasure } = this.state

      if(count % beatsPerMeasure === 0) {
        new Audio(this.state.click1).play();
      } else {
        new Audio(this.state.click2).play();
      }

      this.setState(state => ({
        count: (state.count + 1 ) % state.beatsPerMeasure
      }));
    }

    startStop = () => {

      if(this.state.playing) {
        clearInterval(this.timer);
        this.setState({
          playing: false
        });
      } else {
        this.timer = setInterval(this.playClick, (60 / this.state.bpm) * 1000);
        this.setState({
          count: 0,
          playing:true
        }, this.playClick);
      }
      new Audio(this.state.click1).play()
    };

    handleBpmChange = (event) => {
      const bpm = event.target.value;

      if(this.state.playing) {
        clearInterval(this.timer);
        this.timer = setInterval(this.playClick, (60 / bpm) * 1000);

        this.setState({
        count: 0,
        bpm
        });
      } else {
        this.setState({ bpm });
    }
  }

  render() {
    let { playing, bpm} = this.state;

    return (
      <div className="metronome">
        <div className="bpm-slider">
          <div>{bpm} BPM</div>
          <input
            type="range"
            min="60"
            max="240"
            value={bpm}
            onChange={this.handleBpmChange} />
        </div>
        <button onClick={this.startStop}>
          {playing ? 'Stop' : 'Start'}
        </button>
      </div>
    );
  }
}

export default Metronome;
