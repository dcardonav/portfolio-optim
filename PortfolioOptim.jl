module PortfolioOptim

using LinearAlgebra

function checkdata(Sigma, tol)

    if LinearAlgebra.norm(Sigma - Sigma') > tol
        errmsg = "Error: covariance matrix is not symmetric"
        return
    end
    
    if minimum(LinearAlgebra.eigvals(Sigma)) < tol
        errmsg = "Error: covariance matrix not positive definite"
        return
    end
end

end