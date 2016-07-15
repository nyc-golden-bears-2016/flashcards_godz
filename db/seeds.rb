questions1 = [
        ["I have billions of eyes, yet I live in darkness. I have millions of ears, yet only four lobes. I have no muscle, yet I rule two hemispheres. What am I?", "The human brain"],

        ["We're five little items of an everyday sort; you'll find us all in 'a tennis court'.", "Vowels"],

        [ "What is the beginning of eternity, the end of time and space, the beginning of every end and the end of every race?"," The letter 'E'"],

        [ "What weighs six ounces, sits in a tree, and is very dangerous?"," A sparrow with a machine gun"],


        [ "When is the time of a clock like the whistle of a train?"," When it's two to two."],

        [ "What belongs to you, but is used by others?"," Your name"],

        [ "What is it that no man wants to have but no man wants to lose?"," A lawsuit"],
            ]



questions2 = [
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



questions3 = [

[" What goes up and down without moving?","Stairs."],

[" What goes up white and comes down yellow?","An egg."],

[" What grows up while growing down?","A goose."],

[" What grows when it eats, but dies when it drinks?","Fire."],

[" What has a foot on each side and one in the middle?","A yardstick."],

[" What has feet and legs, and nothing else?","Pantyhose."],

[" What has four eyes but cannot see?","Mississippi."],

[" What has no beginning, end or middle and touches every continent?","The ocean."],

[" What has no beginning, end, or middle?","A doughnut."]
]


questions1.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 1)
end

questions2.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 2)
end

questions3.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 3)
end


