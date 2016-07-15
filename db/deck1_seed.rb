questions = [
        ["I have billions of eyes, yet I live in darkness. I have millions of ears, yet only four lobes. I have no muscle, yet I rule two hemispheres. What am I?", "The human brain"],

        ["We're five little items of an everyday sort; you'll find us all in 'a tennis court'.", "Vowels"],

        [ "What is the beginning of eternity, the end of time and space, the beginning of every end and the end of every race?"," The letter 'E'"],

        [ "What weighs six ounces, sits in a tree, and is very dangerous?"," A sparrow with a machine gun"],


        [ "When is the time of a clock like the whistle of a train?"," When it's two to two."],

        [ "What belongs to you, but is used by others?"," Your name"],

        [ "What is it that no man wants to have but no man wants to lose?"," A lawsuit"],
            ]

questions.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 1)
end
