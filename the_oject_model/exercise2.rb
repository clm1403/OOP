#What is a module? What is its purpose? How do we use them with our classes?
#Create a module for the class you created in exercise 1 and include it properly.

module move
  def move(run)
    puts "#{run}"
  end
end

class GoodDog
  include move
end

lassy = GoodDog.new



# A module allows us to group reusable code into one place.
# We use modules in our classes by using the include reserved word, followed by the module name.
# Modules are also used as a namespace.