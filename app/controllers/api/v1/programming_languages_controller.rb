module Api
    module V1
        class ProgrammingLanguagesController < ApplicationController
            def index
                render json: ProgrammingLanguage.all
            end

            def create
                ProgrammingLanguage.create(programming_languages_params)
            end
            
            private
            
            def programming_languages_params
                params.require(:programming_languages_params).permit(:name, :creator, :released)
            end    
        end
    end
end            