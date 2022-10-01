class RemoveReviewBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :review, index: true, foreign_key: false
  end
end
