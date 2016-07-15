
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
  end

  redirect "/decks/#{params[:deck_id]}"

  # @deck = Deck.find(params[:deck_id])
  # @card = @deck.cards.find(params[:id])

  # if @card.update_attributes(params[:card])
  #   redirect "/decks/#{@deck.id}/cards"
  # else
  #   erb :'cards/edit' #show edit cards view again(potentially displaying errors)
  # end
end


