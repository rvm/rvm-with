# RVM-with

## Description

RVM Interactive scripting wrapper

## Installation

RVM-with is now available as a separate gem

    $ gem install rvm-with

## Example

It should be simple as:

    require "rvm-with"
    RVM.with "1.9.3" do |r|
      puts r.execute "rvm info"
    end

This gem is based on [session gem](https://github.com/ahoward/session), so you can do all the same things you would do with it:

    stdout, stderr = r.execute "rvm current"
    if r.status == 0
      puts stdout
    else
      puts "failed"
    end

## Development

    $ rake spec
