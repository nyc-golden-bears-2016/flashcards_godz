get '/decks/:id' do

  @deck = Deck.find(params[:id]) #define instance variable for view
  @cards = @deck.cards
  @unanswered_cards = @cards.where(answered_correctly: false).shuffle

  # until @unanswered_cards.length == 0
  # @unanswered_cards.each do |card|
  #   redirect "/decks/#{params[:id]}/cards/#{card.id}"

  # end

    @unanswered_cards.each do |card|
      redirect "/decks/#{params[:id]}/cards/#{card.id}"
    end


  erb :'decks/show'

end


get '/decks/:id' do

  @deck = Deck.find(params[:id]) #define instance variable for view
  @cards = @deck.cards
  @unanswered_cards = @cards.where(answered_correctly: false).shuffle

  # until @unanswered_cards.length == 0
  # @unanswered_cards.each do |card|
  #   redirect "/decks/#{params[:id]}/cards/#{card.id}"

  # end

    @unanswered_cards.each do |card|
      redirect "/decks/#{params[:id]}/cards/#{card.id}"
    end


  erb :'decks/show'

end
