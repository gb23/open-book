class Api::SectionsController < ApplicationController
    before_action :set_section, only:[:show, :update, :destroy]

    def index
        #byebug
        render json: Section.all.sort
    end

    def create
        section = Section.new(section_params)
        if section.prev_id != -1 
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
end 