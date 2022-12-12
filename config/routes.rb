Rails.application.routes.draw do

  # Routes for the Story resource:

  # CREATE
  post("/insert_story", { :controller => "stories", :action => "create" })
          
  # READ
  get("/stories", { :controller => "stories", :action => "index" })
  
  get("/stories/:path_id", { :controller => "stories", :action => "show" })
  
  # UPDATE
  
  post("/modify_story/:path_id", { :controller => "stories", :action => "update" })
  
  # DELETE
  get("/delete_story/:path_id", { :controller => "stories", :action => "destroy" })

  #------------------------------

  #Home page
  #get("/", {:controller => "landing", :action => "index"})
  get("/", {:controller => "prompts", :action => "index"})
  
  #------------------------------------------------------
  #USERS ACCOUNT
  
  devise_for :users

  #------------------------------------------------------

  #PROMPTS

  post("/create_prompts", {:controller => "prompts", :action => "create"})

  get("/prompts", {:controller => "prompts", :action => "index"})

  get("/prompts/:path_id", {:controller => "prompts", :action => "show"})


  #STORIES

  post("/create_stories", {:controller => "stories", :action => "create"})
end
