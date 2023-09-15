class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :woker
      t.date :contractStart
      t.date :contractEnd
      t.date :closingDate
      t.date :documentIssueDate
      t.string :companyRepresentative
      t.date :totalContractPeriod
      t.timestamps
    end
  end
end
