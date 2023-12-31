function [level,MAT,MBT]=isodata(I)
I = im2uint8(I(:));
[hist_counts,hist_N]=imhist(I);
hist_counts(1)=0;
ii=1;
mum=cumsum(hist_counts);
Th(ii)=(sum(hist_N.*hist_counts))/mum(end);
Th(ii)=round(Th(ii));
mum2=cumsum(hist_counts(1:Th(ii)));
MBTT=sum(hist_N(1:Th(ii)).*hist_counts(1:Th(ii)))/mum2(end);
mum3=cumsum(hist_counts(Th(ii):end));
MATT=sum(hist_N(Th(ii):end).*hist_counts(Th(ii):end))/mum3(end);
ii=ii+1;
Th(ii)=round((MATT+MBTT)/2);
while abs(Th(ii)-Th(ii-1))>=1
mum2=cumsum(hist_counts(1:Th(ii)));
MBTT=sum(hist_N(1:Th(ii)).*hist_counts(1:Th(ii)))/mum2(end);
mum3=cumsum(hist_counts(Th(ii):end));
MATT=sum(hist_N(Th(ii):end).*hist_counts(Th(ii):end))/mum3(end);
ii=ii+1;
Th(ii)=round((MATT+MBTT)/2);
Thresholddd=Th(ii);
end
levell = (Thresholddd - 1) / (hist_N(end) - 1);
level = levell;
MATT = MATT / (hist_N(end) - 1);
MBTT = MBTT / (hist_N(end) - 1);
end
