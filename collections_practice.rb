# your code goes here

def begins_with_r(array)
  array.all? {|element| element[0] == "r"}
end


def contain_a(array)
  array.select {|element| element.include?("a")}
end
    

def first_wa(array)
  array.find {|element| element[0] == "w" && element[1] == "a"}
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  h = Hash.new(0)
  array.each {|name| h[name] += 1}
  return h.keys.map{|k| k[:count] = h[k]; k}
end



def merge_data(keys, data)
  m = []
  data.each do |data_element|
    data_element.each do |data_element_k, data_element_v|
      keys.each do |keys_element|
        if keys_element[:first_name] == data_element_k
          merged_data = {}
          merged_data.update(data_element_v)
          merged_data.update(keys_element)
          m << merged_data
        end 
      end
    end
  end
  return m
end

def find_cool(array)
  array.select{|element| element.key("cool")}
end

def organize_schools(schools)
  h = Hash.new
  schools.each do |k,v|
    if h[v[:location]] == nil 
      h[v[:location]] = [k]
    else
      h[v[:location]] << k
    end
  end  
  return h                     
end








