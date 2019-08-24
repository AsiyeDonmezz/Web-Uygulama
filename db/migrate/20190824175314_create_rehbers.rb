class CreateRehbers < ActiveRecord::Migration[5.2]
  def change
    create_table :rehbers do |t|
      t.string :isim
      t.string :sehir
      t.text :ozet

      t.timestamps
    end
  end
end
