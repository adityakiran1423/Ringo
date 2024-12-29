require "thor"

class Ringo < Thor
    
    desc "list START_POINT", "provides breakdown of all languages used in a directory"

    option :depth,
    :type => :numeric,
    :desc => "depth to which directory should be traversed",
    :aliases => "d",
    :default => 1

    def list(start_point=nil)
        begin

            puts "welcome to ringo"
            if start_point
                puts "entered #{start_point} as the start point for search"
            else
                path = Dir.pwd
                path = path[1,path.length-1]
                2.times {
                    t = path.index('/')
                    path = path[t+1,path.length-1]
                }
                puts "not entered start_point, will use #{path} as start_point"
            end
            puts "depth entered is #{options[:depth]}" if options[:depth]
            
        rescue ArguementError
            puts "Oops, sorry. you seem to have an arguement error"
        end
    end
end

Ringo.start(ARGV)