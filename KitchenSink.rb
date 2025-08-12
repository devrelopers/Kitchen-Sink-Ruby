#!/usr/bin/env ruby
# frozen_string_literal: true

# KitchenSink.rb - Comprehensive Ruby Examples
# This file demonstrates idiomatic Ruby code for virtually every feature

# ============================================================================
# BASIC DATA TYPES AND LITERALS
# ============================================================================

# Numbers
integer = 42
big_integer = 1_000_000_000
binary = 0b1010
octal = 0o755
hex = 0xFF
float = 3.14159
scientific = 1.23e-4
rational = Rational(3, 4)
complex = Complex(2, 3)

# Strings
single_quote = 'Hello, World!'
double_quote = "Hello, #{integer}"
multiline = <<~HEREDOC
  This is a multiline string
  with proper indentation
HEREDOC
percent_string = %{This is another way to write strings}
escaped = "Line 1\nLine 2\tTabbed"

# Symbols
symbol = :ruby
dynamic_symbol = :"dynamic_#{integer}"

# Booleans and nil
truthy = true
falsy = false
nothing = nil

# Ranges
inclusive = 1..10
exclusive = 1...10
letter_range = 'a'..'z'

# Regular Expressions
simple_regex = /pattern/
multiline_regex = /^start.*end$/m
case_insensitive = /ruby/i
interpolated_regex = /#{integer}/

# ============================================================================
# COLLECTIONS
# ============================================================================

# Arrays
empty_array = []
literal_array = [1, 2, 3, 4, 5]
word_array = %w[apple banana cherry]
symbol_array = %i[one two three]
nested_array = [[1, 2], [3, 4], [5, 6]]
range_to_array = (1..5).to_a

# Hashes
empty_hash = {}
symbol_hash = { name: 'Ruby', version: 3.0 }
arrow_hash = { 'key' => 'value', 'another' => 'pair' }
nested_hash = { user: { name: 'Alice', age: 30 } }

# Sets
require 'set'
unique_set = Set[1, 2, 3, 3, 4]
set_from_array = [1, 2, 2, 3].to_set

# ============================================================================
# VARIABLES AND CONSTANTS
# ============================================================================

LOCAL_CONSTANT = 'immutable'
$global_variable = 'accessible everywhere'
@@class_variable = 'shared across class instances'
@instance_variable = 'specific to instance'
local_variable = 'method or block scope'

# ============================================================================
# OPERATORS
# ============================================================================

# Arithmetic
sum = 10 + 5
difference = 10 - 5
product = 10 * 5
quotient = 10 / 5
modulo = 10 % 3
power = 2**8

# Comparison
equal = 5 == 5
not_equal = 5 != 4
less_than = 3 < 5
greater_than = 5 > 3
less_or_equal = 3 <= 3
greater_or_equal = 5 >= 5
spaceship = 5 <=> 3  # Returns -1, 0, or 1

# Logical
and_result = true && false
or_result = true || false
not_result = !true

# Bitwise
bitwise_and = 5 & 3
bitwise_or = 5 | 3
bitwise_xor = 5 ^ 3
bitwise_not = ~5
left_shift = 5 << 1
right_shift = 5 >> 1

# Assignment operators
x = 10
x += 5  # x = x + 5
x -= 3  # x = x - 3
x *= 2  # x = x * 2
x /= 4  # x = x / 4
x ||= 20  # x = x || 20 (assign if nil or false)
x &&= 30  # x = x && 30 (assign if truthy)

# Splat operators
*first_items, last = [1, 2, 3, 4]
first, *middle, last = [1, 2, 3, 4, 5]
double_splat = { **symbol_hash, extra: 'value' }

# Safe navigation
safe_nav = nil&.upcase  # Won't raise error

# ============================================================================
# CONTROL FLOW
# ============================================================================

# If statements
if true
  puts 'True branch'
elsif false
  puts 'Elsif branch'
else
  puts 'Else branch'
end

# Unless
unless false
  puts 'Executes when condition is false'
end

# Ternary operator
result = true ? 'yes' : 'no'

# Case statements
grade = 85
letter_grade = case grade
               when 90..100 then 'A'
               when 80..89 then 'B'
               when 70..79 then 'C'
               when 60..69 then 'D'
               else 'F'
               end

# Case with multiple conditions
day = 'Monday'
type = case day
       when 'Saturday', 'Sunday'
         'Weekend'
       when 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
         'Weekday'
       end

# Pattern matching (Ruby 2.7+)
case [1, 2, 3]
in [1, 2, 3]
  'Exact match'
in [1, *rest]
  "Starts with 1, rest: #{rest}"
in [*elements]
  "Any array: #{elements}"
end

# ============================================================================
# LOOPS
# ============================================================================

# While loop
counter = 0
while counter < 5
  counter += 1
end

# Until loop
until counter == 0
  counter -= 1
end

# For loop
for i in 1..5
  # Do something
end

# Loop with break and next
loop do
  break if counter > 10
  next if counter.even?
  counter += 1
end

# Times
5.times { |i| puts i }

# Each
[1, 2, 3].each { |n| puts n }

# Each with index
%w[a b c].each_with_index { |item, index| puts "#{index}: #{item}" }

# ============================================================================
# METHODS
# ============================================================================

# Basic method
def simple_method
  'Hello'
end

# Method with parameters
def greet(name, greeting = 'Hello')
  "#{greeting}, #{name}!"
end

# Method with keyword arguments
def create_user(name:, age:, email: nil)
  { name: name, age: age, email: email }
end

# Method with splat parameters
def sum(*numbers)
  numbers.reduce(0, :+)
end

# Method with double splat
def build_options(**opts)
  opts
end

# Method with block
def with_timing
  start = Time.now
  yield if block_given?
  Time.now - start
end

# Method with explicit block parameter
def explicit_block(&block)
  block.call if block
end

# Method with multiple return values
def multiple_returns
  [1, 2, 3]
end

# Recursive method
def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

# ============================================================================
# BLOCKS, PROCS, AND LAMBDAS
# ============================================================================

# Blocks
[1, 2, 3].map { |n| n * 2 }
[1, 2, 3].map do |n|
  n * 2
end

# Proc
my_proc = Proc.new { |x| x * 2 }
my_proc.call(5)
my_proc[5]
my_proc.(5)

# Lambda
my_lambda = ->(x) { x * 2 }
my_lambda.call(5)

# Lambda with multiple arguments
add = ->(a, b) { a + b }
add.call(2, 3)

# Currying
multiply = ->(x, y) { x * y }
double = multiply.curry[2]
double[5]  # Returns 10

# ============================================================================
# CLASSES
# ============================================================================

class Person
  # Class variable
  @@count = 0
  
  # Class constant
  SPECIES = 'Homo sapiens'
  
  # attr_accessor creates getter and setter
  attr_accessor :name
  
  # attr_reader creates only getter
  attr_reader :age
  
  # attr_writer creates only setter
  attr_writer :email
  
  # Constructor
  def initialize(name, age)
    @name = name
    @age = age
    @@count += 1
  end
  
  # Instance method
  def introduce
    "Hi, I'm #{@name} and I'm #{@age} years old."
  end
  
  # Class method
  def self.count
    @@count
  end
  
  # Method with visibility
  private
  
  def secret_method
    'This is private'
  end
  
  protected
  
  def protected_method
    'This is protected'
  end
  
  public
  
  def public_method
    'This is public'
  end
end

# Inheritance
class Employee < Person
  attr_accessor :employee_id
  
  def initialize(name, age, employee_id)
    super(name, age)
    @employee_id = employee_id
  end
  
  # Method overriding
  def introduce
    "#{super} I work here with ID: #{@employee_id}"
  end
end

# Class with class methods using self
class Calculator
  class << self
    def add(a, b)
      a + b
    end
    
    def subtract(a, b)
      a - b
    end
  end
end

# Singleton class
class Singleton
  private_class_method :new
  
  def self.instance
    @instance ||= new
  end
end

# ============================================================================
# MODULES
# ============================================================================

module Greetable
  # Module constant
  DEFAULT_GREETING = 'Hello'
  
  # Module method
  def say_hello
    "#{DEFAULT_GREETING} from module"
  end
  
  # Module function (can be called on module itself)
  module_function
  
  def module_method
    'This can be called on the module'
  end
end

# Module as namespace
module Utils
  module StringUtils
    def self.reverse(str)
      str.reverse
    end
  end
  
  module MathUtils
    def self.square(n)
      n**2
    end
  end
end

# Mixin
class Greeter
  include Greetable
  
  def greet
    say_hello
  end
end

# Extend (adds as class methods)
class ClassGreeter
  extend Greetable
end

# Prepend (inserts before class in method lookup)
module Countable
  def increment
    @count = (@count || 0) + 1
    super if defined?(super)
  end
end

class Counter
  prepend Countable
  
  def increment
    puts 'Original increment'
  end
end

# ============================================================================
# STRUCTS
# ============================================================================

# Basic Struct
Person = Struct.new(:name, :age)
person = Person.new('Alice', 30)

# Struct with keyword arguments
Dog = Struct.new(:name, :breed, keyword_init: true)
dog = Dog.new(name: 'Buddy', breed: 'Golden Retriever')

# Struct with custom methods
Cat = Struct.new(:name, :age) do
  def meow
    "#{name} says meow!"
  end
end

# ============================================================================
# ENUMERABLES AND ITERATORS
# ============================================================================

numbers = [1, 2, 3, 4, 5]

# Map/Collect
doubled = numbers.map { |n| n * 2 }
collected = numbers.collect { |n| n * 2 }

# Select/Filter
evens = numbers.select { |n| n.even? }
filtered = numbers.filter { |n| n > 2 }

# Reject
odds = numbers.reject { |n| n.even? }

# Reduce/Inject
sum = numbers.reduce(:+)
product = numbers.inject(1) { |acc, n| acc * n }

# Find/Detect
first_even = numbers.find { |n| n.even? }
detected = numbers.detect { |n| n > 3 }

# Any?, All?, None?, One?
has_even = numbers.any?(&:even?)
all_positive = numbers.all?(&:positive?)
no_negatives = numbers.none?(&:negative?)
one_five = numbers.one? { |n| n == 5 }

# Partition
evens, odds = numbers.partition(&:even?)

# Group_by
grouped = %w[apple apricot banana blueberry cherry].group_by { |word| word[0] }

# Sort and Sort_by
sorted = [3, 1, 4, 1, 5, 9].sort
sorted_by_length = %w[apple pie cherry].sort_by(&:length)

# Zip
letters = %w[a b c]
zipped = numbers.zip(letters)

# Cycle
cycled = [1, 2, 3].cycle(2).to_a

# Take and Drop
first_three = numbers.take(3)
last_two = numbers.drop(3)

# Lazy evaluation
lazy_result = (1..Float::INFINITY).lazy
              .map { |n| n * 2 }
              .select { |n| n % 3 == 0 }
              .take(5)
              .to_a

# ============================================================================
# FILE I/O
# ============================================================================

# Reading files
content = File.read('filename.txt') rescue 'File not found'
lines = File.readlines('filename.txt') rescue []

# Writing files
File.write('output.txt', 'Hello, World!') rescue nil

# File operations with blocks
File.open('file.txt', 'w') do |file|
  file.puts 'Line 1'
  file.puts 'Line 2'
end rescue nil

# File existence and info
exists = File.exist?('file.txt')
size = File.size('file.txt') rescue 0
directory = File.directory?('.')
basename = File.basename('/path/to/file.txt')
dirname = File.dirname('/path/to/file.txt')
extname = File.extname('file.txt')

# Directory operations
Dir.pwd
Dir.entries('.') rescue []
Dir.glob('*.rb')
Dir.mkdir('new_directory') rescue nil

# ============================================================================
# EXCEPTIONS
# ============================================================================

# Basic exception handling
begin
  # Code that might raise an exception
  risky_operation = 10 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
rescue StandardError => e
  puts "General error: #{e.message}"
else
  puts 'No exception raised'
ensure
  puts 'This always executes'
end

# Raising exceptions
def validate_age(age)
  raise ArgumentError, 'Age must be positive' if age < 0
  age
end

# Custom exception classes
class CustomError < StandardError
  attr_reader :code
  
  def initialize(message, code)
    super(message)
    @code = code
  end
end

# Retry
retries = 0
begin
  # Code that might fail
rescue StandardError
  retries += 1
  retry if retries < 3
end

# Throw and catch
result = catch(:done) do
  [1, 2, 3].each do |i|
    [4, 5, 6].each do |j|
      throw :done, [i, j] if i * j == 12
    end
  end
end

# ============================================================================
# METAPROGRAMMING
# ============================================================================

# define_method
class DynamicClass
  define_method :dynamic_method do |arg|
    "Dynamic with #{arg}"
  end
  
  # Creating methods dynamically
  %w[create read update delete].each do |action|
    define_method "#{action}_record" do |id|
      "#{action.capitalize} record #{id}"
    end
  end
end

# method_missing
class GhostClass
  def method_missing(method_name, *args)
    if method_name.to_s.start_with?('find_by_')
      attribute = method_name.to_s.sub('find_by_', '')
      "Finding by #{attribute}: #{args.first}"
    else
      super
    end
  end
  
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('find_by_') || super
  end
end

# Class eval and instance eval
String.class_eval do
  def shout
    upcase + '!'
  end
end

object = Object.new
object.instance_eval do
  def singleton_method
    'I am unique to this instance'
  end
end

# Send
'hello'.send(:upcase)
'hello'.public_send(:upcase)

# Define singleton method
obj = Object.new
def obj.special_method
  'Special!'
end

# Eigenclass/Singleton class
class << obj
  def another_special
    'Also special!'
  end
end

# ============================================================================
# REFLECTION
# ============================================================================

# Object inspection
'string'.class
'string'.class.superclass
'string'.class.ancestors
'string'.methods
'string'.public_methods
'string'.private_methods
'string'.instance_variables
'string'.instance_of?(String)
'string'.is_a?(Object)
'string'.respond_to?(:upcase)

# Method objects
method_obj = 'string'.method(:upcase)
method_obj.call
method_obj.arity
method_obj.parameters
method_obj.owner
method_obj.source_location rescue nil

# Constants
Object.constants
Math.constants
Math.const_get(:PI)
Math.const_defined?(:PI)

# ============================================================================
# THREADS AND CONCURRENCY
# ============================================================================

# Basic thread
thread = Thread.new do
  sleep(1)
  'Thread result'
end
thread.join
thread.value

# Multiple threads
threads = []
5.times do |i|
  threads << Thread.new do
    sleep(rand)
    "Thread #{i} finished"
  end
end
threads.map(&:join)

# Thread-safe operations
require 'thread'
mutex = Mutex.new
counter = 0

threads = 10.times.map do
  Thread.new do
    100.times do
      mutex.synchronize { counter += 1 }
    end
  end
end
threads.each(&:join)

# Thread-local variables
Thread.current[:my_var] = 'thread local value'

# ============================================================================
# REGULAR EXPRESSIONS
# ============================================================================

# Basic matching
'Hello World' =~ /World/
/Ruby/.match('I love Ruby')

# Captures
match = /(\w+)@(\w+\.\w+)/.match('user@example.com')
email, domain = match.captures if match

# Named captures
pattern = /(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/
match = pattern.match('2024-03-15')
year = match[:year] if match

# Substitution
replaced = 'Hello World'.gsub(/World/, 'Ruby')
replaced_first = 'aaabbb'.sub(/a/, 'x')

# Scan
matches = 'The number is 42 and 100'.scan(/\d+/)

# Split
parts = 'apple,banana,cherry'.split(/,/)

# ============================================================================
# DATE AND TIME
# ============================================================================

require 'date'
require 'time'

# Time
now = Time.now
specific_time = Time.new(2024, 3, 15, 10, 30, 0)
parsed_time = Time.parse('2024-03-15 10:30:00')
time_utc = Time.now.utc
time_local = Time.now.localtime

# Date
today = Date.today
specific_date = Date.new(2024, 3, 15)
parsed_date = Date.parse('2024-03-15')
tomorrow = today + 1
yesterday = today - 1

# DateTime
require 'date'
datetime = DateTime.now
specific_datetime = DateTime.new(2024, 3, 15, 10, 30, 0)

# Formatting
now.strftime('%Y-%m-%d %H:%M:%S')
now.strftime('%A, %B %d, %Y')

# ============================================================================
# JSON
# ============================================================================

require 'json'

# JSON parsing
json_string = '{"name": "Ruby", "version": 3.0}'
parsed = JSON.parse(json_string)

# JSON generation
data = { name: 'Ruby', version: 3.0 }
json_output = JSON.generate(data)
pretty_json = JSON.pretty_generate(data)

# ============================================================================
# YAML
# ============================================================================

require 'yaml'

# YAML parsing
yaml_string = <<~YAML
  name: Ruby
  version: 3.0
  features:
    - Object-oriented
    - Dynamic typing
YAML
parsed_yaml = YAML.load(yaml_string)

# YAML generation
yaml_output = { name: 'Ruby', version: 3.0 }.to_yaml

# ============================================================================
# SYMBOLS AND STRINGS
# ============================================================================

# String interpolation
name = 'Ruby'
version = 3.0
interpolated = "#{name} version #{version}"

# String methods
uppercase = 'hello'.upcase
lowercase = 'HELLO'.downcase
capitalized = 'hello'.capitalize
reversed = 'hello'.reverse
stripped = '  hello  '.strip
split_string = 'a,b,c'.split(',')
joined = %w[a b c].join('-')

# String inquiry methods
empty_check = ''.empty?
includes = 'hello'.include?('ell')
starts = 'hello'.start_with?('hel')
ends = 'hello'.end_with?('lo')

# Symbol operations
symbol_to_string = :symbol.to_s
string_to_symbol = 'string'.to_sym
symbol_upcase = :hello.upcase

# ============================================================================
# NUMERIC OPERATIONS
# ============================================================================

# Integer methods
absolute = -5.abs
even_check = 4.even?
odd_check = 5.odd?
next_int = 5.next
previous = 5.pred
to_string = 42.to_s
to_float = 42.to_f
times_loop = 3.times.map { |i| i * 2 }

# Float methods
rounded = 3.14159.round(2)
ceiling = 3.14.ceil
floor = 3.99.floor
infinite_check = (1.0 / 0).infinite?
nan_check = (0.0 / 0).nan?

# Numeric enumeration
1.upto(5) { |i| puts i }
5.downto(1) { |i| puts i }
1.step(10, 2) { |i| puts i }

# ============================================================================
# FUNCTIONAL PROGRAMMING CONCEPTS
# ============================================================================

# Function composition
add_one = ->(x) { x + 1 }
multiply_two = ->(x) { x * 2 }
composed = ->(x) { multiply_two.call(add_one.call(x)) }

# Partial application
multiply = ->(x, y) { x * y }
double = multiply.curry[2]
triple = multiply.curry[3]

# Higher-order functions
apply_twice = ->(f, x) { f.call(f.call(x)) }
result = apply_twice.call(add_one, 5)

# Memoization
class Fibonacci
  def initialize
    @cache = {}
  end
  
  def calculate(n)
    return n if n <= 1
    @cache[n] ||= calculate(n - 1) + calculate(n - 2)
  end
end

# ============================================================================
# MONKEY PATCHING (Use with caution!)
# ============================================================================

class String
  def palindrome?
    self == reverse
  end
end

class Integer
  def minutes
    self * 60
  end
  
  def hours
    self * 3600
  end
end

# ============================================================================
# REFINEMENTS (Safer than monkey patching)
# ============================================================================

module StringExtensions
  refine String do
    def shout
      upcase + '!!!'
    end
  end
end

class UsingRefinement
  using StringExtensions
  
  def demonstrate
    'hello'.shout
  end
end

# ============================================================================
# OPERATOR OVERLOADING
# ============================================================================

class Vector
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def +(other)
    Vector.new(@x + other.x, @y + other.y)
  end
  
  def -(other)
    Vector.new(@x - other.x, @y - other.y)
  end
  
  def *(scalar)
    Vector.new(@x * scalar, @y * scalar)
  end
  
  def ==(other)
    @x == other.x && @y == other.y
  end
  
  def [](index)
    case index
    when 0 then @x
    when 1 then @y
    end
  end
  
  def to_s
    "(#{@x}, #{@y})"
  end
end

# ============================================================================
# DELEGATION
# ============================================================================

require 'forwardable'

class Wrapper
  extend Forwardable
  
  def initialize
    @array = []
  end
  
  def_delegators :@array, :push, :pop, :size, :empty?
end

# SimpleDelegator
require 'delegate'

class DecoratedArray < SimpleDelegator
  def push_twice(item)
    push(item)
    push(item)
  end
end

# ============================================================================
# OBSERVER PATTERN
# ============================================================================

module Observable
  def initialize
    @observers = []
  end
  
  def add_observer(observer)
    @observers << observer
  end
  
  def notify_observers(event)
    @observers.each { |observer| observer.update(event) }
  end
end

class Subject
  include Observable
  
  def trigger_event
    notify_observers('Something happened!')
  end
end

# ============================================================================
# COMMAND LINE ARGUMENTS
# ============================================================================

# ARGV contains command line arguments
ARGV.each { |arg| puts arg } if $0 == __FILE__

# OptionParser for complex CLI
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = 'Usage: script.rb [options]'
  
  opts.on('-v', '--verbose', 'Run verbosely') do
    options[:verbose] = true
  end
  
  opts.on('-n', '--name NAME', 'Specify name') do |name|
    options[:name] = name
  end
end.parse! rescue nil

# ============================================================================
# ENVIRONMENT VARIABLES
# ============================================================================

# Reading environment variables
home = ENV['HOME']
path = ENV['PATH']
custom = ENV.fetch('CUSTOM_VAR', 'default_value')

# Setting environment variables (for child processes)
ENV['MY_VAR'] = 'my_value'

# ============================================================================
# RAKE TASKS (DSL example)
# ============================================================================

# This would typically be in a Rakefile
task :default => :test

desc 'Run tests'
task :test do
  puts 'Running tests...'
end

namespace :db do
  desc 'Migrate database'
  task :migrate do
    puts 'Migrating database...'
  end
end

# ============================================================================
# BENCHMARKING
# ============================================================================

require 'benchmark'

# Simple benchmark
time = Benchmark.measure do
  1000.times { 'string' * 100 }
end

# Benchmark with comparison
Benchmark.bm do |x|
  x.report('addition:') { 1000000.times { 1 + 1 } }
  x.report('multiplication:') { 1000000.times { 1 * 2 } }
end

# ============================================================================
# RANDOM NUMBERS
# ============================================================================

# Random integers
random_int = rand(100)          # 0-99
random_range = rand(10..20)     # 10-20
random_sample = [1, 2, 3].sample

# Random floats
random_float = rand             # 0.0-1.0
random_float_range = rand(1.0..2.0)

# Seeded random for reproducibility
rng = Random.new(12345)
seeded_random = rng.rand(100)

# ============================================================================
# ENCODING
# ============================================================================

# String encoding
utf8_string = 'Hello, 世界'
encoding = utf8_string.encoding
encoded = utf8_string.encode('ASCII', invalid: :replace, undef: :replace)
force_encoded = 'string'.force_encoding('UTF-8')

# ============================================================================
# MARSHALING
# ============================================================================

# Marshal for Ruby object serialization
data = { name: 'Ruby', version: 3.0 }
marshaled = Marshal.dump(data)
unmarshaled = Marshal.load(marshaled)

# ============================================================================
# OBJECT SPACE
# ============================================================================

# ObjectSpace for introspection
ObjectSpace.each_object(String).take(5)
ObjectSpace.count_objects[:T_STRING]

# Finalizers
ObjectSpace.define_finalizer(object) do
  puts 'Object is being garbage collected'
end

# ============================================================================
# BINDING
# ============================================================================

# Binding captures execution context
def get_binding(param)
  binding
end

b = get_binding('test')
eval('param', b)  # Returns 'test'

# ERB templates use binding
require 'erb'
template = ERB.new('Hello <%= name %>')
name = 'World'
template.result(binding)

# ============================================================================
# FIBERS (Lightweight concurrency)
# ============================================================================

# Basic fiber
fiber = Fiber.new do
  puts 'First'
  Fiber.yield
  puts 'Second'
end

fiber.resume  # Prints 'First'
fiber.resume  # Prints 'Second'

# Fiber for generating values
generator = Fiber.new do
  count = 0
  loop do
    Fiber.yield count
    count += 1
  end
end

3.times { puts generator.resume }

# ============================================================================
# TRACING
# ============================================================================

# TracePoint for monitoring execution
trace = TracePoint.new(:call) do |tp|
  puts "Called: #{tp.defined_class}##{tp.method_id}"
end

# trace.enable  # Uncomment to enable tracing
# method_call
# trace.disable

# ============================================================================
# GARBAGE COLLECTION
# ============================================================================

# GC operations
GC.start                # Force garbage collection
GC.disable             # Disable automatic GC
GC.enable              # Re-enable automatic GC
GC.stat                # GC statistics

# ============================================================================
# RUBY VERSION AND PLATFORM
# ============================================================================

ruby_version = RUBY_VERSION
ruby_platform = RUBY_PLATFORM
ruby_release_date = RUBY_RELEASE_DATE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'

# ============================================================================
# MAIN PROGRAM
# ============================================================================

if __FILE__ == $0
  puts '=' * 60
  puts 'KitchenSink.rb - Ruby Feature Demonstration'
  puts '=' * 60
  puts "Ruby Version: #{RUBY_VERSION}"
  puts "Platform: #{RUBY_PLATFORM}"
  puts '=' * 60
  puts 'This file demonstrates idiomatic Ruby code examples.'
  puts 'Browse through the source to see examples of:'
  puts '  - Basic data types and literals'
  puts '  - Collections (Arrays, Hashes, Sets)'
  puts '  - Control flow structures'
  puts '  - Methods and blocks'
  puts '  - Classes and modules'
  puts '  - Metaprogramming'
  puts '  - File I/O and exception handling'
  puts '  - And much more!'
  puts '=' * 60
end