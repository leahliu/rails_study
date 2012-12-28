class EmailValidator < ActiveModel::EachValidator
   def validate_each(record, attribute, value)
     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
       record.errors[attribute] << (options[:message]) || "Please enter an email"
    end
 end
end
class Login < ActiveRecord::Base
  belongs_to:user

  def authenticate_safely(email,password)
    where("email = ? AND password = ?", email,password).first
  end
  #attr_accessible :email, :password
  #validates:email, :presence => true, :email => true
  #validates:password, :presence => true
end
