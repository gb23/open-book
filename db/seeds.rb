Section.create(text: "One text ", votes: 1, next_ids: [2,4], prev_id: -1)

Section.create(text: "Two text ", votes: 3, next_ids: [3], prev_id: 1)

Section.create(text: "Three text ", votes: 1, next_ids: [5,6], prev_id: 2)

Section.create(text: "Four text ", votes: 3, next_ids: [-1], prev_id: 1)

Section.create(text: "Five text ", votes: 1, next_ids: [-1], prev_id: 3)

Section.create(text: "Six text ", votes: 2, next_ids: [-1], prev_id: 3)



Section.create(text: "seven text ", votes: 1, next_ids: [8,10], prev_id: -1) #7

Section.create(text: "eight text ", votes: 3, next_ids: [9], prev_id: 7) #8

Section.create(text: "nine text ", votes: 1, next_ids: [11,12], prev_id: 8) #9

Section.create(text: "ten text ", votes: 3, next_ids: [-1], prev_id: 7) #10

Section.create(text: "eleven text ", votes: 1, next_ids: [-1], prev_id: 9) #11

Section.create(text: "twelve text ", votes: 2, next_ids: [-1], prev_id: 9) #12
