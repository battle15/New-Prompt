class PromptsController < ApplicationController

  def index
    matching_prompts = Prompt.all
    @list_of_prompts = matching_prompts.order({ :created_at => :desc})
    render({ :template => "prompt/index.html.erb"})
  end 

  def edit
    the_id = params.fetch("path_id")

    matching_prompts = Prompt.where({ :id => the_id })

    @the_prompt = matching_prompts.at(0)
    render({ :template => "prompt/edit.html.erb"})
  end

  def show
    the_id = params.fetch("path_id")

    matching_prompts = Prompt.where({ :id => the_id })

    @the_prompt = matching_prompts.at(0)
    render({ :template => "prompt/show.html.erb"})
  end

  def create
    prompt = Prompt.new

    # text = params.fetch(:prompt_text)
    location = params.fetch(:location_text)
    species = params.fetch(:species_text)
    item = params.fetch(:item_text)
    # prompt.full_prompt = text
    prompt.user_id = current_user.id
    prompt.location = location
    prompt.species = species
    prompt.item = item
    prompt.full_prompt = "Create a story about a #{species} in #{location} with a(n) #{item}"

    #prompt.location = Faker::Address.country.downcase
    #prompt.species = Faker::Creature::Animal.name.downcase
    #prompt.item = Faker::Appliance.equipment.downcase

    #prompt.full_prompt = "Create a story about a #{prompt.species} in #{prompt.location} with a(n) #{prompt.item}"

    #prompt.save
    
    # redirect_to (/story("show"))
    # chosen prompt will appear on "story show page"

    if prompt.valid?
      prompt.save
      redirect_to("/prompts/#{prompt.id}", { :notice => "Prompt created successfully." })
    else
      redirect_to("/", { :alert => prompt.errors.full_messages.to_sentence })
    end
  end

  def update 
    prompt_id = params.fetch("query_prompt_id")
    prompt.user_id = params.fetch("query_user_id")
    prompt.title = params.fetch("query_title")
    prompt.body = params.fetch("query_body")

    if prompt.valid?
      prompt.save
      redirect_to("/", { :notice => "Prompt created successfully." })
    else
      redirect_to("/", { :alert => prompt.errors.full_messages.to_sentence })
    end
  end

end
