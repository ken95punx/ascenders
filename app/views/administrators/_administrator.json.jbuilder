<<<<<<< HEAD
json.extract! administrator, :id, :name, :email, :password_digest, :salt, :created_at, :updated_at
=======
json.extract! administrator, :id, :name, :email, :crypted_password, :salt, :created_at, :updated_at
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
json.url administrator_url(administrator, format: :json)
