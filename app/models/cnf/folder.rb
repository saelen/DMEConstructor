class Cnf::Folder < ActiveRecord::Base
  puts "hai"
  validates_presence_of :name, :parent_id
end
