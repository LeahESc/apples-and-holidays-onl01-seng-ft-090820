require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


# def add_supply_to_memorial_day(holiday_hash, supply)
#   holiday_hash[:spring][:memorial_day] << "Grill"
#   # again, holiday_hash is the same as the ones above
#   # add the second argument to the memorial day array
# end

def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash [season] = {}
  holiday_hash [season][holiday_name] = supply_array 
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  #binding.pry
  arr1 = holiday_hash[:winter][:christmas]
  arr1 << holiday_hash[:winter][:new_years].join(" ")
  arr1
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_and_supplies|
   # binding.pry
   puts "#{season.to_s.capitalize}:"
    holidays_and_supplies.each do |holiday_words, supply_array|
    #holiday_words.to_s
      #binding.pry
      if holiday_words.to_s.include?("_")
        var = holiday_words.to_s.split("_").collect {|word| word.capitalize}.join(" ")
       puts "  #{var}: #{supply_array.join(", ")}"
      else 
        # holiday_words.to_s.capitalize
      #   supply_array.join(" , ")
         puts "  #{holiday_words.to_s.capitalize}: #{supply_array.join(", ")}"
      end
    end
    #binding.pry
  end
end  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, hol_hashes|
    hol_hashes.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        array << holiday
        # elsif supply_array.length > 1
        #   supply_array.join(" , ")
        #   return holiday
      end
    end
  end
  array
end







