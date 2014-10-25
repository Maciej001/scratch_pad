class NotesController < ApplicationController

helper_method :notes, :note

	def index
		@notes ||= Note.all
	end

	def note
		@note ||= Note.find(params[:id])
	end
end
