"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    # Write implementation here
    if(year%4 == 0)
        x = true
    else
        x = false
    end 

    if(year%100==0)
        y = true
    else
        y=false
    end 

    if(year%400==0)
        z = true
    else
        z = false
    end 

    if(x && !y)
        return true
    elseif(z)
        return true
    else
        return false
    end
end

