class CreateConfigurationServers < ActiveRecord::Migration
  def change
    create_table :configuration_servers do |t|
      t.string :name
      t.string :server_name

      t.timestamps
    end
  end
end
