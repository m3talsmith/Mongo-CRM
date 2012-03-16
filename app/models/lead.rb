class Lead
  include Mongoid::Document
  
  field :first_name
  field :last_name
  field :phone
  field :email
  field :company
  field :interested_in
end
