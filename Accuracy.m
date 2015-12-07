%Accuracy
%a seperate set of data will be used for obtaining the accuracy
load('Project2');
n = 5; %Adjust Number of Test inputs
testoutput = zeros(n,1);
z = zeros(n,1);
accuracy = 0;
for i = 1:n
    %Predict Values
        a = input_sample(i,:);
    %Roundoff answer to 1 or 0
        testoutput(i,1) = net2(a');
    
    %Compare predicted from expected output
        %z = testoutput(i,1) - output(i,1); %change
        z(i,1) = (1-((abs(testoutput(i,1)-Output_Norm(i,1)))/(testoutput(i,1))))*100;
                %(ideal-acquired)/ideal *100
    %Count the number of correct outputs
    accuracy = accuracy + z(i,1);
end

accuracy = accuracy/n