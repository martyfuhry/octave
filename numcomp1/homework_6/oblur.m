function T = oblur(N,bandw);
T = full(spdiags(ones(N,2*bandw-1),[-bandw+1:bandw-1],N,N)/(2*bandw-1));

