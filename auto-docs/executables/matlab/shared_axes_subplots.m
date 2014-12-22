% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')


trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [2, 3, 4], ...
  'type', 'scatter');
trace2 = struct(...
  'x', [20, 30, 40], ...
  'y', [5, 5, 5], ...
  'xaxis', 'x2', ...
  'yaxis', 'y', ...
  'type', 'scatter');
trace3 = struct(...
  'x', [2, 3, 4], ...
  'y', [600, 700, 800], ...
  'xaxis', 'x', ...
  'yaxis', 'y3', ...
  'type', 'scatter');
trace4 = struct(...
  'x', [4000, 5000, 6000], ...
  'y', [7000, 8000, 9000], ...
  'xaxis', 'x4', ...
  'yaxis', 'y4', ...
  'type', 'scatter');
data = {trace1, trace2, trace3, trace4};
layout = struct(...
    'xaxis', struct('domain', [0, 0.45]), ...
    'yaxis', struct('domain', [0, 0.45]), ...
    'xaxis4', struct(...
      'domain', [0.55, 1], ...
      'anchor', 'y4'), ...
    'xaxis2', struct('domain', [0.55, 1]), ...
    'yaxis3', struct('domain', [0.55, 1]), ...
    'yaxis4', struct(...
      'domain', [0.55, 1], ...
      'anchor', 'x4'));
response = plotly(data, struct('layout', layout, 'filename', 'shared-axes-subplots', 'fileopt', 'overwrite'));
plot_url = response.url
