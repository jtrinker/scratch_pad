class NotesController < ApplicationController
	# make these methods available in the view; making queries so these methods
	# belong in the controller
	helper_method :notes, :note

	def notes
		@_notes ||= Note.all
	end

	def note
		@_note ||= notes.find(params[:id])
	end
end
