
class PersonsController < ApplicationController
	before_action :get_people , only: [ :index ] 
	before_action :get_person , only: [ :show ]

	def get_people
		@people = Person.all
	end

	def get_person
		@person = Person.find params[:id]
	end

	def index
	end

	def show
		respond_to do |format|
			format.xml { render xml: @person }
			format.json { render json: @person }
		end
	end

	def new
		@person = Person.new
		render action: 'new'
	end

	def create
		parameters = params.require(:person).permit([ :first_name, :last_name, :id_number , :age ])
		
		if not Person.create(parameters) 
			puts "hola"
		end
		redirect_to(action: 'index' )
	end

end