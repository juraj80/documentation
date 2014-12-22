// Learn about API authentication here: plot.ly/nodejs/getting-started
// Find your api_key here: plot.ly/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');

for (var i = 0; i < 50; i ++) {
	y0[i] = Math.random();
	y1[i] = Math.random() + 1;
}


var trace1 = {
  y: y0, 
  type: "box"
};
var trace2 = {
  y: y1, 
  type: "box"
};
var data = [trace1, trace2];
var graphOptions = {filename: "basic-box-plot", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
