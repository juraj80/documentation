// Learn about API authentication here: plot.ly/nodejs/getting-started
// Find your api_key here: plot.ly/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');


var trace1 = {
  x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012], 
  y: [219, 146, 112, 127, 124, 180, 236, 207, 236, 263, 350, 430, 474, 526, 488, 537, 500, 439], 
  name: "Rest of world", 
  marker: {color: "rgb(55, 83, 109)"}, 
  type: "bar"
};
var trace2 = {
  x: [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012], 
  y: [16, 13, 10, 11, 28, 37, 43, 55, 56, 88, 105, 156, 270, 299, 340, 403, 549, 499], 
  name: "China", 
  marker: {color: "rgb(26, 118, 255)"}, 
  type: "bar"
};
var data = [trace1, trace2];
var layout = {
  title: "US Export of Plastic Scrap", 
  xaxis: {tickfont: {
      size: 14, 
      color: "rgb(107, 107, 107)"
    }}, 
  yaxis: {
    title: "USD (millions)", 
    titlefont: {
      size: 16, 
      color: "rgb(107, 107, 107)"
    }, 
    tickfont: {
      size: 14, 
      color: "rgb(107, 107, 107)"
    }
  }, 
  legend: {
    x: 0, 
    y: 1.0, 
    bgcolor: "rgba(255, 255, 255, 0)", 
    bordercolor: "rgba(255, 255, 255, 0)"
  }, 
  barmode: "group", 
  bargap: 0.15, 
  bargroupgap: 0.1
};
var graphOptions = {layout: layout, filename: "style-bar", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
