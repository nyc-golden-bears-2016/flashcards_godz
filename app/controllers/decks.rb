get '/decks/:id/play' do

  @deck = Deck.find(params[:id]) #define instance variable for view
 cards = @deck.cards
 unanswered_cards = cards.where(answered_correctly: false).shuffle

  # until @unanswered_cards.length == 0
  # @unanswered_cards.each do |card|
  #   redirect "/decks/#{params[:id]}/cards/#{card.id}"

  # end

    unanswered_cards.each do |card|
      current_stat.rounds_played += 1
      current_stat.save
      redirect "/decks/#{params[:id]}/cards/#{card.id}"
    end

    current_stat.answered_correctly_first_round = cards.select {|card| card.answer_attempts == 1}.length
    current_stat.save


    cards.each do | card |
      card.answered_correctly = false
      card.answer_attempts = 0
      card.save
    end
  session[:stat_id] = nil
  session[:answer] = nil
  erb :'decks/show'

end


get '/decks/:id' do

  stat = Stat.create(user_id: current_user.id, deck_id: params[:id], rounds_played: 0, answered_correctly_first_round: 0)

  session[:stat_id] = stat.id
  redirect "/decks/#{params[:id]}/play"
end
