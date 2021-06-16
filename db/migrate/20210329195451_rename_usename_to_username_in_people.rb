class RenameUsenameToUsernameInPeople < ActiveRecord::Migration[6.1]
  def change
    rename_column :people, :usename, :username
  end
end
