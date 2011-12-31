# hash_brown

Access your Hash elements with a method call!

If you're using strings or symbols as keys, save yourself a character by using hash_brown.

## Installation

    $ gem install hash_brown

If you're using Bundler, add this line to your `Gemfile`:

    gem 'hash_brown'

## Usage
    hash = { :key_sym => 'sym_val', 'key_str' => 'str_val' }

    hash.key_sym    #=> 'sym_val'
    hash.key_str    #=> 'str_val'


# WARNING! Modifies the behavior of Hash.

This is not a very useful gem.  You probably don't want to use it.

Namespacing? Modules? Nope, just hijacking Hash's `method_missing`.

Behavior that I didn't intend is very likely.  Please open an issue if you find some.

## Why?

My first gem.  This is mostly an exercise in gem creation. High on education, low on utility.
