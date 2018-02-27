
one = Section.create(text: "REAL One text ", votes: 1, next_ids: [2,4], prev_id: -1)

two = Section.create(text: "REAL Two text ", votes: 3, next_ids: [3], prev_id: 1)

three = Section.create(text: "REAL Three text ", votes: 1, next_ids: [5,6], prev_id: 2)

four = Section.create(text: "REAL Four text ", votes: 3, next_ids: [-1], prev_id: 1)

five = Section.create(text: "REAL Five text ", votes: 1, next_ids: [-1], prev_id: 3)

six = Section.create(text: "REAL Six text ", votes: 2, next_ids: [-1], prev_id: 3)

seven = Section.create(text: "REAL IIOne text ", votes: 1, next_ids: [8,10], prev_id: -1) #7

eight = Section.create(text: "REAL IITwo text ", votes: 3, next_ids: [9], prev_id: 7) #8

nine = Section.create(text: "REAL IIThree text ", votes: 1, next_ids: [11,12], prev_id: 8) #9

ten = Section.create(text: "REAL IIFour text ", votes: 3, next_ids: [-1], prev_id: 7) #10
 
eleven = Section.create(text: "REAL IIFive text ", votes: 1, next_ids: [-1], prev_id: 9) #11

twelve = Section.create(text: "REAL IISix text ", votes: 2, next_ids: [-1], prev_id: 9) #12


# Section.create(text: "REAL One text ", votes: 1, next_ids: [14,16], prev_id: -1) #13

# Section.create(text: "REAL Two text ", votes: 3, next_ids: [15], prev_id: 13) #14

# Section.create(text: "REAL Three text ", votes: 1, next_ids: [17,18], prev_id: 14) #15

# Section.create(text: "REAL Four text ", votes: 3, next_ids: [-1], prev_id: 13)#16

# Section.create(text: "REAL Five text ", votes: 1, next_ids: [-1], prev_id: 15)#17

# Section.create(text: "REAL Six text ", votes: 2, next_ids: [-1], prev_id: 15)#18



# Section.create(text: "REAL seven text ", votes: 1, next_ids: [20,22], prev_id: -1) #19

# Section.create(text: "REAL eight text ", votes: 3, next_ids: [21], prev_id: 19) #20

# Section.create(text: "REAL nine text ", votes: 1, next_ids: [23,24], prev_id: 20) #21

# Section.create(text: "REAL ten text ", votes: 3, next_ids: [-1], prev_id: 19) #22

# Section.create(text: "REAL eleven text ", votes: 1, next_ids: [-1], prev_id: 21) #23

# Section.create(text: "REAL twelve text ", votes: 2, next_ids: [-1], prev_id: 21) #24
