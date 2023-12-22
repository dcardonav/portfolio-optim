using Main.PortfolioOptim

n = 3
m = 2

c = [1.1 1.2 1.3]'
BigC = [1.e-2 0 0; 0 5.0e-2 0; 0 0 7.0e-2]
A = [1 1 1; 0.5 0.5 0]
b = [1 1]'


Main.PortfolioOptim.checkdata(BigC, 1.0e-6)


H = vcat([BigC A'], [A zeros(m, m)] )
rhs = vcat(-c, b)
y = H^-1 * rhs
x = y[1:n]
u = y[(n+1):(n+m)]

