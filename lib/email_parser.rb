class EmailParser

  attr_accessor :emails

  @@all=[]
  #  that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses.

  def initialize(emails)
    @@all<<emails.to_s
  end

  def all
    @@all
  end

  def parse
    holder=[]
    @@all.each do |entry|
      holder<<entry.split(' ').split(',').to_s
    end
  end
end
