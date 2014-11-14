class FixData < ActiveRecord::Migration
  def change
     Person.where(date_of_birth: (Time.now - 300.years)..(Time.now-100.years)).delete_all
     Organization.where(active: nil).update_all(active: false)
     Organization.where(name: nil).delete_all
     Organization.where(name: "").delete_all
     Organization.where(name: " ").delete_all
  end
end
