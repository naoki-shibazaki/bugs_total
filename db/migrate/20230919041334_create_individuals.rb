class CreateIndividuals < ActiveRecord::Migration[7.0]
  def change
    create_table :individuals do |t|
      t.string :companyName
      t.string :contactExtension
      t.string :contactAccounting
      t.string :phoneNumber
      t.string :faxNumber
      t.string :headOfficeAddress
      t.string :contractType
      t.integer :contractPrice
      t.string :minimumHours
      t.string :maximumHours
      t.integer :deduction
      t.integer :overtime
      t.string :settlementUnit
      t.string :paymentSite
      t.boolean :toporunder
      t.timestamps
    end
  end
end
