questions = [
["When is the time of a clock like the whistle of a train?","When its two to two"],

["Why is a quarrel like a bargain?","It takes two to make one"],

["What kind of pins are used in soup?","Terapins"],

["What was Joan of Arc made of?","She was maid of Orleans"],

["How many sides has a circle?","Two, inside and outside"],

["What has neither nails or bones, but has four fingers and a thumb?","A glove!"],

["Question, what is it that no man wants, but no man wants to lose?","A law suit!"],

["What is black and white and red all over?","A newspaper"],

["What have branches and leaves but no bark?","A library"],

["What is always on its way here, but never arrives?","Tomorrow"],

["The more you take away from it the larger it grows, what is it?","A hole"]]

questions.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 2)
end
