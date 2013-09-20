require 'csv'

# open the CSV file for "reading" (the little r)
csv_file = File.open('friend_list.csv', 'r')

mail_array = []
line_array = IO.readlines(csv_file)[0]
mail_keys = line_array.split(",")
# puts mail_keys.last
mail_keys.last.chomp!
mail_keys = mail_keys.map { |key| key.to_sym }

# use File#each_line (just like Array#each but for File lines)
# for each line
csv_file.each_line do |line|
  next if line == line_array
  single_hash = {}
  element = line.split(",")
  element.each_index do |index|
    single_hash[mail_keys[index]] = element[index]
  end
  single_hash.values.last.chomp!
  mail_array << single_hash
end

puts mail_array



def process_erb (erb_file_path, context_variables)
  message_erb = ERB.new(File.new(erb_file_path).read, nil, "%")
  message_erb.result(context_variables)
end
def get_personal_email_text (first_name, last_name, email, num_months_since_contact)
  context_variables = Kernel.binding()
  message_html = process_erb("email1_friend_email_text.html.erb", context_variables)
end
