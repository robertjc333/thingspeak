class UpdatePublicFlagToPlugins < ActiveRecord::Migration
  def change
    #add_column :plugins, :public_flag, :boolean, default: false
    
    # set existing public_flag values
    execute "UPDATE plugins SET public_flag = 1 WHERE private_flag = 0;"
            #UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;
  end
end
