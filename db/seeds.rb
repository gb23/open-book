comp_one = Composition.create(text: "composition1 text", votes: 1, next_ids: [1,7], prev_id: -1)

sec_one = Section.create(text: "One text ", composition_id: comp_one.id, votes: 1, next_ids: [2,4], prev_id: comp_one.id)

sec_two = Section.create(text: "Two text ", composition_id: comp_one.id, votes: 3, next_ids: [3], prev_id: sec_one.id)

sec_three = Section.create(text: "Three text ", composition_id: comp_one.id, votes: 1, next_ids: [5,6], prev_id: 2)

sec_four = Section.create(text: "Four text ", composition_id: comp_one.id, votes: 3, next_ids: [-1], prev_id: sec_one.id)

sec_five = Section.create(text: "Five text ", composition_id: comp_one.id, votes: 1, next_ids: [-1], prev_id: 3)

sec_six = Section.create(text: "Six text ", composition_id: comp_one.id, votes: 2, next_ids: [-1], prev_id: 3)

sec_seven = Section.create(text: "Seven text ", composition_id: comp_one.id, votes: 2, next_ids: [-1], prev_id: comp_one.id)
