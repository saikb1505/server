class ChangeDataToJson < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :data, :jsonb, using: 'data::text::jsonb'
  end
end
