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