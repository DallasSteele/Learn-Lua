print(
    "Hello World"
)

print("typical day 1 activity")

-- defines a factorial function
function fact (n)
    if  n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

print("enter a random number, but not as high as to not it make broken")
a = io.read("*number")  -------it just reads a number
print(fact(a))