
var trace1 = {
  x: [1, 2, 3, 4], 
  y: [0, 2, 3, 5], 
  fill: "tozeroy", 
  type: "scatter"
};
var trace2 = {
  x: [1, 2, 3, 4], 
  y: [3, 5, 1, 7], 
  fill: "tonexty", 
  type: "scatter"
};
var data = [trace1, trace2];
Plotly.plot(divid, data);
