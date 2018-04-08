class Api::SectionsController < ApplicationController
    before_action :set_section, only:[:show, :update, :destroy]

    def index
        remove_and_repopulate_about_data
        render json: Section.all.sort
    end

    def create
        section = Section.new(section_params)
        if section.prev_id != -1 && section.prev_id != -2
            sectionPrev = Section.find_by(id: section.prev_id)
        else
            sectionPrev = nil
        end
            if section.save
                if !sectionPrev.nil?
                    sectionPrev.next_ids << section.id 
                    if sectionPrev.next_ids[0] == -1
                        sectionPrev.next_ids.shift
                    end
                    sectionPrev.save 
                end
                render json: {section: section, sectionPrev: sectionPrev}
            else
                render json: { message: section.errors}, status: 400
            end  
    end

    def show
        render json: @section
    end

    def update
        if @section.update(section_params)
            render json: @section
        else
            render json: { message: @section.errors}, status: 400
        end
    end

    def destroy
        if @section.destroy
            render status: 204
        else
            render json: { message: "Unable to remove this section"}, status: 400
        end
    end


    private
        def set_section 
            @section = Section.find_by(id: params[:id])
        end

        def section_params
            params.require(:section).permit(:text, :votes, :prev_id, :about, :next_ids => [] )
        end

        def remove_and_repopulate_about_data
            sectionTrues = Section.all.select{ |o| o[:about] == true}
            Section.delete(sectionTrues) #delete the 'about' data
            zero = Section.create(text: "********Welcome to Open Book Card Composition text editor!********      
                This is a tutorial explaining how to use Card Comp. Use the down arrow key on your keyboard to go to the next card.", 
                votes: 10, prev_id: -2, about: true)
            one = Section.create(text: "[1] Often a composition is easier to create when it is broken down into sections or cards.  
                For instance, creating content in a tweet is often easier than doing so within a daunting, largely empty page of a word processor. 
                Navigation through cards is easy: use the arrow keys on the keyboard to move up, down, left, or right. Let's arrow down now to card [2].", 
                votes: 1, prev_id: zero.id, about: true)
            two = Section.create(text: "[2] Welcome to the next card.  We've continued the text from card [1] above with this text. 
                As we further create new content for a composition, we create new cards, and the composition grows in the downward direction.  
                (Just like writing a letter, as you write more and more, the content grows in a downward direction.) Lets arrow down now to the next card.", 
                votes: 3, prev_id: one.id, about: true)
            three = Section.create(text: "[3] A new concept in Card Comp: in addition to navigating cards in the up and down (column) direction, 
                we can navigate through cards in the horizontal direction as well.  The cards in a given row are meant to be different versions of 
                how author(s) would want to continue the text from the cards above it.  Let's say I'm not happy with my writing style or content on 
                this card and want to look at other versions I may have created.  Let's look at another version by pressing the right arrow. 
                (Note, different versions in a row have the same content above them)", 
                votes: 4, prev_id: two.id, about: true)
            four = Section.create(text: "[4] We have now navigated horizontally to another version.  
                Remember, different versions are all continuations of the exact same text in the cards above.  
                Because we arrowed over, our composition reads from card [1] to [2] to [4].  
                If we were to left arrow back to the card we came from, our composition would read from card [1] to [2] to [3].  
                Your current location in a given row is seen at the bottom right corner of a card.  
                This card says '2/2' meaning we are on the second of two cards in the row.  
                Arrowing left would give us the first card, or '1/2'. To the right of the last card in a row 
                (or the left of the first card in a row) is a card we can type on and submit to make a new version card for the row.  
                Let's now arrow down to card [5].", 
                votes: 3, prev_id: two.id, about: true)
            five = Section.create(text: "[5] Our composition now reads from card [1] to [2] to [4] to [5].  
                 Note that we are continuing the composition to follow card [4].  From the card above, we could also arrow back over to card [3] and 
                 continue the composition after card [3], too; but let's say we like card [4]'s writing more, 
                 so we choose to continue the composition on this path.  It is now apparent that there can be many paths to choose from.  This is where voting comes in.", 
                 votes: 1, prev_id: four.id, about: true)
            six = Section.create(text: "[6] Each card can be 'liked' by clicking on a thumbs-up icon that is present in the bottom left. 
                You can see this card has 2 votes. Card votes are compared on a row by row basis; that is, the versions are compared with one another to find the most liked version.
                (The very top cards are the composition title/description cards, so voting on the top card represents approval of the composition as a whole).", 
                votes: 2, prev_id: five.id, about: true)
            seven = Section.create(text: "[7] To show how votes effect the cards that are displayed in a given row, this row has 3 versions.
                This card, let's call it 'version A' has three votes.  The other two cards have less.  Lets arrow over to the right to see 'version B'.", 
                votes: 3, prev_id: six.id, about: true) #7
            eight = Section.create(text: "[8] 'version B' This card has 1 vote, less than the initially shown card ('version A').
                Let's now right arrow over to 'version C'.  ", 
                votes: 1, prev_id: six.id, about: true)

            nine = Section.create(text: "[9] 'version C' This card has 2 votes, less than 'version A', explaining why it wasn't initially shown.
                So version 'A' is shown by default because it has the most votes.  Then as one arrows right, the remaining cards are shown in the
                order of creation.  Votes are not taken into account here. If there is a tie between two cards for highest rating in a given row, 
                the card that was created first is the default shown. If we were to scroll directly above to card [6], this row would shuffle back to
                to the highest rated version, 'version A'.  That is, the highlighted card will always have the highest ranking cards at each row of the path
                displayed below it. In this manner, as one highlights cards lower and lower in the composition, one can 'shape the composition' to contain less popular cards, if desired.",
                votes: 2, prev_id: six.id, about: true)
            ten = Section.create(text: "[10] So that's Card Comp in a nutshell.  It breaks down a composition into cards.  
                These cards can be thought of as growing in an upsidedown tree-like structure: downward and outward. 
                Voting makes it easy to find the path with most popular card at each row.  The possibilities of how to use this software are limitless.  
                A neat idea would be to crowd source the writing of a novel or a movie script.  Because many, many authors can come together to write and vote on cards, 
                it would be neat to see just how quickly a well-liked piece of literature could be composed! ", 
                votes: 3, prev_id: nine.id, about: true) #8
            eleven = Section.create(text: "[11] Feel free to continue playing with this demo (it's sandboxed, so you're welcome to create and/or
                vote on as much content as you want without worry). 
                Add to the composition by submitting content in the form card below this one; create a new version card on a given row by arrowing right 
                or left until you see a form card; and even create a new composition by arrowing horizontally on the very top card until a form card appears.  
                To leave this demo and get to the real content, click on the composition icon on the top left of the page.  It will bring you to the most popular 
                composition at this time.", 
                votes: 1, prev_id: ten.id, about: true) #9
            # ten = Section.create(text: "ABOUT IIFour text ", votes: 3, prev_id: seven.id, about: true) #10
            # eleven = Section.create(text: "ABOUT IIFive text ", votes: 1, prev_id: nine.id, about: true) #11
            # twelve = Section.create(text: "ABOUT IISix text ", votes: 2, prev_id: nine.id, about: true) #12
            zero[:next_ids] = [one.id]
            one[:next_ids] = [two.id]
            two[:next_ids] = [three.id, four.id]
            three[:next_ids] = [-1]
            four[:next_ids] = [five.id]
            five[:next_ids] = [six.id]
            six[:next_ids] = [seven.id, eight.id, nine.id]
            seven[:next_ids] = [-1]
            eight[:next_ids] = [-1]
            nine[:next_ids] = [ten.id]
            ten[:next_ids] = [eleven.id]
            eleven[:next_ids] = [-1]
            #ten[:next_ids] = [-1]
            #eleven[:next_ids] = [-1]
            #twelve[:next_ids] = [-1]
            zero.save
            one.save
            two.save
            three.save
            four.save
            five.save
            six.save
            seven.save
            eight.save
            nine.save
            ten.save
            eleven.save
           #twelve.save
        end
end 