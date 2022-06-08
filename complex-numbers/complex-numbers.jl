import Base: +, -, *, /, ^, ==

struct ComplexNumber
    a
    b
    # -::function (c,d)
        
    # end
    # *::function (c,d)
        
    # end
    # /::function (c,d)
        
    # end
    # Conjugate::function ()
        
    # end
    # Abs::function ()
        
    # end
    # Exponent::function ()
        
    # end
    ComplexNumber(a,b) = new(a,b)
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
