% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')

x0 = randn(500,1);
x1 = randn(500,1)+1;

trace1 = struct(...
  'x', x0, ...
  'opacity', 0.75, ...
  'type', 'histogram');
trace2 = struct(...
  'x', x1, ...
  'opacity', 0.75, ...
  'type', 'histogram');
data = {trace1, trace2};
layout = struct('barmode', 'overlay');
response = plotly(data, struct('layout', layout, 'filename', 'overlaid-histogram', 'fileopt', 'overwrite'));
plot_url = response.url
