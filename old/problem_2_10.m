%problem 2.10

Sn = 0;
Snp = -1;
n = 1; % index

while Snp - Sn != 0
	Snp = Sn;
	Sn = Sn + 1 / n**4;
	n++;
end

n
n = n*2;

S2n = 0;
while n > 0;
	S2n = S2n + 1 / (n ** 4);
	n--;
end

Sn
S2n
