module Api
    module V1
        class ProgrammingLanguagesController < ApplicationController
            def index
                render json: ProgrammingLanguage.all
            end
        end
    end
end            