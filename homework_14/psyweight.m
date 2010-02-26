function x=psyweight(f,db)

% function x=psyweight(f,db)
% Interpolate the iso226 table to fit the given ordinates, and return
% a basic psychoacoustic weighting function for frequency components.
 
% Set a default sound pressure level
if nargin<2
 db=50;
end

% Get standard equal-loudness model at the given sound pressure level
[spl,freq]=iso226(db);

% Initialize output weights
x=zeros(size(f));
n=length(freq);

p1=sum(f<freq(1));
if(p1>=1)
	x(1:p1)=linspace(spl(1),spl(1),p1)';
end
for j=2:n
	p1=sum(f<=freq(j-1));
	p2=sum(f<freq(j));
	x(p1:p2)=linspace(spl(j-1),spl(j),p2-p1+1)';
end

x=1./x;
x=x/max(x);
x=length(x)*x/sum(x);
