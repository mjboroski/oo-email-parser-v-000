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

  def all
    @@all
  end

  def emails
    @@emails
  end

  def parse
    @@all.each.to_s do |entry|
      self.emails<<entry.split(' ').split(',').to_s
      binding.pry
    end
    self.emails
  end
end
