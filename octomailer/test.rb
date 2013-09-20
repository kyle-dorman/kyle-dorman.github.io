
require 'erb' # loading ERB into our project from Ruby's stdlib

friends_name = "David Yang"
num_months_since_contact = 5

template = %{
  Hi <%= friends_name %>, I can't believe I haven't seen you for <%= num_months_since_contact %>!  We really gotta keep in touch better.

  Anyway, hit me up sometime and let's grab a joe.

  David
}

erb_template = ERB.new(template)
final_result = erb_template.result(binding)
puts final_result
