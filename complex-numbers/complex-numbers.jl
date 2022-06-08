import Base: +, -, *, /, ^, ==, ≈, abs, conj, real, imag

struct ComplexNumber<:Number
    a::Number
    b::Number
    ComplexNumber(a, b)= new(a,b)
end

function +(C::ComplexNumber, D::ComplexNumber)
    return ComplexNumber(C.a + D.a, C.b + D.b)
end 
function -(C::ComplexNumber, D::ComplexNumber)
    return ComplexNumber(C.a - D.a, C.b - D.b)
end
function *(C::ComplexNumber, D::ComplexNumber)
    return ComplexNumber(C.a*D.a  - C.b*D.b, C.b*D.a + C.a*D.b)
end
function abs(C::ComplexNumber)
    return (C.a^2 + C.b^2)^(1/2)
end
function conj(C::ComplexNumber)
    return ComplexNumber(C.a, -C.b)
end
function /(C::ComplexNumber, D::ComplexNumber)
    return ComplexNumber((C.a * D.a + C.b * D.b)/(abs(D)^2), (C.b*D.a - C.a*D.b)/(abs(D)^2))
end 
function real(C::ComplexNumber)
    return C.a
end
function imag(C::ComplexNumber)
    return C.b
end
function exp(C::ComplexNumber)
    return ComplexNumber(Base.MathConstants.e^(C.a), 0)*ComplexNumber(cos(C.a), sin(C.b))
end 
function ==(C::ComplexNumber, D::ComplexNumber)
    return isapprox(C.a, D.a) && isapprox(C.b, D.b)
end
function ≈(C::ComplexNumber, D::ComplexNumber)
    return isapprox(C.a, D.a) && isapprox(C.b, D.b)
end
