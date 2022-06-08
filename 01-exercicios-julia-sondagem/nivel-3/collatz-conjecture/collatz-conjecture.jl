function collatz_steps(input)
    # Write implementation here
    count = 0
    if(input<=0)
        throw(DomainError(input, "Expects a number > 0"))
    else 
        while (input!=1)
            if(input%2 ==0)
                input /=2
                count+=1
            else
                input = 3*input + 1
                count+=1
            end  
        end
        return count
    end
end
