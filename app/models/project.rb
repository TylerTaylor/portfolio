class Project < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    # Custom Scopes in 2 formats
    def self.react
        where(subtitle: 'React')
    end

    scope :ruby_on_rails_project_items, -> { where(subtitle: 'Ruby on Rails') }
end
