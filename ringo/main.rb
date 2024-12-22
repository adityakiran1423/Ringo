require "thor"

class Ringo < Thor
    # attr_accessor :depth, :verbose_level
    desc "ringo WHAT", "a command that gives a breakdown of all languages being used in a directory"
    def ringo()
        puts "welcome to thors"
    end
end

Ringo.start(ARGV)