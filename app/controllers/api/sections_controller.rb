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
            one = Section.create(text: "ABOUT One text ", votes: 1, prev_id: -2, about: true)
            two = Section.create(text: "ABOUT Two text ", votes: 3, prev_id: one.id, about: true)
            three = Section.create(text: "ABOUT Three text ", votes: 1, prev_id: two.id, about: true)
            four = Section.create(text: "ABOUT Four text ", votes: 3, prev_id: one.id, about: true)
            five = Section.create(text: "ABOUT Five text ", votes: 1, prev_id: three.id, about: true)
            six = Section.create(text: "ABOUT Six text ", votes: 2, prev_id: three.id, about: true)
            seven = Section.create(text: "ABOUT IIOne text ", votes: 1, prev_id: -2, about: true) #7
            eight = Section.create(text: "ABOUT IITwo text ", votes: 3, prev_id: seven.id, about: true) #8
            nine = Section.create(text: "ABOUT IIThree text ", votes: 1, prev_id: eight.id, about: true) #9
            ten = Section.create(text: "ABOUT IIFour text ", votes: 3, prev_id: seven.id, about: true) #10
            eleven = Section.create(text: "ABOUT IIFive text ", votes: 1, prev_id: nine.id, about: true) #11
            twelve = Section.create(text: "ABOUT IISix text ", votes: 2, prev_id: nine.id, about: true) #12
            
            one[:next_ids] = [two.id, four.id]
            two[:next_ids] = [three.id]
            three[:next_ids] = [five.id,six.id]
            four[:next_ids] = [-1]
            five[:next_ids] = [-1]
            six[:next_ids] = [-1]
            seven[:next_ids] = [eight.id,ten.id]
            eight[:next_ids] = [nine.id]
            nine[:next_ids] = [eleven.id,twelve.id]
            ten[:next_ids] = [-1]
            eleven[:next_ids] = [-1]
            twelve[:next_ids] = [-1]
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
            twelve.save
        end
end 