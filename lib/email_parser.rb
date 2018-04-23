class EmailParser

  attr_accessor :emails

  @@all=[]
  @@emails=[]
  #  that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses.

  def initialize(emails)
    @@all<<emails.to_s
  end

  def self.all
    @@all
  end

  def self.emails
    @@emails
  end

  def self.parse
    @@all.each.to_s do |entry|
      self.emails<<entry.split(' ').split(',').to_s
      binding.pry
    end
    self.emails
  end
end
