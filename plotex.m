time = 0:1:Tf;
pd = BernsteinPolyStable(Cp,time/Tf);
plot(pd(1,:),pd(2,:),'color','b'); hold on;
plot(out.Bx.signals(1).values,out.Bx.signals(2).values,'color','r');
legend('desired','actual')