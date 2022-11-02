class ProgrammingLanguage < ApplicationRecord
    validades: :name, :creator, :release_year, presence: true
end    