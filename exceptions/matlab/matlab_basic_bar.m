signin('TestBot', 'r1neazxo9w')

x = 1900:10:2000;
y = [75.995,91.972,105.711,123.203,131.669,...
     150.697,179.323,203.212,226.505,249.633,281.422];

fig = figure;
bar(x,y);

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(fig, 'filename', 'matlab-basic-bar');
plotly_url = response.url;
