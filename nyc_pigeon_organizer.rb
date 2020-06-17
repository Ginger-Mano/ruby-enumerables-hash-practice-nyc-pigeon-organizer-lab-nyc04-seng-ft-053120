require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = data.each_with_object({}) do |(key, value), new_hash| #creates a new hash. Attached variable to new_hash to return later
    value.each do |inner_key, names| #inner keys are color, gender, habitat. Names are the values
      names.each do |name| #names that should become keys, fro the values in the previous loop
        if !new_hash[name] #says if there is no hash called name, create it as a new hash
          new_hash[name] = {}
        end
        if !new_hash[name][key] #says if there is no hash of names with a hash of an array, create a new array for that hash
          !new_hash[name][key] = []
        end
        new_hash[name][key] << inner_key.to_s #return the full hash with the values pushed in as a string
      end
    end
    binding.pry
  end
end
