close all;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IMPORT DATA 

%PARKINSONS
%timestamps
park6data = readmatrix('park6.csv');%reads in time file 
park14data = readmatrix('park14.csv');%reads in time file 
park9data = readmatrix('park9.csv');%reads in time file 
park12data = readmatrix('park12.csv');%reads in time file 
park3data = readmatrix('park3.csv');%reads in time file 
%force
%LEFT
left_forcepark9 = fread(fopen("park9.let")); % opens force file 
left_forcepark3 = fread(fopen("park3.let")); % opens force file 
left_forcepark14 = fread(fopen("park14.let")); % opens force file 
left_forcepark12= fread(fopen("park12.let")); % opens force file 
left_forcepark6 = fread(fopen("park6.let")); % opens force file 

%read in
%RIGHT
right_forcepark9 = fread(fopen("park9.rit")); % opens force file 
right_forcepark3 = fread(fopen("park3.rit")); % opens force file 
right_forcepark14 = fread(fopen("park14.rit")); % opens force file 
right_forcepark12= fread(fopen("park12.rit")); % opens force file 
right_forcepark6 = fread(fopen("park6.rit")); % opens force file 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%CONTROL
%timestamps
control3data = readmatrix('control3.csv');%reads in time file 
control1data = readmatrix('control1.csv');%reads in time file 
control13data = readmatrix('control13.csv');%reads in time file 
control16data = readmatrix('control16.csv');%reads in time file 
control5data = readmatrix('control5.csv');%reads in time file 
%force
%LEFT
lfcon3 = fread(fopen("control3.let")); % opens force file 
lfcon1 = fread(fopen("control1.let")); % opens force file 
lfcon13 = fread(fopen("control13.let")); % opens force file 
lfcon16= fread(fopen("control16.let")); % opens force file 
lfcon5 = fread(fopen("control5.let")); % opens force file 
%RIGHT
rfcon3 = fread(fopen("control3.rit")); % opens force file 
rfcon1 = fread(fopen("control1.rit")); % opens force file 
rfcon13 = fread(fopen("control13.rit")); % opens force file 
rfcon16= fread(fopen("control16.rit")); % opens force file 
rfcon5 = fread(fopen("control5.rit")); % opens force file 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%HUNTINTOGNS
%timestamps 
hunt20data = readmatrix('hunt20.csv');%reads in time file 
hunt9data = readmatrix('hunt9.csv');%reads in time file 
hunt2data = readmatrix('hunt2.csv');%reads in time file 
hunt15data = readmatrix('hunt15.csv');%reads in time file 
hunt18data = readmatrix('hunt18.csv');%reads in time file 
%force
%LEFT
lfhunt20 = fread(fopen("hunt20.let")); % opens force file 
lfhunt9 = fread(fopen("hunt9.let")); % opens force file 
lfhunt2 = fread(fopen("hunt2.let")); % opens force file 
lfhunt15= fread(fopen("hunt15.let")); % opens force file 
lfhunt18 = fread(fopen("hunt18.let")); % opens force file 
%RIGHT
rfhunt20 = fread(fopen("hunt20.rit")); % opens force file 
rfhunt9 = fread(fopen("hunt9.rit")); % opens force file 
rfhunt2 = fread(fopen("hunt2.rit")); % opens force file 
rfhunt18= fread(fopen("hunt18.rit")); % opens force file 
rfhunt15 = fread(fopen("hunt15.rit")); % opens force file 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ALS
%timestamps 
als1data = readmatrix('als1.csv');%reads in time file 
als3data = readmatrix('als3.csv');%reads in time file 
als8data = readmatrix('als8.csv');%reads in time file 
als9data = readmatrix('als9.csv');%reads in time file 
als10data = readmatrix('als10.csv');%reads in time file 
%force
%LEFT
lfals1 = fread(fopen("als1.let")); % opens force file 
lfals3 = fread(fopen("als3.let")); % opens force file 
lfals8 = fread(fopen("als8.let")); % opens force file 
lfals9= fread(fopen("als9.let")); % opens force file 
lfals10 = fread(fopen("als10.let")); % opens force file 
%RIGHT
rfals1 = fread(fopen("als1.rit")); % opens force file 
rfals3 = fread(fopen("als3.rit")); % opens force file 
rfals8 = fread(fopen("als8.rit")); % opens force file 
rfals9= fread(fopen("als9.rit")); % opens force file 
rfals10 = fread(fopen("als10.rit")); % opens force file 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PART 1
%Effect of disease state on gait asymmetry:
%GAIT ASSYMETERY 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TIME ASYMMETRY

%PARKINSONS
fprintf("parkinsons6") 

%left
%row 4
left_timepark6 = park6data(:,4);
SWLpark6 = (left_timepark6);

%right
%row 5
right_timepark6 = park6data(:,5);
SWRpark6 = (right_timepark6); 

%time assymetry park6
park6timeasym = abs(log(SWRpark6./SWLpark6))*100; % ./ to divide arrays 
mean(park6timeasym)

fprintf("parkinsons14")

%left
%row 4
left_timepark14 = park14data(:,4);
SWLpark14 = (left_timepark14);
%right
%row 5
right_timepark14 = park14data(:,5);
SWRpark14 = (right_timepark14);

%time assymetry park14
park14timeasym = abs(log(SWRpark14./SWLpark14))*100;
mean(park14timeasym)

fprintf("parkinsons3")

%left
%row 4
left_timepark3 = park3data(:,4);
SWLpark3 = (left_timepark3);

%right
%row 5
right_timepark3 = park3data(:,5);
SWRpark3 = (right_timepark3);

%time assymetry park3
park3timeasym = abs(log(SWRpark3./SWLpark3))*100;
mean(park3timeasym)

fprintf("parkinsons9")

%left
%row 4
left_timepark9 = park9data(:,4);
SWLpark9 = (left_timepark9);

%right
%row 5
right_timepark9 = park9data(:,5);
SWRpark9 = (right_timepark9);

%time assymetry park9
park9timeasym = abs(log(SWRpark9./SWLpark9))*100;
mean(park9timeasym)

fprintf("parkinsons12")

%left
%row 4
left_timepark12 = park12data(:,4);
SWLpark12 = (left_timepark12);

%right
%row 5
right_timepark12 = park12data(:,5);
SWRpark12 = (right_timepark12);

%time assymetry park12
park12timeasym = abs(log(SWRpark12./SWLpark12))*100;
mean(park12timeasym)

parkinsonGA_av = mean([park6timeasym(1:200),park12timeasym(1:200),park3timeasym(1:200),park9timeasym(1:200),park14timeasym(1:200)]);

%time
park6time = park6data(:,1);
park12time = park12data(:,1);
park14time = park14data(:,1);
park3time = park3data(:,1);
park9time = park9data(:,1);

avg_time_park =mean([park6time(1:200),park12time(1:200),park3time(1:200),park9time(1:200),park14time(1:200)]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONTROL
fprintf("control3")

%left
%row 4
left_timecon3 = control3data(:,4);
SWLcon3 =(left_timecon3);
%right
%row 5
right_timecon3 = control3data(:,5);
SWRcon3 =(right_timecon3);
%time asymetery control 3
con3timeasym = abs(log(SWRcon3./SWLcon3))*100;
mean(con3timeasym)

fprintf("control1")

%left
%row 4
left_timecon1 = control1data(:,4);
SWLcon1 =(left_timecon1);
%right
%row 5
right_timecon1 = control1data(:,5);
SWRcon1 = (right_timecon1);
%time assymetry control 1
con1timeasym = abs(log(SWRcon1./SWLcon1))*100;
mean(con1timeasym)

fprintf("control13")

%row 4
left_timecon13 = control13data(:,4);
SWLcon13 =(left_timecon13);
%right
%row 5
right_timecon13 = control13data(:,5);
SWRcon13 = (right_timecon13);
%time assymetry control 13
con13timeasym = abs(log(SWRcon13./SWLcon13))*100;
mean(con13timeasym)

fprintf("control16")
%row 4
left_timecon16 = control16data(:,4);
SWLcon16 =(left_timecon16);
%right
%row 5
right_timecon16 = control16data(:,5);
SWRcon16 = (right_timecon16);
%time assymetry control 13
con16timeasym = abs(log(SWRcon16./SWLcon16))*100;
mean(con16timeasym)

fprintf("control5")
%row 4
left_timecon5 = control5data(:,4);
SWLcon5 =(left_timecon5);
%right
%row 5
right_timecon5 = control5data(:,5);
SWRcon5 = (right_timecon5);
%time assymetry control 13
con5timeasym = abs(log(SWRcon5./SWLcon5))*100;
mean(con5timeasym)

%time
con3time = control3data(:,1);
con13time = control13data(:,1);
con5time = control5data(:,1);
con16time = control16data(:,1);
con1time = control1data(:,1);


avg_time_con =mean(mean([con3time(1:200),con13time(1:200),con5time(1:200),con16time(1:200),con1time(1:200)]));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HUNTINGTONS
fprintf("hunt20")

%left
%row 4
left_timehunt20 = hunt20data(:,4); % leftimehunt20 is the left swing interval in s 
SWLhunt20 =(left_timehunt20);

%right
%row 5
right_timehunt20 = hunt20data(:,5); % rightimehunt6 is the right swing interval in s
SWRhunt20 = (right_timehunt20);

%time assymetry hunt20
hunt20timeasym = abs(log(SWRhunt20./SWLhunt20))*100;
mean(hunt20timeasym)

fprintf("hunt9")

%left
%row 4
left_timehunt9 = hunt9data(:,4); % leftimehunt9 is the left swing interval in s 
SWLhunt9 =(left_timehunt9);

%right
%row 5
right_timehunt9 = hunt9data(:,5); % rightimehunt6 is the right swing interval in s
SWRhunt9 = (right_timehunt9);

%time assymetry hunt9
hunt9timeasym = abs(log(SWRhunt9./SWLhunt9))*100;
mean(hunt9timeasym)

fprintf("hunt2")

%left
%row 4
left_timehunt2 = hunt2data(:,4); % leftimehunt2 is the left swing interval in s 
SWLhunt2 =(left_timehunt2);

%right
%row 5
right_timehunt2 = hunt2data(:,5); % rightimehunt6 is the right swing interval in s
SWRhunt2 = (right_timehunt2);

%time assymetry hunt2
hunt2timeasym = abs(log(SWRhunt2./SWLhunt2))*100;
mean(hunt2timeasym)

fprintf("hunt15")

%left
%row 4
left_timehunt15 = hunt15data(:,4); % leftimehunt15 is the left swing interval in s 
SWLhunt15 =(left_timehunt15);

%right
%row 5
right_timehunt15 = hunt15data(:,5); % rightimehunt6 is the right swing interval in s
SWRhunt15 = (right_timehunt15);

%time assymetry hunt15
hunt15timeasym = abs(log(SWRhunt15./SWLhunt15))*100;
mean(hunt15timeasym)


fprintf("hunt18")

%left
%row 4
left_timehunt18 = hunt18data(:,4); % leftimehunt18 is the left swing interval in s 
SWLhunt18 =(left_timehunt18);

%right
%row 5
right_timehunt18 = hunt18data(:,5); % rightimehunt6 is the right swing interval in s
SWRhunt18 = (right_timehunt18);

%time assymetry hunt18
hunt18timeasym = abs(log(SWRhunt18./SWLhunt18))*100;
mean(hunt18timeasym)


%time
hunt20time = hunt20data(:,1);
hunt9time = hunt9data(:,1);
hunt2time = hunt2data(:,1);
hunt15time = hunt15data(:,1);
hunt18time = hunt18data(:,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ALS
fprintf("ALS1")

%left
%row 4
left_timeals1 = als1data(:,4); % leftimeals1 is the left swing interval in s 
SWLals1 =(left_timeals1);

%right
%row 5
right_timeals1 = als1data(:,5); % rightimehunt6 is the right swing interval in s
SWRals1 = (right_timeals1);

%time assymetry als1
als1timeasym = abs(log(SWRals1./SWLals1))*100;
mean(als1timeasym)

fprintf("ALS3")

%left
%row 4
left_timeals3 = als3data(:,4); % leftimeals3 is the left swing interval in s 
SWLals3 =(left_timeals3);

%right
%row 5
right_timeals3 = als3data(:,5); % rightimehunt6 is the right swing interval in s
SWRals3 = (right_timeals3);

%time assymetry als3
als3timeasym = abs(log(SWRals3./SWLals3))*100;
mean(als3timeasym)

fprintf("ALS8")

%left
%row 4
left_timeals8 = als8data(:,4); % leftimeals8 is the left swing interval in s 
SWLals8 =(left_timeals8);

%right
%row 5
right_timeals8 = als8data(:,5); % rightimehunt6 is the right swing interval in s
SWRals8 = (right_timeals8);

%time assymetry als8
als8timeasym = abs(log(SWRals8./SWLals8))*100;
mean(als8timeasym)

fprintf("ALS9")

%left
%row 4
left_timeals9 = als9data(:,4); % leftimeals9 is the left swing interval in s 
SWLals9 =(left_timeals9);

%right
%row 5
right_timeals9 = als9data(:,5); % rightimehunt6 is the right swing interval in s
SWRals9 = (right_timeals9);

%time assymetry als9
als9timeasym = abs(log(SWRals9./SWLals9))*100;
mean(als9timeasym)

fprintf("ALS10")

%left
%row 4
left_timeals10 = als10data(:,4); % leftimeals10 is the left swing interval in s 
SWLals10 =(left_timeals10);

%right
%row 5
right_timeals10 = als10data(:,5); % rightimehunt6 is the right swing interval in s
SWRals10 = (right_timeals10);

%time assymetry als10
als10timeasym = abs(log(SWRals10./SWLals10))*100;
mean(als10timeasym)

%time
als1time = als1data(:,1);
als3time = als3data(:,1);
als8time = als8data(:,1);
als9time = als9data(:,1);
als10time = als10data(:,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% FORCE ASYMMETRY
%PARKINSONS
%average force

%average forces left foot
lfp6 = mean(left_forcepark6(:,1));
lfp9 =  mean(left_forcepark9(:,1));
lfp14 =  mean(left_forcepark14(:,1));
lfp12 = mean(left_forcepark12(:,1));
lfp3 =  mean(left_forcepark3(:,1));

park_avg_left_force = mean([lfp3,lfp14,lfp12,lfp6,lfp9])

%average forces right foot
rfp6 = mean(right_forcepark6(:,1));
rfp9 =  mean(right_forcepark9(:,1));
rfp14 =  mean(right_forcepark14(:,1));
rfp12 = mean(right_forcepark12(:,1));
rfp3 =  mean(right_forcepark3(:,1));

park_avg_right_force = mean([rfp3,rfp14,rfp12,rfp6,rfp9])

%Calculate average force asymmetry 
park_fa = (abs(park_avg_left_force-park_avg_right_force)/park_avg_right_force)*100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%CONTROL
%LEFT
con_avg_left_force = mean([lfcon5,lfcon13,lfcon1,lfcon16,lfcon3])
%RIGHT
con_avg_right_force = mean([rfcon5,rfcon13,rfcon1,rfcon16,rfcon3])

%Calculate average force asymmetry 
con_fa = (abs(con_avg_left_force-con_avg_right_force)/con_avg_right_force)*100;
%Only finite and nonzero points
%con_fa(isinf(con_fa)|isnan(con_fa))=0;
%con_fa_mean = mean(con_fa)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%HUNTINGTONS
%LEFT
hunt_avg_left_force = mean([lfhunt20,lfhunt9,lfhunt2,lfhunt15,lfhunt18])
%RIGHT
hunt_avg_right_force = mean([rfhunt20,rfhunt9,rfhunt2,rfhunt15,rfhunt18])

%Calculate average force asymmetry 
hunt_fa = (abs(hunt_avg_left_force-hunt_avg_right_force)/hunt_avg_right_force)*100;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%ALS
%LEFT
als_avg_left_force = mean([lfals1,lfals3,lfals8,lfals9,lfals10])
%RIGHT
als_avg_right_force = mean([rfals1,rfals3,rfals8,rfals9,rfals10])

%Calculate average force asymmetry 
als_fa = (abs(als_avg_left_force-als_avg_right_force)/als_avg_right_force)*100
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Time assym graph 

figure('WindowState','maximized')%makes graph full screen for easier viewing 
figure(1)
time = 1:200;
plot(park6time,park6timeasym,'-r',con1time,con1timeasym,'-b',hunt2time,hunt2timeasym,'-k',als9time,als9timeasym,'-g')
title("Time asymmetry");
xlabel('Time (s)');
ylabel ('Gait assymetry (%)')
legend('Parkinsons','Control','Huntingtons','ALS')
%set(gcf,'Position',100,100,800,600

%force assym graph 

sample = 0;5;
%x = ['Control';'Parkinsons';'Huntingtons';'ALS'];
y = [con_fa;park_fa;hunt_fa;als_fa];
figure(2);
bar(y);
ylabel('Force Asymmetry %')
set(gca,'XTickLabel',{'Control Average','Parkinsons Average','Huntingtons Average','ALS average'})             

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PART 2
%Nonlinear gait dynamics in neurological disease versus healthy controls:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Parkinsons
%SD1 shows short term variability 
%park12scatter= park12data(:,12);

diff_data_park=abs((diff(park12data(:,12))));
diff_data_park;
sd1 = ((sqrt(2))/2)*(std(diff_data_park))
park12scatter= park12data(:,12);
sd2 = sqrt(2*std(park12scatter)^2)-(0.5*(std(diff_data_park)))

xp= park12scatter(1:end-1);% takes "odd" values
yp =park12scatter(2:end); % takes next "even" value  

%figure (3);

%scatter(x,y,'b');
%title('Parkinsons Poincare plot');
%xlabel('Xn');
%ylabel('Xn+1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%control
diff_data_control=abs((diff(control5data(:,12))));
diff_data_control;
sd1 = ((sqrt(2))/2)*(std(diff_data_control))
control5scatter= control5data(:,12);
sd2 = sqrt(2*std(control5scatter)^2)-(0.5*(std(diff_data_control)))

xc= control5scatter(1:end-1);
yc =control5scatter(2:end);

%figure (4);

%scatter(x,y,'r');
%title('Control Poincare plot');
%xlabel('Xn');
%ylabel('Xn+1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%huntingtons 
diff_data_huntingtons=abs((diff(hunt2data(:,12))));
diff_data_huntingtons;
sd1 = ((sqrt(2))/2)*(std(diff_data_huntingtons))
huntingtons2scatter= hunt2data(:,12);
sd2 = sqrt(2*std(huntingtons2scatter)^2)-(0.5*(std(diff_data_huntingtons)))

xh= huntingtons2scatter(1:end-1);
yh=huntingtons2scatter(2:end);

%figure (5);

%scatter(x,y,'k');
%title('Huntingtons Poincare plot');
%xlabel('Xn');
%ylabel('Xn+1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ALS 
diff_data_als=abs((diff(als9data(:,12))));
diff_data_als;
sd1 = ((sqrt(2))/2)*(std(diff_data_als))
als9scatter= als9data(:,12);
sd2 = sqrt(2*std(als9scatter)^2)-(0.5*(std(diff_data_als)))

xa= als9scatter(1:end-1);
ya =als9scatter(2:end);

%figure (6);

%scatter(x,y,'m');
%title('ALS Poincare plot');
%xlabel('Xn');
%ylabel('Xn+1');

figure(7)
subplot(2,2,1);
scatter(xc,yc,'r');
title('Control Poincare plot');
xlabel('Xn');
ylabel('Xn+1');
subplot(2,2,2);
scatter(xp,yp,'b');
title('Parkinsons Poincare plot');
xlabel('Xn');
ylabel('Xn+1');
subplot(2,2,3);
scatter(xh,yh,'k');
title('Huntingtons Poincare plot');
xlabel('Xn');
ylabel('Xn+1');
subplot(2,2,4);
scatter(xa,ya,'m');
title('ALS Poincare plot');
xlabel('Xn');
ylabel('Xn+1');


