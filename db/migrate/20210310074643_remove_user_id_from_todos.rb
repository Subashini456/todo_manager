class RemoveUserIdFromTodos < ActiveRecord::Migration[6.1]
  def change
    remove_column :todos, :usedid, :bigint
  end
end
