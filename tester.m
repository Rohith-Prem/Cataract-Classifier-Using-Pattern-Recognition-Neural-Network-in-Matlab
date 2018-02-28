%output 1=mild 2=medium 3=severe
input = transpose(features);
t = transpose(targets);
y = retinalCataractClassifier(input);
figure, plotconfusion(t,y)
figure, plotroc(t,y)
out = vec2ind(y);
output = transpose(out)