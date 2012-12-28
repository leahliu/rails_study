class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message]) || "Please enter an email"
    end
  end
end
class User < ActiveRecord::Base
  attr_accessible :email, :username,  :password
  validates:email, :presence => true, :email => true, :uniqueness => true
  validates:username, :presence => true, :length => {:minimum => 3}, :uniqueness => true
  validates:password, :presence => true, :length => {:minimum => 6}
end
