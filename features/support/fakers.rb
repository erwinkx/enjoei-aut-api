require 'faker'
require 'httparty'

def faker_number(quantity)
    Faker::Number.number(digits: quantity)
end

def faker_email
    Faker::Internet.email
end

def faker_name
    Faker::Name.first_name
end

def faker_book_name
    Faker::Book.title 
end