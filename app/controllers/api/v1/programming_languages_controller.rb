module Api
    module V1
        class ProgrammingLanguagesController < ApplicationController
            def index
                render json: ProgrammingLanguage.all
            end

            def create
                programming_language = ProgrammingLanguage.new(programming_language_params)

                if programming_language.save
                    render json: programming_language, status: 200              
                else
                    render json: {error: "Houve um error"}, status: 500                
                end   
            end
            
            private
            
            def programming_language_params
                params.require(:programming_language)
                .permit(:name, :creator, :release_year)
            end    
        end
    end
end            