Rails.application.config.middleware.use OmniAuth::Builder do  
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'  
  provider :facebook, '748705461818462', 'cf50a4115e6913b45152da79908375cb'  
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'  
end 
