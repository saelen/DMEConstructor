class ProjectTestData < ActiveRecord::Migration
  def up
    
  	Project.delete_all
  	Project.create(:name => 'RTR - JDE Cost Center to SAP Cost Center',
  	 :description => 'JDE Cost Center to SAP Cost Center mapping table.')
  end

  def down
    Project.delete_all
  end
end
