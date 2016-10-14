class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def set_flash_message!(key, kind, options = {})
	  if is_flashing_format?
	    set_flash_message(key, kind, options)
	  end
	end
end
