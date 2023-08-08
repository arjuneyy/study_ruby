# class Document
#   def initialize(title)
#     @title = title
#   end
# end

# class PDF < Document
#   def print
#     p "Printing PDF, title: #@title"
#   end
# end

# class Word < Document

#   def print
#     p "Printing Word, title: #@title"
#   end
# end

# Word.new("Word Document").print
# PDF.new("PDF document").print

class Skype
  def call
    p "Calling from skype"
  end
end

class WhatsApp
  def call
    p "Calling from WhatsApp"
  end
end

apps = [Skype, WhatsApp]
apps.each { |app| app.new.call }