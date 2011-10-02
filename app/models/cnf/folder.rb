class Cnf::Folder < ActiveRecord::Base
  validates_presence_of :name
  validate :parent_id_nil_or_valid
  
  protected
  def parent_id_nil_or_valid
    errors.add(:parent_id, ' is not a valid parent folder ID') if not(parent_id.nil?) and Cnf::Folder.find_by_id(parent_id).nil?  
  end
end
