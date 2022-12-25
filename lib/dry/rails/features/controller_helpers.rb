# frozen_string_literal: true

module Dry
  module Rails
    module Features
      # Controller helpers
      #
      # @api public
      module ControllerHelpers
        def initialize(*args, **kwargs, &block)
          super()
        end
        # Return a component from the application container
        #
        # @example
        #   def index
        #     users = resolve("users.index").(safe_params[:query])
        #     render json: users
        #   end
        #
        # @param key [Symbol, String] The component key
        #
        # @return [Object]
        #
        # @raise Dry::Container::Error
        #
        # @api public
        def resolve(key)
          container[key]
        end

        # Return the application container
        #
        # @return [Dry::Rails::Container]
        #
        # @api public
        def container
          Railtie.container
        end
      end
    end
  end
end
