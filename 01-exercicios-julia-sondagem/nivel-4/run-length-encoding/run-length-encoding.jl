#=function number(num)
    count = 0
    if (num==0)
        return count
    end 
    while(num>=1)
        count += 1
        num/=10
    end 
    return count
end =#
function encode(s)
    # Write implementation here
    result = Char[]
    count = 0
    i=1
    while(i<=lastindex(s))
        for j = i:(lastindex(s))
            if (s[i] == s[j])
                count+=1
            else
                break
            end
        end 
        if(count>1 && count<10)
            append!(result, '0' + count)
            append!(result, s[i])
            i+=count
        #elseif (count>=10)
        #    for i = 1:count
        #        append!(result, '0' + count%)
        else
            append!(result, s[i])
            i+=1
        end
        count=0
    end
    result2 = String(result)
    return result2
end

function decode(s)
    decode = Char[]
    count = 0 #type char

    j = 0
    if (isempty(s))
        return s
    end
    for i in s
        if isdigit(i)
            count+=i
        elseif(Int(count) == 0)
            append!(decode, Char(i))
        else 
            while(j!=(Int(count)-48))
                append!(decode, Char(i))
                j+=1
            end
            j = 0
            count = 0
        end
    end
    return String(decode)
end