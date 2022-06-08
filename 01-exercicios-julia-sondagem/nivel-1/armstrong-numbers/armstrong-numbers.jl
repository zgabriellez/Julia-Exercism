function number(num)
    count = 0
    if (num==0)
        return count
    end 
    while(num>=1)
        count += 1
        num/=10
    end 
    return count
end 

function isarmstrong(num)
    # Write implementation here
    x = num
    y = 0
    count = number(num)
    for i in 1:count
        if(x>=1)
            n = Int(x) % 10
            y+= n^count
            x= floor(x/Int(10))
        end
    end 
    if(y==num)
        return true
    else 
        return false
    end
end