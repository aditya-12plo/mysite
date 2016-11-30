class CreateAdityas < ActiveRecord::Migration[5.0]
  def change
    create_table :adityas do |t|
      t.string :name
      t.string :dob
      t.string :phone
      t.string :email
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :gplus

      t.timestamps
    end
  end
end
