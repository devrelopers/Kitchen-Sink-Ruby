# KitchenSink.rb - Comprehensive Ruby Examples

A complete demonstration of Ruby language features, idioms, and best practices in a single file.

## Overview

`KitchenSink.rb` is an educational resource that showcases virtually every Ruby language feature with idiomatic examples. This file serves as both a reference guide and a learning tool for Ruby developers of all levels.

## Features Demonstrated

### Core Language Features
- **Data Types**: Integers, Floats, Strings, Symbols, Booleans, nil, Ranges, Regular Expressions
- **Collections**: Arrays, Hashes, Sets, and their various initialization methods
- **Variables**: Local, instance, class, global variables, and constants
- **Operators**: Arithmetic, comparison, logical, bitwise, assignment, splat, and safe navigation

### Control Structures
- **Conditionals**: if/elsif/else, unless, ternary operator, case statements
- **Pattern Matching**: Ruby 2.7+ pattern matching syntax
- **Loops**: while, until, for, loop with break/next, times, each

### Object-Oriented Programming
- **Classes**: Constructors, instance/class methods, attributes, visibility modifiers
- **Inheritance**: Single inheritance, method overriding, super
- **Modules**: Mixins (include), class methods (extend), prepend, module functions
- **Structs**: Basic and keyword-initialized structs with custom methods

### Functional Programming
- **Blocks**: Single-line and multi-line blocks
- **Procs and Lambdas**: Creation, calling conventions, currying
- **Higher-Order Functions**: Function composition, partial application
- **Lazy Evaluation**: Infinite sequences and lazy enumerators

### Advanced Features
- **Metaprogramming**: define_method, method_missing, class_eval, instance_eval
- **Reflection**: Object introspection, method objects, constant manipulation
- **Refinements**: Scoped monkey patching for safer extensions
- **Operator Overloading**: Custom operators for user-defined classes

### Enumerable Methods
Comprehensive examples of:
- map, select, reject, reduce, find
- any?, all?, none?, one?
- partition, group_by, sort_by
- zip, cycle, take, drop
- Lazy evaluation chains

### I/O and File Operations
- **File I/O**: Reading, writing, file operations with blocks
- **Directory Operations**: Navigation, listing, globbing
- **JSON/YAML**: Parsing and generation
- **Command Line**: ARGV processing, OptionParser

### Exception Handling
- **Basic Handling**: begin/rescue/else/ensure blocks
- **Custom Exceptions**: Creating custom error classes
- **Control Flow**: throw/catch, retry mechanisms

### Concurrency
- **Threads**: Basic threads, thread synchronization with Mutex
- **Fibers**: Lightweight concurrency, generators
- **Thread-Local Storage**: Thread-specific variables

### System Integration
- **Environment Variables**: Reading and setting ENV
- **Process Management**: Command line arguments, system interaction
- **Benchmarking**: Performance measurement and comparison
- **Garbage Collection**: GC control and statistics

## Usage

### Running the File
```bash
ruby KitchenSink.rb
```

### As a Reference
Browse through the source code to find examples of specific Ruby features. Each section is clearly commented and organized by topic.

### For Learning
1. Read through sections sequentially to understand Ruby's features
2. Copy and modify examples for your own experimentation
3. Use as a quick reference when you need syntax reminders

## Structure

The file is organized into clearly marked sections:
1. Basic Data Types and Literals
2. Collections
3. Variables and Constants
4. Operators
5. Control Flow
6. Loops
7. Methods
8. Blocks, Procs, and Lambdas
9. Classes
10. Modules
11. Structs
12. Enumerables and Iterators
13. File I/O
14. Exceptions
15. Metaprogramming
16. Reflection
17. Threads and Concurrency
18. Regular Expressions
19. Date and Time
20. And many more...

## Requirements

- Ruby 2.7 or higher (for pattern matching support)
- Some examples use standard library gems (json, yaml, set, etc.)

## Educational Value

This file is perfect for:
- **Beginners**: Learning Ruby syntax and idioms
- **Intermediate Developers**: Discovering lesser-known features
- **Advanced Developers**: Quick reference for specific syntax
- **Teachers**: Comprehensive examples for instruction
- **Code Reviews**: Understanding idiomatic Ruby patterns

## Contributing

While this is a comprehensive collection, Ruby is always evolving. If you notice missing features or have suggestions for better examples, please feel free to contribute!

## License

This educational resource is provided as-is for learning purposes. Feel free to use, modify, and share these examples in your own projects and educational materials.

## Notes

- All examples are self-contained and runnable
- Error handling is included where appropriate to prevent crashes
- Examples favor clarity and education over performance
- Some features may require specific Ruby versions or gems

---

Happy Ruby learning! 💎