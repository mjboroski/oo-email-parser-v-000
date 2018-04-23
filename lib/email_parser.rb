class EmailParser

  attr_accessor :emails

  @@all={}
  #  that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

  def initialize(emails)
    self.all.push(emails.to_a)
  end

  def all
    @@all
  end

  def self.parse
    self.all.each do |entry|
      :emails.push(entry.split(' ').split)
      binding.pry
    end
  end
end
