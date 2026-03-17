# переписать ниже примеры из первого часа из видеолекции: 
# https://youtu.be/4igzy3bGVkQ
# по желанию можно поменять значения и попробовать другие функции
println("I'm excited to learn Julia!")
##
my_answer = 42
typeof(my_answer)
##
my_pi = 31.14159
typeof(my_pi)
##
my_name = "Julia"
my_answer = my_name
typeof(my_answer)
##

# маленький комент
#=

Огромный комент жесть

=#

power = 10 ^ 2

s1 = """Butterfly"""
s2 = """Hello"""
 
print("$s2, $s1")

s4 = string(s2, s1)

##
s4 = s2 * s1

##
phonebook = Dict("Evgesha" => "123-4567", "Oleg" => "987-6543")
print(phonebook["Evgesha"])
phonebook["Dima"] = "444-5555"
phonebook
pop!(phonebook, "Oleg")
phonebook
##
myfavouriteactions = ("tennis", "golf", "swimming")
myfavouriteactions[1]

##
fibonacci = [1, 1, 2, 3, 5, 8, 13]
fibonacci[3] = 0
fibonacci
push!(fibonacci, 21)
fibonacci[3] = 2
pop!(fibonacci)
##
numbers = [[1,2,3], [4,5]]
rand(4,3)
rand(4,3,2)
##


myfriends = ["Evgesha", "Oleg", "Dima"]
n = 1
while n <= length(myfriends)
    friend = myfriends[n]
    println("I'm talking to $friend")
    n += 1
end

for i in 1:10
    println(i)
end
##
m,n = 5,5
A = zeros(m,n)

for i in 1:m
    for j in 1:n
        A[i,j] = i + j
    end
end
A
##
B = zeros(m,n)

for i in 1:m, j in 1:n
    B[i,j] = i + j
end
B
##
C = [i+j for i in 1:m, j in 1:n]

##
for n in 1:10
    A = [i+j for i in 1:n, j in 1:n]
    display(A)
end
##
x = 3
y = 90
if x > y 
    println("x is greater than y")
elseif x < y
    println("x is less than y")
else
    println("x is equal to y")
end
##
x = 5
y = 4
x > y ? x : y

(x > y) && println("x is greater than y")

(x < y) && println("x is less than y")

##
function sayhi(name)
    println("Hello, $name !")    
end

function f(x)
    x^2
end

sayhi("Viktor")
f(42)

##
sayhi2(name) = println("Hello, $name !")
sayhi2("Oleg")
##
sayhi3 = name -> println("Hello, $name !")
sayhi3("Dima")
##
A = rand(4,4)
f(A)
A = rand(3)
# f(A) - ошибка
##
v = [3,5, 2]
sort(v)
result = v
v
##
sort!(v)
v

##
A = [i+3*j for j in 0:2, i in 1:3]
f(A) # нешироковещательная, квадрат матрицы
f.(A) # широковещательная, квадрат элемента матрицы
# f(v) ошибка, квадрат вектора не определён
f.(v) # широковещательная, квадрат элемента вектора

using Pkg
# Pkg.add("Example")
using Example
hello("Viktor")
# Pkg.add("Colors")
using Colors
palette = distinguishable_colors(100)
rand(palette, 3, 3)

#Pkg.add("Plots")
using Plots
x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()
plot(x,y,label = "line")
scatter!(x,y,label = "points")

##
using Plots
plotlyjs()
p = plot(x,y, label = "line")
scatter!(x,y,label = "points")


##
globaltemperatures =[14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17 ]
plot(numpirates, globaltemperatures, legend= false)
scatter!(numpirates, globaltemperatures, label = false)

xflip!()
xlabel!("Number of Pirates")
ylabel!("Global Temperature (°C)")
title!("Influence of pirate poppulation on global warming")

##
gr()
p1 = plot(x,x)
p2 = plot(x,x.^2)
p3 = plot(x,x.^3)
p4 = plot(x,x.^4)
p = plot(p1, p2, p3, p4, layout = (2,2), legend=false)


##
methods(+)
##
@which 3 + 3
@which 3.0 + 3.0 
@which 3.0 + 3
##
import Base: +
"hello " + "world!"
@which "hello " + "world!"


+(x::String, y::String) = string(x, y)
"hello " + "world!"
##

foo(x,y) = println("foo: $x, $y")
foo(x::Int, y::Int) = println("foo for Int: $x, $y")
foo(x::String, y::Int) = println("foo for String and Int: $x, $y")

foo(1,2.0)
foo(1,2)
foo("hello", 3)
##

A = rand(1:4, 3,3)
B = A 
C = copy(A)
[B C]
A[1] = 17
[B C]

##
x = ones(3)
b = A * x
##

Asym = A + A'
Apd = A'A
##
using LinearAlgebra
det(A)
A\b # решение системы линейных уравнений Ax = b 

##
Atall = A[:,1:2]
Atall\b

A = rand(3,3)
[A[:,1] A[:,1]]

Ashort = A[1:2,:]
display(Ashort)
Ashort\b[1:2] 