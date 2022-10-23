Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "index"})
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "show"})
  get("/update_username/:user_id", {:controller => "users", :action => "update_username"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:photo_id", {:controller => "photos", :action => "show"})

  get("/delete_photo/:del_photo_id", {:controller => "photos", :action => "delete"})

  get("/insert_photo", {:controller=>"photos", :action => "insert"})

  get("/update_photo/:update_photo_id", {:controller=>"photos", :action => "update_photo"})

  get("/insert_user", {:controller=>"users", :action => "insert"})

  get("/insert_comment", {:controller=>"photos", :action => "insert_comment"})
end
