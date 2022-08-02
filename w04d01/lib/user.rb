require 'pry'

# This class represents a calendar user.
class User
  attr_accessor :email, :age

  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(mail)
    @@all_users.find { |user| user.email == mail }
  end
end
