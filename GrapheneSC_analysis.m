%load rawdata
clc
clear
rawnodup=table2array(readtable('Heteroatomdopedgraphene.xlsx','sheet','Sheet1','NumHeaderLines', 1));

%%
%Separate data based on electrolyte type
clear KOH H2SO4 Salt

%Salt
j=1;
Salt=zeros(1,size(rawnodup,2));
for i=1:size(rawnodup,1)
    if rawnodup(i,1)~=0
      Salt(j,:)=rawnodup(i,:);
       j=j+1;
    end
end

%Base
j=1;
KOH=zeros(1,size(rawnodup,2));
for i=1:size(rawnodup,1)
    if rawnodup(i,2)~=0
       KOH(j,:)=rawnodup(i,:);
       j=j+1;
    end
end

%Acid
j=1;
H2SO4=zeros(1,size(rawnodup,2));
for i=1:size(rawnodup,1)
    if rawnodup(i,3)~=0
       H2SO4(j,:)=rawnodup(i,:);
       j=j+1;
    end
end

%%
%Separate data undope / dope

clear KOH_updope H2SO4_undope Salt_undope  
clear KOH_Ndope H2SO4_Ndope Salt_Ndope 
clear KOH_Odope H2SO4_Odope Salt_Odope 
clear KOH_Sdope H2SO4_Sdope Salt_Sdope
clear KOH_NOdope H2SO4_NOdope Salt_NOdope
clear KOH_NSdope H2SO4_NSdope Salt_NSdope
clear KOH_OSdope H2SO4_OSdope Salt_OSdope
clear KOH_NOSdope H2SO4_NOSdope Salt_NOSdope


%undope
j=1;
KOH_undope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,6:8)==0)
       KOH_undope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_undope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,6:8)==0)
       H2SO4_undope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_undope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,6:8)==0)
       Salt_undope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%N dope

j=1;
KOH_Ndope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,6)~=0) && all(KOH(i,7:8)==0)
       KOH_Ndope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_Ndope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,6)~=0) && all(H2SO4(i,7:8)==0)
       H2SO4_Ndope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_Ndope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,6)~=0) && all(Salt(i,7:8)==0)
       Salt_Ndope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%O dope

j=1;
KOH_Odope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,7)~=0) && all(KOH(i,6)==0) && all(KOH(i,8)==0)
       KOH_Odope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_Odope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,7)~=0) && all(H2SO4(i,6)==0) && all(H2SO4(i,8)==0)
       H2SO4_Odope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_Odope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,7)~=0) && all(Salt(i,6)==0) && all(Salt(i,8)==0)
       Salt_Odope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%S dope

j=1;
KOH_Sdope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,8)~=0) && all(KOH(i,6:7)==0)
       KOH_Sdope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_Sdope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,8)~=0) && all(H2SO4(i,6:7)==0)
       H2SO4_Sdope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_Sdope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,8)~=0) && all(Salt(i,6:7)==0)
       Salt_Sdope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%NO dope

j=1;
KOH_NOdope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,6:7)~=0) && all(KOH(i,8)==0)
       KOH_NOdope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_NOdope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,6:7)~=0) && all(H2SO4(i,8)==0)
       H2SO4_NOdope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_NOdope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,6:7)~=0) && all(Salt(i,8)==0)
       Salt_NOdope(j,:)=Salt(i,:);
       j=j+1;
    end
end



%NS dope

j=1;
KOH_NSdope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,6)~=0) && all(KOH(i,7)==0)&& all(KOH(i,8)~=0)
       KOH_NSdope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_NSdope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,6)~=0) && all(H2SO4(i,7)==0)&& all(H2SO4(i,8)~=0)
       H2SO4_NSdope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_NSdope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,6)~=0) && all(Salt(i,7)==0)&& all(Salt(i,8)~=0)
       Salt_NSdope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%OS dope

j=1;
KOH_OSdope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,7:8)~=0) && all(KOH(i,6)==0)
       KOH_OSdope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_OSdope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,7:8)~=0) && all(H2SO4(i,6)==0)
       H2SO4_OSdope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_OSdope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,7:8)~=0) && all(Salt(i,6)==0)
       Salt_OSdope(j,:)=Salt(i,:);
       j=j+1;
    end
end


%NOS dope

j=1;
KOH_NOSdope=zeros(1,size(KOH,2));
for i=1:size(KOH,1)
    if all(KOH(i,6:8)~=0)
       KOH_NOSdope(j,:)=KOH(i,:);
       j=j+1;
    end
end

j=1;
H2SO4_NOSdope=zeros(1,size(H2SO4,2));
for i=1:size(H2SO4,1)
    if all(H2SO4(i,6:8)~=0)
       H2SO4_NOSdope(j,:)=H2SO4(i,:);
       j=j+1;
    end
end

j=1;
Salt_NOSdope=zeros(1,size(Salt,2));
for i=1:size(Salt,1)
    if all(Salt(i,6:8)~=0)
       Salt_NOSdope(j,:)=Salt(i,:);
       j=j+1;
    end
end

%%
%correlation coefficient plot (pearson plot for all cases) combined
%electrolyte type

clear t1 ax1 ax2 ax3 ax4 ax5 ax6 ax7 ax8 np cbh
clear c_undope c_ndope c_odope c_sdope c_nodope c_nsdope c_osdope c_nosdope


figure
tiledlayout(2,4,'Padding','loose','Tilespacing','loose');

np(1)=nexttile;
c_undope=corrcoef([KOH_undope(:,[4:5,9:10]);Salt_undope(:,[4:5,9:10])]);
imagesc(c_undope);
ax1=gca;
xticks(1:4);
yticks(1:4);
xtickangle(90);
ax1.XTickLabel={'SSA','I_D/I_G','CD','C_{sp}'};
ax1.YTickLabel={'SSA','I_D/I_G','CD','C_{sp}'};
subtitle('Undoped')

np(2)=nexttile;
c_ndope=corrcoef([KOH_Ndope(:,[4:6,9:10]);H2SO4_Ndope(:,[4:6,9:10])]);
imagesc(c_ndope);
ax2=gca;
xticks(1:5);
yticks(1:5);
xtickangle(90);
ax2.XTickLabel={'SSA','I_D/I_G','%N','CD','C_{sp}'};
ax2.YTickLabel={'SSA','I_D/I_G','%N','CD','C_{sp}'};
subtitle('N doped')

np(3)=nexttile;
c_odope=corrcoef([KOH_Odope(:,[4:5,7,9:10]);H2SO4_Odope(:,[4:5,7,9:10])]);
imagesc(c_odope);
ax3=gca;
xticks(1:5);
yticks(1:5);
xtickangle(90);
ax3.XTickLabel={'SSA','I_D/I_G','%O','CD','C_{sp}'};
ax3.YTickLabel={'SSA','I_D/I_G','%O','CD','C_{sp}'};
subtitle('O doped')

np(4)=nexttile;
c_sdope=corrcoef(KOH_Sdope(:,[4:5,8:10]));
imagesc(c_sdope);
ax4=gca;
xticks(1:5);
yticks(1:5);
xtickangle(90);
ax4.XTickLabel={'SSA','I_D/I_G','%S','CD','C_{sp}'};
ax4.YTickLabel={'SSA','I_D/I_G','%S','CD','C_{sp}'};
subtitle('S doped')

np(5)=nexttile;
c_nodope=corrcoef([KOH_NOdope(:,[4:7,9:10]);H2SO4_NOdope(:,[4:7,9:10])]);
imagesc(c_nodope);
ax5=gca;
xticks(1:6);
yticks(1:6);
xtickangle(90);
ax5.XTickLabel={'SSA','I_D/I_G','%N','%O','CD','C_{sp}'};
ax5.YTickLabel={'SSA','I_D/I_G','%N','%O','CD','C_{sp}'};
subtitle('N/O co-doped')

np(6)=nexttile;
c_nsdope=corrcoef([KOH_NSdope(:,[4:6,8:10]);H2SO4_NSdope(:,[4:6,8:10])]);
imagesc(c_nsdope);
ax6=gca;
xticks(1:6);
yticks(1:6);
xtickangle(90);
ax6.XTickLabel={'SSA','I_D/I_G','%N','%S','CD','C_{sp}'};
ax6.YTickLabel={'SSA','I_D/I_G','%N','%S','CD','C_{sp}'};
subtitle('N/S co-doped')

np(7)=nexttile;
c_osdope=corrcoef([KOH_OSdope(:,[4:5,7:10]);H2SO4_OSdope(:,[4:5,7:10])]);
imagesc(c_osdope);
ax7=gca;
xticks(1:6);
yticks(1:6);
xtickangle(90);
ax7.XTickLabel={'SSA','I_D/I_G','%O','%S','CD','C_{sp}'};
ax7.YTickLabel={'SSA','I_D/I_G','%O','%S','CD','C_{sp}'};
subtitle('O/S co-doped')

np(8)=nexttile;
c_nosdope=corrcoef([KOH_NOSdope(:,4:10);H2SO4_NOSdope(:,4:10)]);
imagesc(c_nosdope);
ax8=gca;
xticks(1:7);
yticks(1:7);
xtickangle(90);
ax8.XTickLabel={'SSA','I_D/I_G','%N','%O','%S','CD','C_{sp}'};
ax8.YTickLabel={'SSA','I_D/I_G','%N','%O','%S','CD','C_{sp}'};
subtitle('N/O/S co-doped')

set(np, 'Colormap', bone, 'CLim', [-1 1])
cbh = colorbar(np(end)); 
cbh.Layout.Tile = 'east'; 
set(get(cbh,'label'),'string','Pearson Correlation Coefficient');
colorlim=get(cbh,'Limits');
limc=linspace(colorlim(1),colorlim(2),11);
set(cbh,'Ticks',limc)
decimallim=arrayfun(@(x) sprintf('%.1f',x),limc,'un',0);
set(cbh,'TickLabels',decimallim)
set(np, 'FontName', 'Calibri Light','FontSize',12)


%%
%correlation coefficient plot (bar plot features vs. Capacitance) combined
%electrolyte type (modified with sulfur plot)

clear t1 ax1 ax2 ax3 ax4 ax5 ax6 ax7 ax8 np1 cbh
clear c_undope c_ndope c_odope c_sdope c_nodope c_nsdope c_osdope c_nosdope


figure
t1=tiledlayout(2,4,'Padding','compact','Tilespacing','loose');

np1(1)=nexttile(1);
c_undope=corrcoef([KOH_undope(:,[4:5,9:10]);Salt_undope(:,[4:5,9:10])]);
bar(c_undope(1:end-1,end).*(c_undope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.3);
hold on
bar(c_undope(1:end-1,end).*(c_undope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.3);
ax1=gca;
xticks(1:3);
ax1.XTickLabel={'SSA','I_D/I_G','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('Undoped')

np1(2)=nexttile(2);
c_ndope=corrcoef([KOH_Ndope(:,[4:6,9:10]);H2SO4_Ndope(:,[4:6,9:10])]);
bar(c_ndope(1:end-1,end).*(c_ndope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.4);
hold on
bar(c_ndope(1:end-1,end).*(c_ndope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.4);
ax1=gca;
xticks(1:4);
ax1.XTickLabel={'SSA','I_D/I_G','%N','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('N doped')

np1(3)=nexttile(3);
c_odope=corrcoef([KOH_Odope(:,[4:5,7,9:10]);H2SO4_Odope(:,[4:5,7,9:10])]);
bar(c_odope(1:end-1,end).*(c_odope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.4);
hold on
bar(c_odope(1:end-1,end).*(c_odope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.4);
ax1=gca;
xticks(1:4);
ax1.XTickLabel={'SSA','I_D/I_G','%O','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('O doped')

np1(4)=nexttile(4);
c_sdope=corrcoef(KOH_Sdope(:,[4:5,8:10]));
bar(c_sdope(1:end-1,end).*(c_sdope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.4);
hold on
bar(c_sdope(1:end-1,end).*(c_sdope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.4);
ax1=gca;
xticks(1:4);
ax1.XTickLabel={'SSA','I_D/I_G','%S','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('S doped')



np1(5)=nexttile(5);
c_nodope=corrcoef([KOH_NOdope(:,[4:7,9:10]);H2SO4_NOdope(:,[4:7,9:10])]);
bar(c_nodope(1:end-1,end).*(c_nodope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.45);
hold on
bar(c_nodope(1:end-1,end).*(c_nodope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.45);
ax1=gca;
xticks(1:5);
ax1.XTickLabel={'SSA','I_D/I_G','%N','%O','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('N/O co-doped')


np1(6)=nexttile(6);
c_nsdope=corrcoef([KOH_NSdope(:,[4:6,8:10]);H2SO4_NSdope(:,[4:6,8:10])]);
bar(c_nsdope(1:end-1,end).*(c_nsdope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.45);
hold on
bar(c_nsdope(1:end-1,end).*(c_nsdope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.45);
ax1=gca;
xticks(1:5);
ax1.XTickLabel={'SSA','I_D/I_G','%N','%S','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('N/S co-doped')


np1(7)=nexttile(7);
c_osdope=corrcoef([KOH_OSdope(:,[4:5,7:10]);H2SO4_OSdope(:,[4:5,7:10])]);
bar(c_osdope(1:end-1,end).*(c_osdope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.45);
hold on
bar(c_osdope(1:end-1,end).*(c_osdope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.45);
ax1=gca;
xticks(1:5);
ax1.XTickLabel={'SSA','I_D/I_G','%O','%S','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('O/S co-doped')

np1(8)=nexttile(8);
c_nosdope=corrcoef([KOH_NOSdope(:,4:10);H2SO4_NOSdope(:,4:10)]);
bar(c_nosdope(1:end-1,end).*(c_nosdope(1:end-1,end)>=0),'FaceColor',[0 0.4470 0.7410],'barwidth',0.4);
hold on
bar(c_nosdope(1:end-1,end).*(c_nosdope(1:end-1,end)<0),'FaceColor',[0.6350 0.0780 0.1840],'barwidth',0.4);
ax1=gca;
xticks(1:6);
ax1.XTickLabel={'SSA','I_D/I_G','%N','%O','%S','CD'};
ylim([-1 1]);
xtickangle(90);
subtitle('N/O/S co-doped')

set(np1, 'FontName', 'Calibri Light','FontSize',11.5)


%%
%Plot total double heteroatom doping effect
clear t6 leg6 np3 cb
clear c1 sz1 cb c2 sz2 c3 sz3 c4 sz4 c5 sz5 c6 sz6
clear s_KOH_NO s_h2SO4_NO s_KOH_NS s_KOH_OS s_H2SO4_OS s_Salt_OS

s_KOH_NO=sortrows(KOH_NOdope,10);
s_H2SO4_NO=sortrows(H2SO4_NOdope,10);
s_KOH_NS=sortrows(KOH_NSdope,10);
s_KOH_OS=sortrows(KOH_OSdope,10);
s_H2SO4_OS=sortrows(H2SO4_OSdope,10);
s_Salt_OS=sortrows(Salt_OSdope,10);

figure
t6=tiledlayout(1,3,'Tilespacing','compact');

np3(1)=nexttile;
c1 = linspace(0,max(s_KOH_NO(:,10)),length(s_KOH_NO(:,10)));
sz1 = linspace(15,150,length(s_KOH_NO(:,10)));
c2 = linspace(0,max(s_H2SO4_NO(:,10)),length(s_H2SO4_NO(:,10)));
sz2 = linspace(15,150,length(s_H2SO4_NO(:,10)));
scatter(s_KOH_NO(:,6), s_KOH_NO(:,7), sz1,c1,'filled','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
hold on
scatter(s_H2SO4_NO(:,6), s_H2SO4_NO(:,7), sz2,c2,'filled','^','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
hold off
xlabel('% N');
ylabel('% O');
subtitle('N/O co-doped');
xlim([0 15]);
ylim([0 25]);
box on;


np3(2)=nexttile;
c3 = linspace(0,max(s_KOH_NS(:,10)),length(s_KOH_NS(:,10)));
sz3 = linspace(15,150,length(s_KOH_NS(:,10)));
scatter(s_KOH_NS(:,6), s_KOH_NS(:,8), sz3, c3,'filled','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
xlabel('% N');
ylabel('% S');
subtitle('N/S co-doped');
xlim([0 3]);
ylim([0 3]);
box on;


np3(3)=nexttile;
c4 = linspace(0,max(s_KOH_OS(:,10)),length(s_KOH_OS(:,10)));
sz4 = linspace(15,150,length(s_KOH_OS(:,10)));
c5 = linspace(0,max(s_H2SO4_OS(:,10)),length(s_H2SO4_OS(:,10)));
sz5 = linspace(15,150,length(s_H2SO4_OS(:,10)));
c6 = linspace(0,max(s_Salt_OS(:,10)),length(s_Salt_OS(:,10)));
sz6 = linspace(15,150,length(s_Salt_OS(:,10)));
scatter(s_KOH_OS(:,7), s_KOH_OS(:,8), sz4, c4,'filled','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
hold on
scatter(s_H2SO4_OS(:,7), s_H2SO4_OS(:,8), sz5,c5,'filled','^','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
scatter(s_Salt_OS(:,7), s_Salt_OS(:,8), sz6,c6,'filled','d','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.5)
hold off
xlabel('% O');
ylabel('% S');
subtitle('O/S co-doped');
xlim([0 30]);
ylim([0 10]);
box on;

set(np3, 'Colormap', parula, 'CLim', [0 600])
cb = colorbar(np3(end)); 
cb.Layout.Tile = 'east';
set(get(cb,'label'),'string','Specific Capacitance (F/g)');
colorlim=get(cb,'Limits');
limc=linspace(colorlim(1),colorlim(2),11);
set(cb,'Ticks',limc)
decimallim=arrayfun(@(x) sprintf('%d',x),limc,'un',0);
set(cb,'TickLabels',decimallim)

leg6=legend('Base','Acid','Salt');
title(leg6,'Electrolytes');
leg6.NumColumns=3;
leg6.Layout.Tile='south';

set(np3, 'FontName', 'Calibri Light','FontSize',14)

%%
%color plot 3D for 2 atoms doping

clear t7 leg7 np4 cbh
clear s_KOH_NO s_h2SO4_NO s_KOH_NS s_KOH_OS s_H2SO4_OS s_Salt_OS
clear Xnok Ynok Fnok xnok ynok Fnok1
clear Xnoh Ynoh Fnoh xnoh ynoh Fnoh1
clear Xnsk Ynsk Fnsk xnsk ynsk Dnsk1
clear Xosk Yosk Fosk xosk yosk Fosk1
clear Xosh Yosh Fosh xosh yosh Fosh1
clear Xoss Yoss Foss xoss yoss Foss1

s_KOH_NO=sortrows(KOH_NOdope,10);
s_H2SO4_NO=sortrows(H2SO4_NOdope,10);
s_KOH_NS=sortrows(KOH_NSdope,10);
s_KOH_OS=sortrows(KOH_OSdope,10);
%s_H2SO4_OS=sortrows(H2SO4_OSdope,10);
%s_Salt_OS=sortrows(Salt_OSdope,10);

figure
tiledlayout(2,2,'Tilespacing','compact');

np4(1)=nexttile;
xnok=linspace(min(s_KOH_NO(:,6)),max(s_KOH_NO(:,6)),500);
ynok=linspace(min(s_KOH_NO(:,7)),max(s_KOH_NO(:,7)),500);
[Xnok,Ynok]=meshgrid(xnok,ynok);
Fnok=scatteredInterpolant(s_KOH_NO(:,6),s_KOH_NO(:,7),s_KOH_NO(:,10),'linear','linear');
Fnok1=scatteredInterpolant(s_KOH_NO(:,6),s_KOH_NO(:,7),s_KOH_NO(:,10),'linear','none');
contourf(Xnok,Ynok,max(Fnok(Xnok,Ynok),0),100,'LineColor','none')
hold on
contour(Xnok,Ynok,max(Fnok1(Xnok,Ynok),0),'--b')
hold off
xlabel('%N');
ylabel('%O');
ytickformat('%.1f');
xtickformat('%.1f');
subtitle('N/O co-doped (Base)');


np4(2)=nexttile;
xnoh=linspace(min(s_H2SO4_NO(:,6)),max(s_H2SO4_NO(:,6)),500);
ynoh=linspace(min(s_H2SO4_NO(:,7)),max(s_H2SO4_NO(:,7)),500);
[Xnoh,Ynoh]=meshgrid(xnoh,ynoh);
Fnoh=scatteredInterpolant(s_H2SO4_NO(:,6),s_H2SO4_NO(:,7),s_H2SO4_NO(:,10),'linear','linear');
Fnoh1=scatteredInterpolant(s_H2SO4_NO(:,6),s_H2SO4_NO(:,7),s_H2SO4_NO(:,10),'linear','none');
contourf(Xnoh,Ynoh,max(Fnoh(Xnoh,Ynoh),0),100,'LineColor','none')
hold on
contour(Xnoh,Ynoh,max(Fnoh1(Xnoh,Ynoh),0),'--b')
hold off
xlabel('%N');
ylabel('%O');
ytickformat('%.1f');
xtickformat('%.1f');
subtitle('N/O co-doped (Acid)');


np4(3)=nexttile;
xnsk=linspace(min(s_KOH_NS(:,6)),max(s_H2SO4_NO(:,6)),500);
ynsk=linspace(min(s_KOH_NS(:,8)),max(s_KOH_NS(:,8)),500);
[Xnsk,Ynsk]=meshgrid(xnsk,ynsk);
Fnsk=scatteredInterpolant(s_KOH_NS(:,6),s_KOH_NS(:,8),s_KOH_NS(:,10),'linear','linear');
Fnsk1=scatteredInterpolant(s_KOH_NS(:,6),s_KOH_NS(:,8),s_KOH_NS(:,10),'linear','none');
contourf(Xnsk,Ynsk,max(Fnsk(Xnsk,Ynsk),0),100,'LineColor','none')
hold on
contour(Xnsk,Ynsk,max(Fnsk1(Xnsk,Ynsk),0),100,'--b')
hold off
xlim([1 2]);
xlabel('%N');
ylabel('%S');
ytickformat('%.1f');
xtickformat('%.1f');
subtitle('N/S co-doped (Base)');


np4(4)=nexttile;
xosk=linspace(min(s_KOH_OS(:,7)),max(s_KOH_OS(:,7)),150);
yosk=linspace(min(s_KOH_OS(:,8)),max(s_KOH_OS(:,8)),150);
[Xosk,Yosk]=meshgrid(xosk,yosk);
Fosk=scatteredInterpolant(s_KOH_OS(:,7),s_KOH_OS(:,8),s_KOH_OS(:,10),'linear','linear');
Fosk1=scatteredInterpolant(s_KOH_OS(:,7),s_KOH_OS(:,8),s_KOH_OS(:,10),'linear','none');
contourf(Xosk,Yosk,max(Fosk(Xosk,Yosk),0),100,'LineColor','none')
hold on
contour(Xosk,Yosk,max(Fosk1(Xosk,Yosk),0),'--b')
hold off
xlabel('%O');
ylabel('%S');
ytickformat('%.1f');
xtickformat('%.1f');
subtitle('O/S co-doped (Base)');

set(np4, 'Colormap', parula, 'CLim', [0 600])
cbh = colorbar(np4(end)); 
cbh.Layout.Tile = 'east'; 
set(get(cbh,'label'),'string','Specific Capacitance (F/g)');
colorlim=get(cbh,'Limits');
limc=linspace(colorlim(1),colorlim(2),11);
set(cbh,'Ticks',limc)
decimallim=arrayfun(@(x) sprintf('%d',x),limc,'un',0);
set(cbh,'TickLabels',decimallim)

set(np4, 'FontName', 'Calibri Light','FontSize',14)

%%
%2 atom doping amount vs. capacitance
clear t8 leg8 np5 b1 b2 b3 b4 b5 b6
clear s_KOH_NO s_h2SO4_NO s_KOH_NS s_KOH_OS s_H2SO4_OS s_Salt_OS

s_KOH_NO=sortrows(KOH_NOdope,10);
s_H2SO4_NO=sortrows(H2SO4_NOdope,10);
s_KOH_NS=sortrows(KOH_NSdope,10);
s_KOH_OS=sortrows(KOH_OSdope,10);
s_H2SO4_OS=sortrows(H2SO4_OSdope,10);
s_Salt_OS=sortrows(Salt_OSdope,10);

figure
tiledlayout(3,2,'Tilespacing','compact');

np5(1)=nexttile(1,[1 2]);
colororder({'k','b'})
yyaxis left
plot(s_KOH_NO(:,10),'linewidth',1.5);
ylim([0 600]);
yyaxis right
b1=bar([s_KOH_NO(:,6),s_KOH_NO(:,7)],'stacked','FaceColor','flat','facealpha',0.9,'edgecolor','none');
b1(1).CData = [0 0.4470 0.7410];
b1(2).CData = [0.6350 0.0780 0.1840];
%colororder(np5(1),{'[0 0.4470 0.7410]','[0.6350 0.0780 0.1840]'});
subtitle('N/O co-doped (Base)');
xticks([]);

np5(2)=nexttile(3);
colororder({'k','b'})
yyaxis left
plot(s_H2SO4_NO(:,10),'linewidth',1.5);
ylim([0 600]);
yyaxis right
b2=bar([s_H2SO4_NO(:,6),s_H2SO4_NO(:,7)],'stacked','FaceColor','flat','facealpha',0.8,'edgecolor','none','barwidth',0.4);
b2(1).CData = [0 0.4470 0.7410];
b2(2).CData = [0.6350 0.0780 0.1840];
%colororder(np5(2),{'[0 0.4470 0.7410]','[0.6350 0.0780 0.1840]'});
subtitle('N/O co-doped (Acid)');
xticks([]);

np5(3)=nexttile(4);
colororder({'k','b'})
yyaxis left
plot(s_KOH_NS(:,10),'linewidth',1.5);
ylim([0 600]);
yyaxis right
b3=bar([s_KOH_NS(:,6),s_KOH_NS(:,8)],'stacked','FaceColor','flat','facealpha',0.8,'edgecolor','none','barwidth',0.25);
b3(1).CData = [0 0.4470 0.7410];
b3(2).CData = [0.9290 0.6940 0.1250];
%colororder(np5(3),{'[0 0.4470 0.7410]','[0.9290 0.6940 0.1250]'});
subtitle('N/S co-doped (Base)');
xticks([]);

np5(4)=nexttile(5,[1 2]);
colororder({'k','b'})
yyaxis left
plot(s_KOH_OS(:,10),'linewidth',1.5);
ylim([0 600]);
yyaxis right
b4=bar([s_KOH_OS(:,7),s_KOH_OS(:,8)],'stacked','FaceColor','flat','facealpha',0.8,'edgecolor','none','barwidth',0.5);
b4(1).CData = [0.6350 0.0780 0.1840];
b4(2).CData = [0.9290 0.6940 0.1250];
%colororder(np5(3),{'[0 0.4470 0.7410]','[0.9290 0.6940 0.1250]'});
subtitle('O/S co-doped (Base)');
xticks([]);

set(np5, 'FontName', 'Calibri Light','FontSize',12)

%%
%Plot total tripple heteroatom doping

clear t7 leg7 leg8 np6 sp1 
clear s_KOH_NOS s_H2SO4_NOS
clear cb2 c5 sz5 c6 sz6
clear b5 b6 cb



figure
t7=tiledlayout(2,2,'Padding','compact','Tilespacing','compact');

s_KOH_NOS=sortrows(KOH_NOSdope,10);
s_H2SO4_NOS=sortrows(H2SO4_NOSdope,10);

np6(1)=nexttile(1);
c5=linspace(0,max(s_KOH_NOS(:,10)),length(s_KOH_NOS(:,10)));
sz5=linspace(20,200,length(s_KOH_NOS(:,10)));
c6=linspace(0,max(s_H2SO4_NOS(:,10)),length(s_H2SO4_NOS(:,10)));
sz6=linspace(20,200,length(s_H2SO4_NOS(:,10)));
sp1(1)=scatter3(s_KOH_NOS(:,6),s_KOH_NOS(:,7),s_KOH_NOS(:,8),sz5,c5,'filled','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.8);
hold on
sp1(2)=scatter3(s_H2SO4_NOS(:,6),s_H2SO4_NOS(:,7),s_H2SO4_NOS(:,8),sz6,c6,'filled','^','markeredgecolor','k','markeredgealpha',0.5,'markerfacealpha',0.8);
hold off
xlabel('% N');
ylabel('% O');
zlabel('% S');
subtitle('N/O/S co-doped');
%xlim([0 3]);
%ylim([0 3]);
box on;

leg7=legend(sp1,'Base','Acid');
%title(leg7,'Electrolytes');
%leg7.NumColumns=1;
%leg7.Layout.Tile=2;


set(np6, 'Colormap', parula, 'CLim', [0 600])
cb = colorbar(np6(end)); 
cb.Layout.Tile = 'north';
set(get(cb,'label'),'string','Specific Capacitance (F/g)');
colorlim=get(cb,'Limits');
limc=linspace(colorlim(1),colorlim(2),11);
set(cb,'Ticks',limc)
decimallim=arrayfun(@(x) sprintf('%d',x),limc,'un',0);
set(cb,'TickLabels',decimallim)

np6(2)=nexttile(3,[1 2]);
colororder({'k','b'});
yyaxis left
plot(s_KOH_NOS(:,10),'linewidth',1.5)
ylim([0 600]);
%ylabel('Specific capacitance (F/g)')

yyaxis right
b5=bar([s_KOH_NOS(:,6),s_KOH_NOS(:,7),s_KOH_NOS(:,8)],'stacked','FaceColor','flat','facealpha',0.8,'edgecolor','none');
b5(1).CData = [0 0.4470 0.7410];
b5(2).CData = [0.6350 0.0780 0.1840];
b5(3).CData = [0.9290 0.6940 0.1250];
%ylabel('% Heteroatom doped')
set(gca,'xticklabel',{[]});
%xlabel('Data number')
subtitle('Base electrolyte');


np6(3)=nexttile(2);
colororder({'k','b'});
yyaxis left
plot(s_H2SO4_NOS(:,10),'linewidth',1.5)
ylim([0 600]);
%ylabel('Specific capacitance (F/g)')

yyaxis right
b6=bar([s_H2SO4_NOS(:,6),s_H2SO4_NOS(:,7),s_H2SO4_NOS(:,8)],'stacked','FaceColor','flat','facealpha',0.7,'barwidth',0.3,'edgecolor','none');
b6(1).CData = [0 0.4470 0.7410];
b6(2).CData = [0.6350 0.0780 0.1840];
b6(3).CData = [0.9290 0.6940 0.1250];
%ylabel('% Heteroatom doped')
set(gca,'xticklabel',{[]});
subtitle('Acid electrolyte');

leg8=legend(b6,'% N','% O','% S');
leg8.NumColumns=3;
leg8.Layout.Tile='south';

set(np6, 'FontName', 'Calibri Light','FontSize',12)

%%
%Plot 3D 3 atom doping

clear t8 np7 cbh
clear s_KOH_NOS s_H2SO4_NOS
clear xnosk ynosk Fnosk Xnosk Ynosk Cnosk
clear xnosh ynosh Fnosh Xnosh Ynosh Cnosh

s_KOH_NOS=sortrows(KOH_NOSdope,10);
s_H2SO4_NOS=sortrows(H2SO4_NOSdope,10);

figure
t8=tiledlayout(1,2,'Tilespacing','compact');

np7(1)=nexttile;
xnosk=linspace(min(s_KOH_NOS(:,6)),max(s_KOH_NOS(:,6)),50);
ynosk=linspace(min(s_KOH_NOS(:,7)),max(s_KOH_NOS(:,7)),50);
[Xnosk,Ynosk]=meshgrid(xnosk,ynosk);
Fnosk=scatteredInterpolant(s_KOH_NOS(:,6),s_KOH_NOS(:,7),s_KOH_NOS(:,8),'linear','linear');
Cnosk=scatteredInterpolant(s_KOH_NOS(:,6),s_KOH_NOS(:,7),s_KOH_NOS(:,8),s_KOH_NOS(:,10),'linear','linear');
surf(Xnosk,Ynosk,max(Fnosk(Xnosk,Ynosk),0),'CData',Cnosk(Xnosk,Ynosk,max(Fnosk(Xnosk,Ynosk),0).*2),'edgealpha',0.3)
xlabel('%N');
ylabel('%O');
zlabel('%S');
ytickformat('%.1f');
xtickformat('%.1f');
ztickformat('%.1f');
subtitle('Base electrolyte');


np7(2)=nexttile;
xnosh=linspace(min(s_H2SO4_NOS(:,6)),max(s_H2SO4_NOS(:,6)),20);
ynosh=linspace(min(s_H2SO4_NOS(:,7)),max(s_H2SO4_NOS(:,7)),20);
[Xnosh,Ynosh]=meshgrid(xnosh,ynosh);
Fnosh=scatteredInterpolant(s_H2SO4_NOS(:,6),s_H2SO4_NOS(:,7),s_H2SO4_NOS(:,8),'linear','linear');
Cnosh=scatteredInterpolant([s_H2SO4_NOS(:,6);[0; 0 ;0]],[s_H2SO4_NOS(:,7);[0; 0; 0]],[s_H2SO4_NOS(:,8);[0; 0 ;0]],[s_H2SO4_NOS(:,10);[0; 0; 0]],'linear','linear');
surf(Xnosh,Ynosh,max(Fnosh(Xnosh,Ynosh),0),'CData',Cnosh(Xnosh,Ynosh,max(Fnosh(Xnosh,Ynosh),0)),'edgealpha',0.3)
xlabel('%N');
ylabel('%O');
zlabel('%S');
ytickformat('%.1f');
xtickformat('%.1f');
ztickformat('%.1f');
xlim([0 10]);
ylim([0 10]);
subtitle('Acid electrolyte');


set(np7, 'Colormap', parula, 'CLim', [0 600])
cbh = colorbar(np7(end)); 
cbh.Layout.Tile = 'east'; 
%set(get(cbh,'label'),'string','Specific Capacitance (F/g)');
colorlim=get(cbh,'Limits');
limc=linspace(colorlim(1),colorlim(2),11);
set(cbh,'Ticks',limc)
decimallim=arrayfun(@(x) sprintf('%d',x),limc,'un',0);
set(cbh,'TickLabels',decimallim)

set(np7, 'FontName', 'Calibri Light','FontSize',12)


%%
%change in capacitance at different current density

%Plot undope vs. dope current density effect
clear t9 leg3 np8

figure
t9=tiledlayout(2,4,'Padding','compact','Tilespacing','compact');


np8(1)=nexttile;
cd1=[KOH_undope(:,9);Salt_undope(:,9)];
cap1=[KOH_undope(:,10);Salt_undope(:,10)];
tt1=[cd1,cap1];
ind1=unique(tt1(:,1));

 for i1=1:length(ind1)
     field1=sprintf('G%d',i1);
   group1.(field1) = tt1(tt1(:,1)==ind1(i1),2);
  
 end
 
 changed1=zeros(length(ind1),1);
 for i1=1:length(ind1)
     field1=sprintf('G%d',i1);
   max1.(field1) = max(group1.(field1));
   min1.(field1) = min(group1.(field1));
   change1.(field1)=max1.(field1)-min1.(field1);
   changed1(i1)=change1.(field1);
 end

stem(ind1,changed1);
subtitle('Undoped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')



np8(2)=nexttile;
cd2=[KOH_Ndope(:,9);H2SO4_Ndope(:,9)];
cap2=[KOH_Ndope(:,10);H2SO4_Ndope(:,10)];
tt2=[cd2,cap2];
ind2=unique(tt2(:,1));

 for i2=1:length(ind2)
     field2=sprintf('G%d',i2);
   group2.(field2) = tt2(tt2(:,1)==ind2(i2),2);
  
 end
 
 changed2=zeros(length(ind2),1);
 for i2=1:length(ind2)
     field2=sprintf('G%d',i2);
   max2.(field2) = max(group2.(field2));
   min2.(field2) = min(group2.(field2));
   change2.(field2)=max2.(field2)-min2.(field2);
   changed2(i2)=change2.(field2);
 end
    
stem(ind2,changed2);
subtitle('N doped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')



np8(3)=nexttile;
cd3=[KOH_Odope(:,9);H2SO4_Odope(:,9)];
cap3=[KOH_Odope(:,10);H2SO4_Odope(:,10)];
tt3=[cd3,cap3];
ind3=unique(tt3(:,1));

 for i3=1:length(ind3)
     field3=sprintf('G%d',i3);
   group3.(field3) = tt3(tt3(:,1)==ind3(i3),2);
  
 end
 
 changed3=zeros(length(ind3),1);
 for i3=1:length(ind3)
     field3=sprintf('G%d',i3);
   max3.(field3) = max(group3.(field3));
   min3.(field3) = min(group3.(field3));
   change3.(field3)=max3.(field3)-min3.(field3);
   changed3(i3)=change3.(field3);
 end
    
stem(ind3,changed3);
subtitle('O doped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')



np8(4)=nexttile;
cd4=KOH_Sdope(:,9);
cap4=KOH_Sdope(:,10);
tt4=[cd4,cap4];
ind4=unique(tt4(:,1));

 for i4=1:length(ind4)
     field4=sprintf('G%d',i4);
   group4.(field4) = tt4(tt4(:,1)==ind4(i4),2);
  
 end
 
 changed4=zeros(length(ind4),1);
 for i4=1:length(ind4)
     field4=sprintf('G%d',i4);
   max4.(field4) = max(group4.(field4));
   min4.(field4) = min(group4.(field4));
   change4.(field4)=max4.(field4)-min4.(field4);
   changed4(i4)=change4.(field4);
 end
    
stem(ind4,changed4);
subtitle('S doped')
ylim([0 500]);
%xlim([0 1000]);
box on;
xlabel('')
ylabel('')


np8(5)=nexttile;
cd5=[KOH_NOdope(:,9);H2SO4_NOdope(:,9)];
cap5=[KOH_NOdope(:,10);H2SO4_NOdope(:,10)];
tt5=[cd5,cap5];
ind5=unique(tt5(:,1));

 for i5=1:length(ind5)
     field5=sprintf('G%d',i5);
   group5.(field5) = tt5(tt5(:,1)==ind5(i5),2);
  
 end
 
 changed5=zeros(length(ind5),1);
 for i5=1:length(ind5)
     field5=sprintf('G%d',i5);
   max5.(field5) = max(group5.(field5));
   min5.(field5) = min(group5.(field5));
   change5.(field5)=max5.(field5)-min5.(field5);
   changed5(i5)=change5.(field5);
 end
    
stem(ind5,changed5);
subtitle('N/O co-doped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')


np8(6)=nexttile;
cd6=KOH_NSdope(:,9);
cap6=KOH_NSdope(:,10);
tt6=[cd6,cap6];
ind6=unique(tt6(:,1));

 for i6=1:length(ind6)
     field6=sprintf('G%d',i6);
   group6.(field6) = tt6(tt6(:,1)==ind6(i6),2);
  
 end
 
 changed6=zeros(length(ind6),1);
 for i6=1:length(ind6)
     field6=sprintf('G%d',i6);
   max6.(field6) = max(group6.(field6));
   min6.(field6) = min(group6.(field6));
   change6.(field6)=max6.(field6)-min6.(field6);
   changed6(i6)=change6.(field6);
 end
    
stem(ind6,changed6);
subtitle('N/S co-doped')
ylim([0 500]);
%xlim([0 250]);
box on;
xlabel('')
ylabel('')


np8(7)=nexttile;
cd7=[KOH_OSdope(:,9);H2SO4_OSdope(:,9);Salt_OSdope(:,9)];
cap7=[KOH_OSdope(:,10);H2SO4_OSdope(:,10);Salt_OSdope(:,10)];
tt7=[cd7,cap7];
ind7=unique(tt7(:,1));

 for i7=1:length(ind7)
     field7=sprintf('G%d',i7);
   group7.(field7) = tt7(tt7(:,1)==ind7(i7),2);
  
 end
 
 changed7=zeros(length(ind7),1);
 for i7=1:length(ind7)
     field7=sprintf('G%d',i7);
   max7.(field7) = max(group7.(field7));
   min7.(field7) = min(group7.(field7));
   change7.(field7)=max7.(field7)-min7.(field7);
   changed7(i7)=change7.(field7);
 end
    
stem(ind7,changed7);
subtitle('O/S co-doped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')


np8(8)=nexttile;
cd8=[KOH_NOSdope(:,9);H2SO4_NOSdope(:,9)];
cap8=[KOH_NOSdope(:,10);H2SO4_NOSdope(:,10)];
tt8=[cd8,cap8];
ind8=unique(tt8(:,1));

 for i8=1:length(ind8)
     field8=sprintf('G%d',i8);
   group8.(field8) = tt8(tt8(:,1)==ind8(i8),2);
  
 end
 
 changed8=zeros(length(ind8),1);
 for i8=1:length(ind8)
     field8=sprintf('G%d',i8);
   max8.(field8) = max(group8.(field8));
   min8.(field8) = min(group8.(field8));
   change8.(field8)=max8.(field8)-min8.(field8);
   changed8(i8)=change8.(field8);
 end
    
stem(ind8,changed8);
subtitle('N/O/S co-doped')
ylim([0 500]);
%xlim([0 2500]);
box on;
xlabel('')
ylabel('')


xlabel(t9,'Current density (A/g)','Fontname','Calibri Light','Fontsize',15);
ylabel(t9,'Change in specific capacitance (F/g)','Fontname','Calibri Light','Fontsize',15);

set(np8, 'FontName', 'Calibri Light','FontSize',14)


