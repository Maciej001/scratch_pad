class NotesController < ApplicationController

	helper_method :notes, :note

	respond_to :json, only: [:index, :create, :update, :destroy]
	respond_to :html, only: [:index]

	def index 
		respond_with notes
	end

	def create
		note = Note.create(notes_params)
		respond_with note
	end

	def update
		note.update_attributes(notes_params)
		respond_with note
	end

 	def destroy
 		respond_with note.destroy()
 	end

	def notes
		@notes ||= Note.all
	end

	def note
		@note ||= Note.find(params[:id]) 
	end
end

def notes_params 
	params.permit(:title, :content)
end
