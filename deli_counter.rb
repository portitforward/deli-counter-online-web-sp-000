katz_deli = []

def line(tracker)
    line_str = "The line is currently: "
    if tracker.length == 0
        puts "The line is currently empty."
    else
        tracker.each_with_index{|v, i| line_str += "#{i+1}. #{v} "}
        puts line_str.chomp(" ") 
    end          
end

def take_a_number(tracker, name)
    tracker.push(name)
    puts "Welcome, #{name}. You are number #{tracker.length} in line."
    
end

def now_serving(tracker)
    if tracker.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{tracker[0]}."
        tracker.shift()
    end    
end