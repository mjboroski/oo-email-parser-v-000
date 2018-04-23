class EmailParser

  attr_accessor :emails

  @@all={}
  #  that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

  def initialize(emails)
    @emails=emails
    self.all<<emails
  end

  def self.all
    @@all
  end

  def self.parse
    self.all.each do |entry|
      :emails<<entry.split(' ').split
    end
  end
end
