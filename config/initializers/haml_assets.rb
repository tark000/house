module CustomHamlEngine
  class HamlTemplate < Tilt::HamlTemplate
    def evaluate(scope, locals, &block)
      scope.class_eval do
        include Rails.application.routes.url_helpers
        include Rails.application.routes.mounted_helpers
        include AdvertsHelper
        include ActionView::Helpers
        include ApplicationHelper
        #include Devise::Controllers::Helpers
        #include Devise::Controllers::Helpers.define_helpers(User)
        #helper_method :current_user
      end

      super
    end
  end
end

Rails.application.assets.register_engine '.haml', CustomHamlEngine::HamlTemplate