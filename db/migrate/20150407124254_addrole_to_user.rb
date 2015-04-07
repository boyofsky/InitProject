class AddroleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: '平民'
  end
end
