class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :companyName
      t.boolean :invoiceApplicable
      t.boolean :invoiceIssueUnit
      t.string :phoneNumber
      t.string :fax
      t.string :postalCode
      t.string :headOfficeAddressCityStreet
      t.string :headOfficeAddressBuilding
      t.string :representativeName
      t.string :emailForExtension
      t.string :ccMailingList
      t.string :bccMailingList
      t.string :nameForAccountingDocs
      t.string :emailForAccountingDocs
      t.string :ccMailingListAccounting
      t.string :bccMailingListAccounting
      t.timestamps
    end
  end
end
