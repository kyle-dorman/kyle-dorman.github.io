require 'csv'
require 'erb'

def process_erb (erb_file_path, context_variables)
  message_erb = ERB.new(File.new(erb_file_path).read, nil, "%")
  message_erb.result(context_variables)
end
def get_personal_email_text (first_name, last_name, email, num_months_since_contact)
  context_variables = Kernel.binding()
  message_html = process_erb("email_template.html.erb", context_variables)
end


# open the CSV file for "reading" (the little r)
csv_file = CSV.open('friend_list.csv', :headers => true, :header_converters => :symbol)
mail_array = []
csv_file.each do |row|
  first_name = row[:first_name]
  last_name =row[:last_name]
  email = row[:row]
  num_months_since_contact = [:months_since_contact]
  message =  get_personal_email_text(first_name , last_name, email , num_months_since_contact)
  puts message
  #mail_array << row.to_hash
end


# template_email = File.read "email_template.html"


# mail_array.each do |hash|
#   first_name = hash[:first_name]
#   num_months_since_contact = hash[:months_since_contact]
#   puts num_months_since_contact
#   # we make a copy of the template_email variable to a new variable to
#   # ensure we don't edit the original template text since we'll need to use
#   # it for multiple emails
#   personalized_email = template_email.dup
#   #puts personalized_email

#   # use gsub! to replace FIRST_NAME and NUM_MONTHS_SINCE_CONTACT with first_name and num_new_posts
#   personalized_email.gsub!('FIRST_NAME',first_name)
#   personalized_email.gsub!('NUM_MONTHS_SINCE_CONTACT',num_months_since_contact)

#   puts personalized_email
# end




# mail_array = []
# line_array = IO.readlines(csv_file)[0]
# mail_keys = line_array.split(",")
# # puts mail_keys.last
# mail_keys.last.chomp!
# mail_keys = mail_keys.map { |key| key.to_sym }

# # use File#each_line (just like Array#each but for File lines)
# # for each line
# csv_file.each_line do |line|
#   next if line == line_array
#   single_hash = {}
#   element = line.split(",")
#   element.each_index do |index|
#     single_hash[mail_keys[index]] = element[index]
#   end
#   single_hash.values.last.chomp!
#   mail_array << single_hash
# end

# puts mail_array
