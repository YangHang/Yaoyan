class CreateYanluns < ActiveRecord::Migration
  def change
    create_table :yanluns do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
