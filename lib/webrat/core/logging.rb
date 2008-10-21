module Webrat
  module Logging
    
    def debug_log(message) # :nodoc:
      return unless logger
      logger.debug message
    end

    def logger # :nodoc:
      if defined? RAILS_DEFAULT_LOGGER
        RAILS_DEFAULT_LOGGER
      elsif defined? Merb
        Merb.logger        
      else
        nil
      end
    end
  
  end
end