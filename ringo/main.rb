require "thor"
# require "Dir"

class Ringo < Thor
    
    desc "list START_POINT", "provides breakdown of all languages used in a directory"
    # option :d => :int, :desc => "depth to which directory should be traversed"
    # option :v => :int
    def list(start_point=nil)
        puts "welcome to ringo"
        puts "entered #{start_point} as the start point for search" if start_point
        puts "not entered start_point, will use #{Dir.pwd} as start_point"
    end
end

Ringo.start(ARGV)