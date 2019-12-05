# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :emails

  def initialize(email_addresses)
    @emails = email_addresses
  end

  def parse
    unique_emails = []
    parsed_emails = emails.split(/, | /)
    parsed_emails.each {|email| unique_emails << email if !unique_emails.include?(email)}
    unique_emails
  end
end

test1 = EmailAddressParser.new("otto@ottostacos.com, ottoc.nyc@gmail.com, otto@creativespaceclub.com")

# binding.pry
