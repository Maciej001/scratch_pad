class NotesController < ApplicationController

helper_method :notes, :note

	def notes
		@notes ||= Note.all
	end

	def note
		@note ||= Note.find(params[:id])
	end
end
