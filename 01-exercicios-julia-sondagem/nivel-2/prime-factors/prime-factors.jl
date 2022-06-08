function next_prime(x)
    n = 0
    x+=1
    for i in 2:5
        if (x!=i)
            if (x%i == 0)
                n+=1
            end
        end 
    end 

    if(n>0)
        return next_prime(x)
    else
        print(x)
        return x
    end 

end
function prime_factors(N)
    a = 2
    result = Int[]
    while(N!=1)
        if(N%a==0)
            N/=a
            append!(result, a)
        else
            a = next_prime(a)
        end 
    end 
    if(N==1)
        return result
    end
end
