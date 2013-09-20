require 'csv'
require 'timerizer'
require 'feedzirra'
require 'erb'
require 'mandrill'
require 'httparty'

def process_erb (erb_file_path, context_variables)
  message_erb = ERB.new(File.new(erb_file_path).read, nil, "%")
  message_erb.result(context_variables)
end
def get_personal_email_text (first_name, last_name, email, num_months_since_contact, entries_array, from_name)
  context_variables = Kernel.binding()
  message_html = process_erb("email_template.html.erb", context_variables)
end

def get_text_message (name,username,date)
  context_variables = Kernel.binding()
  text_message = process_erb("text.txt", context_variables)
end

def send_email(to_name, to_email, from_name, from_email, subject, message_html)
  message_vars = {
    "merge"=>false,
    "from_name"=>from_name,
    "auto_html"=>false,
    "html"=>"",
    "track_opens"=>true,
    "tags"=>["fullstack_octomailer_workshop"],
    "preserve_recipients"=>true,
    "from_email"=>from_email,
    "subject"=>subject,
    "to"=>[{"name"=>to_name, "email"=>to_email}],
    "important"=>false,
    "html"=>message_html
  }

  async = false
  ip_pool = "Main Pool"
  result = $mandrill.messages.send message_vars, async, ip_pool
end

$mandrill = Mandrill::API.new 'K1kgKZfNdL45WQ0Jgl4xNw'

atom_path = "/Users/kyledorman/Documents/FullstackAcademy/octopress/_deploy/atom.xml"
blog_content = Feedzirra::Feed.parse(File.open(atom_path).read)

entries_array = []
blog_content.entries.each do |entry|
  if entry.published > 1.days.ago
    entries_array << entry
  end
end

sender_credentials = $mandrill.users.info
from_name = sender_credentials["username"]
subject = "Weekly check in"

# open the CSV file for "reading" (the little r)
csv_file = CSV.open('friend_list.csv', :headers => true, :header_converters => :symbol)

csv_file.each do |row|

  first_name = row[:first_name]
  last_name =row[:last_name]
  name = first_name + " " + last_name
  email = row[:email_address]
  num_months_since_contact = row[:months_since_contact]
  #friend_number = row[:phone_number]
  #text_message = "Hi #{name} this is #{from_name}. Today is #{Time.now}!"
  puts name
  # api_call_hash  = {
  #   :action => 'create',
  #   :token => '254c4b1c7d312142a0c2804e09308aefd690d1b80077812754eef51bf3162e11b4cc6e1d8471a55f6f7e94cf',
  #   :number => friend_number,
  #   :message => text_message
  # }

# Here we're going to create a URL that we can put into a browser that will call the API
# query_params = URI.encode_www_form(api_call_hash)
# base_url = 'https://api.tropo.com/1.0/sessions?'
# my_final_url =  base_url + query_params

# HTTParty.get(my_final_url)
  message =  get_personal_email_text(first_name , last_name, email , num_months_since_contact, entries_array, from_name)

  send_email(name, email, from_name, from_name, subject, message)
end

# # open the CSV file for "reading" (the little r)
# csv_file = CSV.open('friend_list.csv', :headers => true, :header_converters => :symbol)
# mail_array = []
# csv_file.each do |row|
#   mail_array << row.to_hash
# end


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

# def process_erb (erb_file_path, context_variables)
#   message_erb = ERB.new(File.new(erb_file_path).read), nil, "%"
#   message_erb.result(context_variables)
# end

# def get_personal_email_text (first_name, last_name, email, num_months_since_contact)
#   context_variables = Kernel.binding()
#   message_html = process_erb("email1_friend_email_text.html.erb", context_variables)
# end

#################

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
