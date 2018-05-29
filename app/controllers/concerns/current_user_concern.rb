module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        # when overriding a method, super inherits the behavior from the original method
        super || guest_user
    end

    def guest_user
        OpenStruct.new(name: "Guest User", 
                       first_name: "Guest", 
                       last_name: "User", 
                       email: "guest@example.com")
    end
end