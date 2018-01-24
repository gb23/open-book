class Api::SectionsController < ApplicationController
    before_action :set_section, only:[:show, :update, :destroy]

    def index
        render json: Section.all
    end

    def create
        section = Section.new(section_params)
        if section.save
            render json: section
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
            params.require(:section).permit(:text, :votes, :next_ids => [])
        end
end 