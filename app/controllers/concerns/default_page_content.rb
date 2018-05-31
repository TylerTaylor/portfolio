module DefaultPageContent
    extend ActiveSupport::Concern
    
    included do 
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Tyler Taylor's Portfolio"
        @seo_keywords = "Tyler Taylor Portfolio Rails React Full Stack"
    end
end