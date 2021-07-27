require 'date'
require 'YAML'
SSN_REGEX = /^(?<gender>[12])\s(?<year>\d{2})\s(?<month>0[1-9]|1[012])\s(?<department>0[1-9]|[1-9]\d)(\s\d{3}){2}\s\d{2}$/
DEPARTMENTS = YAML.load_file('data/french_departments.yml')

def french_ssn_info(ssn_string)
  # TODO
  #match the regex to check if it matches correctly
  match_data = ssn_string.match(SSN_REGEX)
  if match_data && valid_key?(ssn_string)
    gender = match_data[:gender] == '1' ? 'man' : 'woman'
    month = Date::MONTHNAMES[match_data[:month].to_i]
    year = "19" + match_data[:year]
    department = DEPARTMENTS[code]

    "a #{gender}, born in #{month}, #{year} in #{department}."
    #to do
    # if it does, do the matchdata
  else
    return "The number is invalid"
  end
end

def valid_key?(ssn_string)
  key = ssn_string[-2..-1].gsub(' ', '').to_i
  puts key
  ssn_without_key = ssn_string[0..-3].gsub(' ', '').to_i
  puts ssn_without_key

  (97 - ssn_without_key) % 97 == key
end
