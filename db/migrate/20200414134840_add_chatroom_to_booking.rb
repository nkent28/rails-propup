class AddChatroomToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :chatroom, foreign_key: true
    add_reference :bookings, :booking, foreign_key: true
  end
end
