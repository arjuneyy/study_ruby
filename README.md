<style>
	.alert {
		position: relative;
		padding: 1.25rem;
		margin-bottom: 1rem;
		border: 1px solid transparent;
		border-radius: 0.25rem;
	}

	.alert-danger {
		color: #721c24;
		background-color: #f8d7da;
		border-color: #f5c6cb;
		border-left: 3px solid #ff3232 !important;
	}

	.alert-info {
		color: #004085;
		background-color: #cce5ff;
		border-color: #b8daff;
		border-left: 3px solid #3232ff !important;
	}

	.alert-warning {
		color: #856404;
		background-color: #fff3cd;
		border-color: #ffeeba;
		border-left: 3px solid #cccc00 !important;
	}

	.alert-title {
		color: inherit;
		font-weight: bold;
		text-decoration: underline;
	}

	.code {
		font-family: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
		padding: 2px 4px;
		font-size: 90%;
		font-weight: bold;
		color: #c7254e;
		background-color: #f9f2f4;
		border-radius: 4px;
	}
</style>

# Ruby 101
http://ruby-for-beginners.rubymonstas.org/writing_methods/scopes.html
## I. Install Ruby using Ruby Version Manager (RVM)
**Update Ubuntu Packages**

```sh
sudo apt update
```

**Add Ubuntu Dependencies**
```sh
sudo apt install curl g++ gcc autoconf automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev
```

**Get rvm installation script**
```sh
curl -sSL https://get.rvm.io | bash -s stable
```

**Load rvm script environment**
```sh
source ~/.rvm/scripts/rvm
```

**Check rvm List**
```sh
rvm list known
```

**Install Ruby**
```sh
rvm install ruby
```

**Check Ruby Version**
```sh
ruby -v
```

***


## I. Variables
- No data typing
- Variable names shouldn't start with a number.
- Variable names should not have symbols in them aside from `_` .
- Variable names should not be Ruby reserve keywords such as `class`, `end`, `def` and `etc`.

## II. Data Types
- All data types are based on classes because Ruby is an object-oriented language.
- Everything is an object which belongs to a class.
- The class can be determined using .class .

```rb
"Hello".class
>>> String

1.class
>>> Integer

1_000_000.class
>>> Integer

5.1.class
>>> Float

[1, 2].class
>>> Array

true.class
>>> TrueClass

false.class
>>> FalseClass

{:name => "John" }.class
>>> Hash

:name.class
>>> Symbol
```


- The `_`  in literal numbers, these are typically ignored and are only used to make large numbers readable.
- `Symbol` is a ruby data type.

> "If the textual content of the object is important, use a String. If the identity of the object is important, use a Symbol."



## III. Operators
### 3.1. Arithmetic Operators

| Symbol | Description    |
|--------|----------------|
| +      | addition       |
| -      | subtraction    |
| *      | multiplication |
| /      | division       |
| **     | exponentiation |
| %      | Modulus        |



###  3.2. Assignment Operators
| Symbol | Example | Same as    |
|--------|---------|------------|
| =      | a = 2   | a = 2      |
| +=     | a += 2  | a = a + 2  |
| -=     | a -= 2  | a = a - 2  |
| *=     | a *= 2  | a = a - 2  |
| /=     | a /= 2  | a = a / 2  |
| **=    | a **= 2 | a = a ** 2 |
| %=     | a %= 2  | a = a % 2  |


###  3.3. Parallel Assignment
Facilitates variable initialization using a single line of code.
```rb
a, b = 4, 5

>>> a = 4
>>> b = 5

# Swap values
a, b = b, a
>>> a = 5
>>> b = 4

# Assign value to one variable
a = b = 5
>>> a = 5
>>> b = 5

# Assign multiple values to one variable
a = 1,2
>>> a = [1, 2]  # Array

# Assign values in array to variables - Destructuring
a, b, *c = [1, 2, 3, 4] # c will contain the remaining unassigned values
>>> a = 1
>>> b = 2
>>> c = [3, 4] # Array
```

### 3.4. Comparison Operators
| Symbol  | Description                                                     |
|---------|-----------------------------------------------------------------|
| >       | Greater than                                                    |
| <       | Less than                                                       |
| ==      | Equal to                                                        |
| !=      | Not Equal                                                       |
| >=      | Greater or equal to                                             |
| <=      | Less than or equal to                                           |
| < = >   | (no space) combined comparison                                  |
|         | Returns  0 if both operands are equal.                          |
|         | Returns  1  if the first operand is greater than the second.    |
|         | Returns-1  if the second operand is greater than the first.     |
| ===     | Case equality, use to test the equality within a case statement |
| .eql?   | Check the same type and value                                   |
| .equal? | Check the same object id.                                       |

```rb 
(1..10)=== 5
>>> true # since 5 is in the range

3 < = > 3 
>>> 0

3 < = > 0
>>> 1

4 < = > 8
>>> -1

----------------------
a = 1
b = 1.0

a==b
>>> true  # since the have the same value regardless of the type

a.eql? b
>>> false # because the have different types

a.equal? b
>>> false # because the have different object id

a.object_id
>>> 70000000000001

b.object_id
>>> 70000000000002
--------------------------

a = b = 5  # a and b have the same id

a.object_id
>>> 70000000000001

b.object_id
>>> 70000000000001 
```

### 3.5. Logical Operators
| Operator | Description                                |
|----------|--------------------------------------------|
| and      | true if both operands are true             |
| or       | true if either operand is true             |
| not      | true of operands is false                  |
| &&       | true if both operands are non-zero         |
| \|\|     | true if either of the operands is non-zero |
| !        | true if the operand is false               |


### 3.6. Special Operator
Range
```rb
(1..5).to_a
>>> [1, 2, 3, 4 ,5]

nums = (1..5).to_a
nums
>>> [1, 2, 3, 4 ,5]

nums.class
>>> Array

('a'..'z').to_a
>>> ['a', 'b', 'c', ..., 'z']

defined? nums
>>> 'local variable'

defined? wew
>>> nil
```

---
## IV. Conditionals

```rb
a = 5
b = 4

if a > b
    puts "a is less than b"
else
    puts "a is greater than b"
end

# Chaining Conditionals
if a <= b
    puts "#{a} less than or equal to #{b}"
elsif a >= b
    puts "#{a} greater than or equal to #{b}"
end

# Variable assignments


# Variable assignments
message = if a > b
    "a greater than b"
elsif a < b
    "a less than b"
else
    "a equal to b"
end

puts message

```

### 4.1. Unless Statement
```rb
is_online = false

unless is_online
    puts "maintenance"
end

# Assigning to a variable
page = unless is_online
    "maintenance"
else
    "homepage"
end

# Ternary operator
page = is_online ? "homepage" : "maintenance"

# Oneliner unless
unless is_online then puts "maintenance" else puts "homepage" end

# Oneliner if-else
if is_online then puts "maintenance" end
```

### 4.2. Case Statement

```rb
number = 1

case number
when 0
    puts "number is 0"
when 1
    puts "number is 1"
else
    puts "number is neither 0, nor 1"
end

# Variable assignment
result = case 
when number == 0
    "number is 0"
when number == 1
    "number is 1"
else
    "number is neither 0, nor 1"
end

# Shorhand case statement
result = case
when number > 0 then "positive"
when number < 0 then "negative"
else "0"
end

# Case with ranges
waist = 38

case waist
when 29..31
    puts "small"
when 32..34
    puts "medium"
else
    puts "large"
end
```

## V. Loops
### 5.1. While Loop
```rb
i = 0
while i < 5
    puts i
    i += 1
end

# One-liner loop
i = -1
puts "#{i +=1}" while i < 4
```

### 5.2. Until Loop
```rb
i = 0
until i > 5
    puts i
    i += 1
end

# One-liner loop
i = -1
puts "#{i +=1}" until i > 4
```

### 5.3. For Loop
```rb
for i in 1..5 do
    puts i
end

for i in ['a', 'b', 'c'] do
    for i
end
```

### 5.4. Iterator
```rb
# One-liner, use of curly braces if code is one-line
(1..5).each { |i| puts i}
(1..5).each { puts _1 }

# Multiline operations should be enclosed with do-end block.
(1..5).each do |i|
    puts i
end
```

### 5.5. Do-While Loop
```rb
i = 0
begin
    puts i
    i += 1
end while i < 5

# Can also use `until` loop
i = 0
begin
    puts i
    i += 1
end until i > 4
```

## VI. Break-Next Keywords
```rb
for i in (1..5)
    puts i
    if i == 3
        break
    end
end

# prints 1-5 except 3
for i in (1..5)
    if i == 3
        next
    end
    puts i
end

# Infinite loop, breaks loop when user inputs greater than `100`
loop do
    print "Enter a number: "
    num = gets.chomp.to_i
    if num > 100
        puts "Breaking the loop"
        break
    end
end
```


## VII. Methods
- Make code blocks reusable
- Types of Methods
    1. Builtin Methods
    2. User-defined Methods 

```rb
# Optional parenthesis if no parameters.
def hello
    puts "hello"
end

def hello(name)
    puts "Hello #{name}"
end


hello("Jack")
hello "Jack"
```
<div class="alert alert-danger">
    <div class="alert-title">IMPORTANT!</div>
    <ul>
        <li>In Ruby, we don't need to explicitly use the `return` keyword.</li>
        <li>If we don’t do anything else, then a method will return the return value of the last evaluated statement.</li>
        <li>The last statement executed in the method block will always be the returned value.</li>
    </ul>
</div>

```rb
def add(num1, num2=2)
    num1 + num2
end

p add 1, 2 # or puts add(1,2)
```

<div class="alert alert-info"><div class="alert-title">NOTE:</div>
So when do you use parentheses, and when do you omit them?

There is no clear rule about this, but there are some conventions. For now, you can just stick with the convention we are using at our study groups, which is:

<ul>
    <li>Use parentheses for all method calls that take arguments, except for the methods puts and p (and later: require and include).</li>
    <li>If a method does not take any arguments, then do not add empty parentheses, omit them.</li>
    <li>So the idiomatic way to write the line above is:</li>
</ul>
</div>

https://stackoverflow.com/questions/1872110/is-ruby-pass-by-reference-or-by-value

### 7.1. Blocks
<i>Like methods, but without name.</i>
<div class="alert alert-danger">
    <div class="alert-title">Here's what you need to know!</div>
    <ul>
        <li>Calling a block runs the code inside that block (like calling a method)</li>
        <li>Yield can pass any number of arguments to the block.</li>
        <li>The block's return value becomes the return value for yield.</li>
    </ul>
</div>

```rb
def make_coffee
    yield "sugar"
    yield "ground coffee"
    yield "creamer"
    yield "hot water"
end

make_coffee { |ingredients| puts "Adding #{ingredients} to the cup!" }

>>> Adding sugar to the cup!
>>> Adding ground coffee to the cup!
>>> Adding creamer to the cup!
>>> Adding hot water to the cup!
```

#### 7.1.1. Ruby Builtin Block
```rb
BEGIN {
    puts "BEGIN block"
}

END {
    puts "END block"
}

puts "main program"


>>> BEGIN block
>>> main program
>>> END block

```

### 7.2. Method Arguments
#### 7.2.1. Positional Arguments
```rb
def person(name, age=30)
    puts "Firstname: #{name}"
    puts "Age: #{age}"
end

person("john")

>>> Firstname: John
>>> Age: 30
```

#### 7.2.2. Keyword Arguments
```rb
def person(name, age:30)
    puts "Firstname: #{name}"
    puts "Age: #{age}"
end

person(name: "John", age: 40)
>>> Firstname: John
>>> Age: 40
```
#### 7.2.3. Variable Length Argument

```rb
def hello(*names)
    names.each { |name| puts name}
end

hello "arjun", "patty"

>>> arjun
>>> patty


# Block as argument in a method
def test( &block )
    block.call
end

test { puts "a block" }
```
### 7.3. Lambda Methods or Anonymous Methods

#### 7.3.1. One-Liner Lambda
```rb
puts lambda { |x| x*x}.call(8)
>>> 64

adder = lambda { |x, y| x+y }
puts adder.call 5, 4
>>> 9

# Shorthand lambda is `->`
squarer = ->(x) { x*x }
puts squarer.call(8)
>> 64

adder = ->(x, y) { x+y }
puts adder.call 6, 5
>>> 11

```

#### 7.3.2. Multi-line Lambda
```rb
# Multiline lambdas
sqr = lambda do 
    |x|
    x*x
end

puts sqr.call 8
```

#### 7.3.3. Lambda as Method Argument
```rb
sqr = lambda do 
    |x|
    x*x
end

puts sqr.call 8


def test(func, args)
    func.call(args)
end

puts test sqr, 8
>>> 64
```
## VIII. Variables
Global variables starts with <span class="code">$</span>.
```rb
$a = 1
puts "$a is a global variable"

def test
    puts "$a = #{$a}"  # interpolation
end

test()

>>> $a is a global variable
>>> 1
```

## IX. Recursive Methods
```rb
# Sum of  5 + 4 + 3 + 2 + 1 + 0
def calc(num)
  return 0 if num.zero?
  num + calc(num - 1)
end

puts calc(5)

>>> 15
```
<div class="alert alert-warning">
<div class="alert-title">Warning!</div>
While recursion makes our code looks elegant, its inefficient and consumes lots of memory.
</div>

## X. Modules & Gems
**Modules** structure for grouping constants, methods, and classes. Use to breakdown program into small manageable files.

```rb
# test_module.rb
module ModuleA
    MESSAGE = "This is a module constant."

    def ModuleA.square(num)
        num * num
    end
end


# -----------------------------------------------------------------

# main.rb
$LOAD_PATH << '.'  # Appends current directory to the load path.
require 'test_module'

puts ModuleA::MESSAGE  # Uses `::` to get constants

puts ModuleA.square 5

## Another way of using require keyword, using relative path
require "./test_module"

puts ModuleA::MESSAGE  # Uses `::` to get constants
puts ModuleA.square 5

## Using `require_relative` keyword
require_relative 'test_module'

puts ModuleA::MESSAGE  # Uses `::` to get constants
puts ModuleA.square 5
```

Another example:

```rb
# 6_1_test_module.rb
require 'digest'

module Encryption

  def self.encrypt(str)
    Digest::SHA256.hexdigest(str)
  end
end

-------------------------

# main.rb
require_relative "6_1_test_module"

puts Encryption::encrypt('test')
>>> 9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08
```

### 10.1. Module Instance and Singleton Methods
```rb
# encrypt.rb
module Encryption extend self
  def encrypt(str)
    Digest::SHA256.hexdigest(str)
  end
end
```
By extending <span class="code">self</span> to your Module, methods in a module can be defined as instance and singleton methods at the same time.

You can then use it as the following:
```rb
require_relative "encrypt"

Encryption.encrypt("SomePassword")
```

Or you can include it to a class.
```rb
require_relative "encrypt"

class Person
    include Encrypt

    def initialize(name, pswd)
        @name = name
        @password = pswd
    end

    def encrpted_password
        encrypt(@password)
    end
end
```

<div class="alert alert-info"><div class="alert-title">When to Use a Module and When to use a Class </div>
A class should be used for functionality that will require instantiation or that needs to keep track of state. A module can be used either as a way to mix functionality into multiple classes, or as a way to provide one-off features that don't need to be instantiated or to keep track of state. A class method could also be used for the latter.
<br/><br/>
With that in mind, I think the distinction lies in whether or not you really need a class. A class method seems more appropriate when you have an existing class that needs some singleton functionality. If what you're making consists only of singleton methods, it makes more sense to implement it as a module and access it through the module directly.
</div>
### 10.2. Gems
Gems can be found at http://www.rubygems.org.

#### 10.2.1. Installing sample gem.

Copy and paste it to your <span class="code">Gemfile</span>.

```rb
gem 'business_time', '~> 0.13.0'
```

Then execute the following command.
```sh
bundle install
```

You can then use grep command, <span class="code">gem list | grep business </span>, to check if the gem has successfully installed.

<div class="alert alert-info"><div class="alert-title">NOTE:</div>
If you don't have a Gemfile yet, you can execute <span class="code">bundle init</span> command to initialize a Gemfile.
</div>

```rb
require 'business_time'

1.business_hour.from_now

>>> 2023-08-03 10:00:00 +0800
```

## XI. Arrays
Imagine you are running a programming study group, and you want to quickly write a piece of code that runs a little raffle to assign people to pairs randomly.

```rb
people = [
  "Anne",
  "Elizabeth",
  "Erica",
  "Iryna",
  "Johanna",
  "Juliane",
  "Katja",
  "Katrin",
  "Maria",
  "Renate",
  "Sureka",
  "Miriam",
  "Zazie",
  "Anja"
]
people.shuffle.each_slice(2) do |pair|
  puts pair.join(', ')
end
```

Ruby provides us with a piece of syntax that does exactly this:
```rb
people = %w(
  Anne
  Elizabeth
  Erica
  Iryna
  Johanna
  Juliane
  Katja
  Katrin
  Maria
  Renate
  Sureka
  Miriam
  Zazie
  Anja
)
people.shuffle.each_slice(2) do |pair|
  puts pair.join(', ')
end
```
<div class="alert alert-info"><div class="alert-title">NOTE:</div>
The w in <span class="code">%w(...)</span> stands for <strong>“words”</strong>, which means an array defined like this will always only contain strings. So, <span class="code">%w(1 2 3 4)</span> would result in the same array as <span class="code">["1", "2", "3", "4"]</span>.
</div>

## XII. Hashes
- Unordered collection of items.
- Key-value pair

```rb
h = { :name=>"John", :lastname="Doe" }
h.class

>>> Hash

# Or use hash class
h = Hash.new
h = Hash["number"=>100, "value"=>"test]
```
### 12.1. Two Different Syntax in Creating a Hash
#### 12.1.1. Old Syntax
```rb
h = { :name=>"John", :lastname="Doe" }
```
#### 12.1.2. New Syntax
```rb
h = { name: "John", lastname: "Doe"}
```
<div class="alert alert-danger"><div class="alert-title">IMPORTANT!</div>
The new colon <span class="code">:</span> syntax only works if the key is a <span class="code">Symbol</span>.
</div>

### 12.2. Traversing Hash
- Can be iterated using loops
```rb
person = { name:"John", lastname:"Doe", city:"New York" }

for key, value in person
    puts "#{key} - #{value}"
end

>>> name - John
>>> lastname - Doe
>>> city - New York

p person.keys
>>> [:name, :lastname, :city] 

p person.values
>>> ["John", "Doe", "New York"] 
```
## XIII. Exceptions
```rb
a = 5
raise Exception, "an exception" if a > 5
```

Exception handling
```rb
begin
    puts "processing"
    raise NameErorr, "Custom error message"
rescue NoMethodError => e
    puts "#{e.class} -> #{e.message}"
rescue Exception => e
    puts "Exception handling"
    puts e.message
else
    puts "No errors"
ensure  # finally
    puts "ensuring execution"
end
```

### 13.1. Throw-catch Statement
```rb
arr = [
  ["foo", "bar", "biz", "fozz", "arjun"],
  ["a", "b", "c", "d"],
  [1, 2, 3, 4]
]

counter = 0
search = nil
param = "arjun"

search = catch(:found) do
  arr.each { |row|
    row.each { |item|
      counter += 1
      throw(:found, item) if item == param
    }
  }
end
puts "Counter: #{counter}"
puts "Search: #{search}"
```
## XIV. OOP
### 14.1. Inheritance
```rb
class Person
  def initialize(name, age)
    @name, @age = name, age
  end
end

class Employee < Person

  def display_info
    puts "Name: #@name. Age: #@age"
  end
end

emp = Employee.new("arjun", 22)
emp.display_info
```

## XV. Include, Extend, Prepend Keywords
### 15.1. Include
```rb
module ModuleA
  def dummy
    p "Dummy method for ModuleA"
  end
end

module ModuleB
  def dummy
    p "Dummy method for ModuleB"
  end
end

class Worker
  include ModuleA
  include ModuleB

  def run
    dummy
  end
end

worker =  Worker.new
worker.run
```

### 15.2. Prepend
```rb
module WorkerDebugger
  def run(params)
    puts "Running with params #{params.inspect}"
    result = super
    puts "Completed Result: #{result}"
  end
end

class Worker
  prepend WorkerDebugger
  def run(params)
    puts "Working on params: #{params.inspect}"
    params.map {|i| i**2}
  end
end

w = Worker.new
w.run([1,3,4])
p Worker.ancestors

>>> Running with params [1, 3, 4]
>>> Working on params: [1, 3, 4]
>>> Completed Result: [1, 9, 16]
>>> [WorkerDebugger, Worker, Object, Kernel, BasicObject]
```

### 15.3. Extend
```rb
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
t.method1
>>> 9_keywords.rb:67:in <main>: undefined method method1 for 
>>> <Test:0x000055ccc0523d88> (NoMethodError)
>>> Did you mean?  method
>>>                methods
>>>                method2

# Cannot call method1 since its a class method

t.method2
>>> Method2 is an instance method.
```

## XVI. Polymorphism
```rb
class Document
  def initialize(title)
    @title = title
  end
end

class PDF < Document
  def print
    p "Printing PDF, title: #@title"
  end
end

class Word < Document

  def print
    p "Printing Word, title: #@title"
  end
end

Word.new("Word Document").print
PDF.new("PDF document").print
```

### 16.1. Duck Typing
> If it looks like a duck, and it quack likes a duck, then it definitely is a duck.

```rb
class Skype
  def call
    p "Calling from skype"
  end
end

class WhatsApp
  def call
    p "Calling from WhatsApp"
  end
end

apps = [Skype, WhatsApp]
apps.each { |app| app.new.call }
```

## XVII. Encapsulation
- Data abstraction.
```rb
class Person
  attr_accessor :name, :profession
  def initialize(name, profession)
    @name, @profession = name, profession
  end

  def info
    p "Name: #@name. Profession: #@profession"
  end
end

person = Person.new("Arjun", "Dev")
person.info

>>> "Name: Arjun. Profession: Dev"
```

## XVIII. Method Overrides and Overload
### 18.1. Method Overriding
```rb
class Animal
  def swim
    p "Animal can swim"
  end
end

class Tiger < Animal
  def swim
    p "Tigers can swim"
  end
end

tiger = Tiger.new
tiger.swim

>>> "Tigers can swim"
```

```rb
class Point
  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    # Override to_s method
    "(#@x, #@y)"
  end
end

point = Point.new(23, 45)
p point.to_s

>>> "(23, 45)"
```

```rb
class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    # Override to_s method
    "(#@x, #@y)"
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end
end

p1 = Point.new(1, 1)
p2 = Point.new(2, 2)

puts p1 + p2

>>> (3, 3)
```

## XIX. Private and Public Method

```rb
class A
  def method1
    p "method1: public method from #{self.class}"
  end

  # private
  def method2
    p "method2: private method from #{self.class}"
  end

  # protected
  def method3
    p "method3: procted method from #{self.class}"
  end

  private :method2
  protected: method3
end

class B < A
  def test
    method1
  end
end
```