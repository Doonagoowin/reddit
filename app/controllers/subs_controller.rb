class SubsController < ApplicationController
# Views = user interaction, minimal logic
# Controller/routes = direct traffic, actions
# Models = all logic on the table, change records


### Create/Post
# create = Model_name.create(model_name_params)
    # @model_name = Model_name.new(model_name_params)

    # if @model_name.save
    #   do something
    # else
    #   render :new

### Read/Get
# read =
# shows all of the items in the model 
# index @model_names = Model_name.all

# search record to update/render edit form
# edit @model_name = Model_name.find(params[:id])

# search record/shows a specific record
# show @model_name = Model_name.find(params[:id])

# creates a record in memory/rendering a new form
# new @model_name = Model_name.new

### Update/Put
# update Model_name.find(params[:id]).update(model_name_params)
# @model_name = Model_name.find(params[:id])
#   if @model_name.update(model_name_params)
#     do something
#   else
#     render :edit
#   end

### Destroy/Delete
# destroy Model_name.find(params[:id]).destroy


# model_name_params
# private
#   def model_name_params
#     params.require(:model_name).permit(:everything the model has, )
#   end

  before_action :find_sub, only: [:show, :update, :edit, :destroy]
  # before_action :find_sub, except: [:index, :new, :create]

  def index
    @subs = Sub.all
  end


  def show
  end


  def new
    @sub = Sub.new
  end


  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to subs_path
    else
      render :new
    end
  end


  def edit
  end


  def update

    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end
  end


  def destroy
    @sub.destroy
    redirect_to subs_path
  end

  private
  
    def sub_params
      params.require(:sub).permit(:name)
    end

    def find_sub
      @sub = Sub.find(params[:id])
    end
end
