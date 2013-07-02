get '/' do
  @notes = Note.all
  erb :index
end

post '/post' do # This route is used to create a note
  Note.create(params[:create]) 
  @notes = Note.all
  erb :index
end

get '/read/:id' do |id| # This route is used to view one note
  @note = Note.find(id)
  erb :view_note
end

put '/update/:id' do |id| # This route is used to update a note
  @note = Note.find(id)
  @note.update_attributes(params[:update_note])
  erb :view_note
  
end

delete '/delete/:id' do
  delete_note(params[:id], params[:counter])
end
