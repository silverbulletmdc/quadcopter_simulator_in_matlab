function tau = torques( inputs, L, b, k )
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
    tau = [
        L * k * (inputs(1) - inputs(3))
        L * k * (inputs(2) - inputs(4))
        b * (inputs(1) - inputs(2) + inputs(3) - inputs(4))];

end

