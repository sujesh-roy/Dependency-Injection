require './lib/Note'

describe Note do
 describe "#display" do
   it "prints a note with title" do
     noteformatter_dbl = double :noteformatter, format: "Title: Note\nsome stuff" #{}"Title: #{note.title}\n#{note.body}"
     note = Note.new("The title", "The body", noteformatter_dbl) #noteformatter_double)
     expect(note.display).to eq "Title: Note\nsome stuff" #"Title: #{note.title}\n#{note.body}"
   end
 end

it 'has a title' do
  note = Note.new("some-title", "some-body")
  expect(note.title).to eq "some-title"
end
it 'has a body' do
  note = Note.new("some-title", "some-body")
  expect(note.body).to eq "some-body"
end
end

describe NoteFormatter do
  it 'formats a note' do
    note = double(:note, title: "some-title", body: "some-body")
    expect(subject.format(note)).to eq "Title: some-title\nsome-body"
  end
end
