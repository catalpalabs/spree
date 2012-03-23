module Spree
  module Api
    module ControllerSetup
      def self.included(klass)
        klass.class_eval do
          include ActionController::ImplicitRender
          include ActionController::Rendering
          include AbstractController::ViewPaths
          include AbstractController::Callbacks
          include AbstractController::Helpers
          include ActiveSupport::Rescuable
          include ActionController::Rescue
          include ActionController::MimeResponds

          include CanCan::ControllerAdditions

          append_view_path "app/views"
          respond_to :json
        end
      end
    end
  end
end