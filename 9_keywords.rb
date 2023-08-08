# module ModuleA
#   def dummy
#     p "Dummy method for ModuleA"
#   end
# end

# module ModuleB
#   def dummy
#     p "Dummy method for ModuleB"
#   end
# end

# class Worker
#   include ModuleA
#   include ModuleB

#   def run
#     dummy
#   end
# end

# worker =  Worker.new
# worker.run


# ### PREPEND
# module WorkerDebugger
#   def run(params)
#     puts "Running with params #{params.inspect}"
#     result = super
#     puts "Completed Result: #{result}"
#   end
# end

# class Worker
#   prepend WorkerDebugger
#   def run(params)
#     puts "Working on params: #{params.inspect}"
#     params.map {|i| i**2}
#   end
# end

# w = Worker.new
# w.run([1,3,4])
# p Worker.ancestors

# >>> Running with params [1, 3, 4]
# >>> Working on params: [1, 3, 4]
# >>> Completed Result: [1, 9, 16]

### Extends
module ModuleA
  def self.method1 # class method
    puts "Method1 is a class method"
  end

  def method2
    puts "Method2 is an instance method."
  end
end

class Test
end

t = Test.new
t.extend ModuleA  # Extend keyword allows us to use the methods of the module
t.method2