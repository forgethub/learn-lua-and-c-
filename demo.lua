#!/usr/local/bin/lua
--*=============================================================================
--#
--# Author: zhouzhibo
--#
--# QQ : 1400045186
--#
--# Last modified:  2017-10-18 19:20
--#
--# Filename:       demo.lua
--#
--# Description: 
--#
--=============================================================================*/

--Î²º¯Êýµ÷ÓÃ
function fn_fac(n,total)
    total=total or 1
    if n == 0 then
        return total
    end
    return fn_fac(n-1,total*n)
end

function main()
    while true
    do
        print ("Please input the value of n.")
        n=io.read()
        if tonumber(n) == nil then
            print ("The value of n must be digiti,please input it again.")
        else
            print (fn_fac(n))
            break
        end
    end
end

main()
