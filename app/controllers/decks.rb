
get '/decks/:deck_id/cards/:id' do

  @deck = Deck.find(params[:deck_id])

  @card = @deck.cards.find(params[:id])

  erb :'cards/show'

end

post '/decks/:deck_id/cards/:id' do
  @deck = Deck.find(params[:deck_id])

  @card = @deck.cards.find(params[:id])

  if @card.update_attributes(params[:card])
    redirect "/decks/#{@deck.id}/cards"
  else
    erb :'cards/edit' #show edit cards view again(potentially displaying errors)
  end
end
