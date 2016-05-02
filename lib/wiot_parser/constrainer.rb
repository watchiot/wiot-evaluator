##
#
#
module WiotParser
  class Constrainer

    def initialize(values)
      @params_max = values[:params_max]
      @valid_emails = values[:valid_emails]
      @repeat_email_min = values[:repeat_email_min]
    end

    def params_max
      @params_max
    end

    def valid_emails
      @valid_emails
    end

    def repeat_email_min
      @repeat_email_min
    end

  end
end
