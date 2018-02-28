%   features - input data.
%   targets - target data.

x = features';
t = targets';

% Choose a Training Function
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'traiscg';

% Create a Pattern Recognition Network
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y);
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

% Save the Network
%cataractclassifier = net;
%save cataractclassifier;

% Plots
figure, plotconfusion(t,y)
figure, plotroc(t,y)

if (true)
    % Generate a matrix-only MATLAB function
    genFunction(net,'retinalCataractClassifier','MatrixOnly','yes');
end