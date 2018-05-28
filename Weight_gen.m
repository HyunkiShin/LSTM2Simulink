

SequenceLength = 30;
WormUp_Time = 5;
Default_Output = 1;

NumHiddenUnits=HKnet.Layers(3, 1).InputSize;
LSTM_W=HKnet.Layers(2,1).InputWeights;
LSTM_b=HKnet.Layers(2,1).Bias;
LSTM_R=HKnet.Layers(2,1).RecurrentWeights;

FullyConnected_Weights=HKnet.Layers(3,1).Weights;
FullyConnected_Bias=HKnet.Layers(3,1).Bias;

W.Wi=LSTM_W(1:NumHiddenUnits,:);
W.Wf=LSTM_W(NumHiddenUnits+1:2*NumHiddenUnits,:);
W.Wg=LSTM_W(2*NumHiddenUnits+1:3*NumHiddenUnits,:);
W.Wo=LSTM_W(3*NumHiddenUnits+1:4*NumHiddenUnits,:);

R.Ri=LSTM_R(1:NumHiddenUnits,:);
R.Rf=LSTM_R(NumHiddenUnits+1:2*NumHiddenUnits,:);
R.Rg=LSTM_R(2*NumHiddenUnits+1:3*NumHiddenUnits,:);
R.Ro=LSTM_R(3*NumHiddenUnits+1:4*NumHiddenUnits,:);

b.bi=LSTM_b(1:NumHiddenUnits,:);
b.bf=LSTM_b(NumHiddenUnits+1:2*NumHiddenUnits,:);
b.bg=LSTM_b(2*NumHiddenUnits+1:3*NumHiddenUnits,:);
b.bo=LSTM_b(3*NumHiddenUnits+1:4*NumHiddenUnits,:);

Last_result = zeros(SequenceLength,1);
Last_result(end,:) = 1;

save Network;