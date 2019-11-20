class Note
  def initialize(title, body, formatter = NoteFormatter.new) #(title, body)
    @title = title
    @body = body
    @formatter = formatter # NoteFormatter.new
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
