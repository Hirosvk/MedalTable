class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

	@@downcase_attributes = Proc.new { |instance, attrs|
		attrs.each do |attr|
			instance[attr].try(:downcase!)		
		end
	}

end
