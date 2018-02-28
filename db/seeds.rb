############### Composition 1 ###################
one = Section.create(
    text: "'Time Tick' -- A 'choose your own adventure' race to the finish to find the killer", 
    votes: 11, next_ids: [2], prev_id: -1)

two = Section.create(
    text: "The detective scans the room with a cold stare.  
    She's sure one of them is hiding something.  
    She would normally calmly, methodically collect alibis, but time is racing away.  
    With every passing second, the probability of locking up the murderer drops. Guided solely on intuition, the detective turns towards", 
    votes: 10, next_ids: [3, 6, 8, 10], prev_id: 1)

three = Section.create(
    text: "the skinny chef.", 
    votes: 5, next_ids: [4], prev_id: 2)

four = Section.create(
    text: "The chef, taken aback, breathes in heavily.  
    He quickly glances at his watch, as though an oven timer on a delicate concoction is about to ring.", 
    votes: 3, next_ids: [5], prev_id: 3)

five = Section.create(
    text: "'Ms. Detective, I have been up since 4 a.m. working in the kitchen. 
    I assure you I was preparing cruelty-free Cornish hens for the party I am catering later tonight.'", 
    votes: 1, next_ids: [-1], prev_id: 4)

six = Section.create(
    text: "the short basketball player.", 
    votes: 2, next_ids: [7], prev_id: 2)

seven = Section.create(
    text: "The little man shifts his weight to the front of his feet -- waiting for the offense to move.  
    The detective looks down at him and sees some sweat beading on his temples.", 
    votes: 1, next_ids: [-1], prev_id: 6) #7

eight = Section.create(
    text: "the blind private-eye.", 
    votes: 3, next_ids: [9], prev_id: 2) #8

nine = Section.create(
    text: "'Madame Detective, I do not envy your current situation.  You must be able to clearly see how time is not on your side here.  
    Someone breathing our air knows something that will help you, and you need to take advantage of that...'", 
    votes: 1, next_ids: [-1], prev_id: 8) #9

ten = Section.create(
    text: "the average Joe.", 
    votes: 3, next_ids: [11], prev_id: 2) #10
 
eleven = Section.create(
    text: "Joe glances up from his cell phone, the device he had been shifting from one hand to the other 
    for the entire duration of the meeting.  
    But he clearly favored holding the phone in his right hand while using the left index finger to touch the screen.", 
    votes: 1, next_ids: [12], prev_id: 10) #11

twelve = Section.create(
    text: "'Look, ma'am, I really wish I could help you.  
    I really do.  The problem is, I have to pick up the kids from church now, or else they wait around in the parking lot.'", 
    votes: 2, next_ids: [-1], prev_id: 11) #12
########### End Composition 1 ###################

########### Composition 2 ###############
thirteen = Section.create(
    text: "'A Dimensionless Man' A sci-fi lovestory movie script.",
    votes: 5, next_ids: [14, 20], prev_id: -1) #13

fourteen = Section.create(
    text: "EXT. NATIONAL PARK - SUNSET.",
    votes: 3, next_ids: [15, 16], prev_id: 13) #14

fifteen =  Section.create(
    text: "DONNIE and STEPHANIE are watching the sun set over an
    idyllic horizon. In the distance are two mountain peaks
    that reach towards each other as if they were once
    connected and some natural process erased their
    unification. Donnie and Stephanie are in their late
    twenties. Donnie has a youthful but athletic appearance.
    Stephanie is beautiful and intelligent with curly, red
    hair. They are clearly in love. Donnie reaches over and
    grabs Stephanie’s hand. She puts her head on his shoulder.",
    votes: 5, next_ids: [17,18], prev_id: 14) #15

sixteen = Section.create(
    text: "DONNIE and STEPHANIE are observing the sun set.  The lighting is orange.",
    votes: 0, next_ids: [-1], prev_id: 14)#16

seventeen = Section.create(
    text: "STEPHANIE: Yeah. It’s even better than you
    said it would be.",
    votes: 1, next_ids: [-1], prev_id: 15)#17
eighteen = Section.create(
    text: "DONNIE looks at STEPHANIE, wondering what she is thinking.",
    votes: 0, next_ids: [-1], prev_id: 15)#18
nineteen = Section.create(
    text: "DONNIE: When I was a kid, my dad would
    drag me to all these national
    parks every summer. And I would
    complain because I wanted to go to
    Disneyland like my friends. For
    years, I couldn’t appreciate the
    beauty of nature...until I came
    here. Then I understood. I didn’t
    need toys or video games. I just
    wanted to be here. When I was a
    teenager, I spent my summers in
    the young ranger program. I
    remember thinking, one day I’d
    like to take a pretty girl here.
    When I was in college I’d want to
    escape the life of a CS major, get
    away from microprocessors and
    screens, so I’d come here, just be
    by myself. Bring some beer, a
    journal, and I’d think, I’d really
    like to take somebody special
    here. And now look at me, I’ve
    managed to bring both a pretty
    girl and someone special. Who says
    a dream can't also be a reality?",
    votes: 2, next_ids: [-1], prev_id: 17)#19

twenty = Section.create(
    text: "EXT. OUTSIDE OF A RESTAURANT - NIGHT",
    votes: 1, next_ids: [21], prev_id: 13) #20
twentyone = Section.create(
    text: "Donnie and Stephanie are walking to a car after dinner,
    holding hands. Donnie stops Stephanie and gives her a kiss. They pull away.",
    votes: 3, next_ids: [-1], prev_id: 20) #21
########### End Composition 2 ###################

########### Composition 3 #######################
twentytwo = Section.create(
    text: "A professional email asking to establish contact with a person who handles multicultural media.",
    votes: 2, next_ids: [23,24], prev_id: -1) #22
twentythree = Section.create(
    text: "Dear Sir or Madame:",
    votes: 1, next_ids: [25], prev_id: 22) #23
twentyfour = Section.create(
    text: "To Whom It May Concern:",
    votes: 3, next_ids: [26,27,28], prev_id: 22) #24
twentyfive = Section.create(
    text: "I am writing with the hope of getting in touch with the appropriate person who handles multicultural media at your company.",
    votes: 0, next_ids: [-1], prev_id: 23) #25
twentysix = Section.create(
    text: "I am writing with the hope of getting in touch with the appropriate person who handles multicultural media at your company.",
    votes: 2, next_ids: [-1], prev_id: 24) #25
twentyseven = Section.create(
    text: "I am writing with the hope of finding the appropriate person who handles multicultural media.",
    votes: 2, next_ids: [-1], prev_id: 24) #25
twentyeight = Section.create(
    text: "I am hoping that you will be able to connect me with someone who deals with multicultural media at your company.",
    votes: 0, next_ids: [-1], prev_id: 24) #25
########### End Composition 3 ###################



