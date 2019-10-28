module Discard
  module Rails
    module Observers
      class Railtie < Rails::Railtie
        initializer "discard-rails-observers.configure_rails_initialization" do
          ActiveRecord::Callbacks::CALLBACKS.push(
            :before_discard,
            :around_discard,
            :after_discard,
            :before_undiscard,
            :around_undiscard,
            :after_undiscard
          )
        end
      end
    end
  end
end
