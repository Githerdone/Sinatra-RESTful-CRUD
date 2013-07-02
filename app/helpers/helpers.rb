helpers do
 def delete_note(id, counter)
 if counter == ""
    counter = 2
    @counter = 2
    @note = Note.find(id)
    erb :view_note
  elsif counter == "2"
    Note.find(id).destroy
    redirect '/'
  end
 end
end