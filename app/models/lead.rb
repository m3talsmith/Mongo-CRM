class Lead
  include Mongoid::Document
  
  field :first_name
  field :last_name
  field :phone
  field :email
  field :company
  field :interested_in
  field :comments
  field :lead_status
  field :lead_source
  field :assigned_to
end
