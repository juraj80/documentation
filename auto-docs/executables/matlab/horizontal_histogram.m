% Learn about API authentication here: plot.ly/matlab/getting-started
% Find your api_key here: plot.ly/settings/api

signin('TestBot', 'r1neazxo9w')

y = randn(500,1);

data = {...
  struct(...
    'y', y, ...
    'type', 'histogram')...
};
response = plotly(data, struct('filename', 'horizontal-histogram', 'fileopt', 'overwrite'));
plot_url = response.url
