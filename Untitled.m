close all
clc

%import sample.txt
sample=importdata('sample.txt');



%count number letters
a = sum(count(sample,'A','IgnoreCase',true));
b = sum(count(sample,'B','IgnoreCase',true));
c = sum(count(sample,'C','IgnoreCase',true));
d = sum(count(sample,'D','IgnoreCase',true));
e = sum(count(sample,'E','IgnoreCase',true));
f = sum(count(sample,'F','IgnoreCase',true));
g = sum(count(sample,'G','IgnoreCase',true));
h = sum(count(sample,'H','IgnoreCase',true));
i = sum(count(sample,'I','IgnoreCase',true));
j = sum(count(sample,'J','IgnoreCase',true));
k = sum(count(sample,'K','IgnoreCase',true));
l = sum(count(sample,'L','IgnoreCase',true));
m = sum(count(sample,'M','IgnoreCase',true));
n = sum(count(sample,'N','IgnoreCase',true));
o = sum(count(sample,'O','IgnoreCase',true));
p = sum(count(sample,'P','IgnoreCase',true));
q = sum(count(sample,'Q','IgnoreCase',true));
r = sum(count(sample,'R','IgnoreCase',true));
s = sum(count(sample,'S','IgnoreCase',true));
t = sum(count(sample,'T','IgnoreCase',true));
u = sum(count(sample,'U','IgnoreCase',true));
v = sum(count(sample,'V','IgnoreCase',true));
w = sum(count(sample,'W','IgnoreCase',true));
x = sum(count(sample,'X','IgnoreCase',true));
y = sum(count(sample,'Y','IgnoreCase',true));
z = sum(count(sample,'Z','IgnoreCase',true));

%exception list
a1 = sum(count(sample,'.','IgnoreCase', true));
a2 = sum(count(sample,' ','IgnoreCase', true));
a3 = sum(count(sample,'/','IgnoreCase', true));
a4 = sum(count(sample,'*','IgnoreCase', true));
a5 = sum(count(sample,'-','IgnoreCase', true));
a6 = sum(count(sample,'_','IgnoreCase', true));
a7 = sum(count(sample,'=','IgnoreCase', true));
a8 = sum(count(sample,'+','IgnoreCase', true));
a9 = sum(count(sample,'!','IgnoreCase', true));
a10 = sum(count(sample,'@','IgnoreCase', true));
a11 = sum(count(sample,'#','IgnoreCase', true));
a12 = sum(count(sample,'$','IgnoreCase', true));
a13 = sum(count(sample,'%','IgnoreCase', true));
a14 = sum(count(sample,'^','IgnoreCase', true));
a15 = sum(count(sample,'&','IgnoreCase', true));
a16 = sum(count(sample,'(','IgnoreCase', true));
a17 = sum(count(sample,')','IgnoreCase', true));
a18 = sum(count(sample,'{','IgnoreCase', true));
a19 = sum(count(sample,'}','IgnoreCase', true));
a20 = sum(count(sample,'[','IgnoreCase', true));
a21 = sum(count(sample,']','IgnoreCase', true));
a22 = sum(count(sample,':','IgnoreCase', true));
a23 = sum(count(sample,';','IgnoreCase', true));
a24 = sum(count(sample,'"','IgnoreCase', true));
a25 = sum(count(sample,'<','IgnoreCase', true));
a26 = sum(count(sample,'>','IgnoreCase', true));
a27 = sum(count(sample,',','IgnoreCase', true));
a28 = sum(count(sample,'?','IgnoreCase', true));
a29 = sum(count(sample,'|','IgnoreCase', true));
a30 = sum(count(sample,'\','IgnoreCase', true));
a31 = sum(count(sample,'`','IgnoreCase', true));
a32 = sum(count(sample,'~','IgnoreCase', true));

%this gives me the length of the message
len=a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p+q+r+s+t+u+v+w+x+y+z-a1-a2-a3-a4-a5-a6-a7-a8-a9-a10-a11-a12-a13-a14-a15-a16-a17-a18-a19-a20-a21-a22-a23-a24-a25-a26-a27-a28-a29-a30-a31-a32;



t1=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26];

%frequency of the repeated letters
ya=[a/len b/len c/len d/len e/len f/len g/len h/len i/len j/len k/len l/len m/len n/len o/len p/len q/len r/len s/len t/len u/len v/len w/len x/len y/len z/len];
yax=100*ya;

 %PLOTTING THE BAR GRAPH
stem(yax);

%Labeling the plot points
strValues = strtrim(cellstr(num2str(yax(:),'(%2.2f)')));
text(t1,yax,strValues,'VerticalAlignment','bottom', 'HorizontalAlignment','center');

 %setting up my plot AND TITLES 
 grid on;
 title('Relative Frequency of Leters in English Text');
 ylabel('Relative Frequency (%)' );
 xlabel('Letters');
 axis([0 27 0 20]);

 %CHANGING THE XLABLE FORMAT
 str={'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';};
 set(gca, 'XTickLabel',str, 'XTick',1:numel(str))
 
 
 
 
 