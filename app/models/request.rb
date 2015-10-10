class Request < ActiveRecord::Base
  belongs_to :customer, class_name: "User",foreign_key: "customer_id"
  belongs_to :owner, class_name: "User",foreign_key: "owner_id"
  belongs_to :product

  def self.get_by_attr(param,user_id)
  	if param == "to"
       requests = Request.where('owner_id = ?', user_id)
    elsif param == "from"
       requests = Request.where('customer_id = ?', user_id)
    else
      requests = Request.where('customer_id = ? or owner_id = ?', user_id, user_id)
    end
    return requests
  end
end
