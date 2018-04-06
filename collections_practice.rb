# your code goes here
require 'pry'
def begins_with_r(array)
    check_flag = 0
    array.each do |tool|
        if tool[0] == "r"
            check_flag += 1
        end
    end
    if check_flag == array.length
        true
    else
        false
    end
end

def contain_a(array)
    array.select do |element|
        element.include? "a"
    end
end

def first_wa(array)
    array.find do |element|
        element.to_s.include? "wa"
    end
end

def remove_non_strings(array)
    array.select do |str|
        str == str.to_s()
    end
end

def count_elements(array)
    counter=[]
    array.each_with_index do |item, index|
        if counter.any? do |b| 
            if b[:name] == item[:name]
                b[:count] += 1
            end
        end
        else
            counter << {:name=>item[:name], :count=>1}
        end
    end
    counter
end

def merge_data(array1, array2)
    merged_data = []
    single_data = {}
    array1.each do |key|
        single_data[:first_name] = key[:first_name]
        array2.collect do |features|
            merged_data << single_data.merge(features[key[:first_name]])
        end
        #array2[key[:first_name]]
        #merged_data << {key, array2[0][key[:first_name]]}
    end
    merged_data
end

def find_cool(array)
    array.select do |hsh|
        hsh[:temperature] == "cool"
    end
end

def organize_schools(array)
    orgnzd_schools = {}
    array.each do |school|
        if orgnzd_schools.has_key?(school[1][:location])
            orgnzd_schools[school[1][:location]] << school[0]
        else
            orgnzd_schools[school[1][:location]] = [school[0]]
        end
    end
    orgnzd_schools
end