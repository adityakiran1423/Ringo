a = Dir.entries(Dir.pwd)

a.each_with_index do |file_name, index|
    print "#{index}. "
    puts file_name
end