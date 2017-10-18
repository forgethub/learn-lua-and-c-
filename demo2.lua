#!/usr/local/bin/lua
--*=============================================================================
--#
--# Author: zhouzhibo
--#
--# QQ : 1400045186
--#
--# Last modified:  2017-10-18 21:24
--#
--# Filename:       demo.lua
--#
--# Description: 
--#
--=============================================================================*/
--定义欧拉常数
constant_r=0.5772156649
--尾函数调用
function fn_fac(n,total)
    total=total or 1
    if n == 0 then
        return total
    end
    return fn_fac(n-1,total+1+2/(2*n-1))
end

--近似等于
function fn_approximate(n)
    return n+2*math.log(2*n+1)-0.5*math.log(n+1)+constant_r
end

function main()
    while true
    do
        print ("Please input the value of n.")
        n=io.read()
        if tonumber(n) == nil then
            print ("The value of n must be digiti,please input it again.")
        elseif tonumber(n) < 10000 then
            print (fn_fac(n))
            break
        else
            print (fn_approximate(n))
            break
        end
    end
end

main()
