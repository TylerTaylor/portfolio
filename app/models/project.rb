class Project < ApplicationRecord
    include Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    # Custom Scopes in 2 formats
    def self.react
        where(subtitle: 'React')
    end

    scope :ruby_on_rails_project_items, -> { where(subtitle: 'Ruby on Rails') }

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end
end
