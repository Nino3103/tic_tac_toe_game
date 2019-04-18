array = [1,1,1]
array_name_cases = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
def all_equal?(arr)
    arr.uniq.size <= 1
end

puts array_name_cases.select{|element| element == "A1"|| element == "B2"|| element == "C3"}
