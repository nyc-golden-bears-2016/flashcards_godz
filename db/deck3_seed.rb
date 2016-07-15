questions = [

[" What goes up and down without moving?","Stairs."]

[" What goes up white and comes down yellow?","An egg."]

[" What grows up while growing down?","A goose."]

[" What grows when it eats, but dies when it drinks?","Fire."]

[" What has a foot on each side and one in the middle?","A yardstick."]

[" What has feet and legs, and nothing else?","Pantyhose."]

[" What has four eyes but cannot see?","Mississippi."]

[" What has no beginning, end or middle and touches every continent?","The ocean."]

[" What has no beginning, end, or middle?","A doughnut."]
]

questions.each do |question, answer|
  Card.create(question: question, answer: answer, deck_id: 3)
end


