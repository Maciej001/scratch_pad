class Note < ActiveRecord::Base
	validate :ensure_title_or_content

	private

	# validation in rails triggers on @model not 'invalid' but 'error'
	# therefore you should add
	# @listenTo @model, 'error', @addError
	def ensure_title_or_content
		unless title.present? or content.present?
			errors.add(:title, "Must provide title or content")
		end	
	end
end
