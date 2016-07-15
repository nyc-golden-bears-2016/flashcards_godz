
get '/decks/:deck_id/cards/:id' do
  redirect '/' unless logged_in?

  @deck = Deck.find(params[:deck_id])

  @card = @deck.cards.find(params[:id])
  erb :'cards/show'
end


post '/decks/:deck_id/cards/:id' do
  redirect '/' unless logged_in?
  deck = Deck.find(params[:deck_id])
  card = deck.cards.find(params[:id])
  user_answer = params[:user_answer]

  if user_answer.downcase == card.answer.downcase

    card.answered_correctly = true
    card.save
    session[:answer] = "Correct!"
    redirect "/decks/#{params[:deck_id]}"
  else

    session[:answer] = "Incorrect: The correct answer was #{card.answer}"
    redirect "/decks/#{params[:deck_id]}"
  end
  # @deck = Deck.find(params[:deck_id])
  # @card = @deck.cards.find(params[:id])

  # if @card.update_attributes(params[:card])
  #   redirect "/decks/#{@deck.id}/cards"
  # else
  #   erb :'cards/edit' #show edit cards view again(potentially displaying errors)
  # end
end


