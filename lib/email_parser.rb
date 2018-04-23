class EmailParser

  attr_accessor :emails

  @@all=[]
  #  that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

  def initialize(emails)
    self.all<<emails.to_s
  end

  def all
    @@all
  end

  def self.parse
    holder=[]
    self.all.flatten.each do |entry|
      holder<<entry.split(' ').split.to_s
    end
  end
end
