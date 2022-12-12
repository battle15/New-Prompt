class PromptsController < ApplicationController

  def index
    matching_prompts = Prompt.all
    @list_of_prompts = matching_prompts.order({ :created_at => :desc})
    render({ :template => "prompt/index.html.erb"})
  end 

  def show
    the_id = params.fetch("path_id")

    matching_prompts = Prompt.where({ :id => the_id })

    @the_prompt = matching_prompts.at(0)
    render({ :template => "prompt/show.html.erb"})
  end

  def create
    prompt = Prompt.new

    prompt.location = Faker::Address.country.downcase
    prompt.species = Faker::Creature::Animal.name.downcase
    prompt.item = Faker::Appliance.equipment.downcase

    prompt.full_prompt = "Create a story about a #{prompt.species} in #{prompt.location} with a(n) #{prompt.item}"

    #prompt.save
    
    # redirect_to (/story("show"))
    # chosen prompt will appear on "story show page"

    if prompt.valid?
      prompt.save
      redirect_to("prompt/show", { :notice => "Prompt created successfully." })
    else
      redirect_to("/", { :alert => prompt.errors.full_messages.to_sentence })
    end
  end

end
