% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')


trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [4, 5, 6], ...
  'name', 'yaxis1 data', ...
  'type', 'scatter');
trace2 = struct(...
  'x', [2, 3, 4], ...
  'y', [40, 50, 60], ...
  'name', 'yaxis2 data', ...
  'yaxis', 'y2', ...
  'type', 'scatter');
trace3 = struct(...
  'x', [4, 5, 6], ...
  'y', [40000, 50000, 60000], ...
  'name', 'yaxis3 data', ...
  'yaxis', 'y3', ...
  'type', 'scatter');
trace4 = struct(...
  'x', [5, 6, 7], ...
  'y', [400000, 500000, 600000], ...
  'name', 'yaxis4 data', ...
  'yaxis', 'y4', ...
  'type', 'scatter');
data = {trace1, trace2, trace3, trace4};
layout = struct(...
    'title', 'multiple y-axes example', ...
    'width', 800, ...
    'xaxis', struct('domain', [0.3, 0.7]), ...
    'yaxis', struct(...
      'title', 'yaxis title', ...
      'titlefont', struct('color', '#1f77b4'), ...
      'tickfont', struct('color', '#1f77b4')), ...
    'yaxis2', struct(...
      'title', 'yaxis2 title', ...
      'titlefont', struct('color', '#ff7f0e'), ...
      'tickfont', struct('color', '#ff7f0e'), ...
      'anchor', 'free', ...
      'overlaying', 'y', ...
      'side', 'left', ...
      'position', 0.15), ...
    'yaxis3', struct(...
      'title', 'yaxis4 title', ...
      'titlefont', struct('color', '#d62728'), ...
      'tickfont', struct('color', '#d62728'), ...
      'anchor', 'x', ...
      'overlaying', 'y', ...
      'side', 'right'), ...
    'yaxis4', struct(...
      'title', 'yaxis5 title', ...
      'titlefont', struct('color', '#9467bd'), ...
      'tickfont', struct('color', '#9467bd'), ...
      'anchor', 'free', ...
      'overlaying', 'y', ...
      'side', 'right', ...
      'position', 0.85));
response = plotly(data, struct('layout', layout, 'filename', 'multiple-axes-multiple', 'fileopt', 'overwrite'));
plot_url = response.url
