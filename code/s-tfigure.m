p1 = polyfit(ms,mm,2);
p2 = polyfit(ms1,mm1,2);
t1 = 0:0.01:0.44;
t2 = 2.01:0.01:2.45;
y1 = polyval(p1,t1);
y2 = polyval(p2,t2);

hold on
plot(ms,mm);
plot(ms1,mm1);
plot(t1,y1);
plot(t2,y2);
line([0.44,2.01],[2,2],'linestyle',':');
line([0.37,0.37],[0,1.54],'linestyle',':');
line([2.08,2.08],[0,1.54],'linestyle',':');
line([0,2.08],[1.54,1.54],'linestyle',':');
legend('0-0.44ms实际运动轨迹','2.01ms-2.45ms实际运动轨迹','0-0.44ms二次函数拟合的运动轨迹','2.01ms-2.45ms二次函数拟合的运动轨迹' );
ylim([0,3.0]);
hold off