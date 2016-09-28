require 'test_helper'

class NotificationTest < ActiveSupport::TestCase
  should have_db_column(:title).of_type(:string)
  should have_db_column(:message).of_type(:text)
  should have_db_column(:type_of).of_type(:integer)
  should have_db_column(:created_at).of_type(:datetime)
  should have_db_column(:updated_at).of_type(:datetime)

  should have_many(:user_notifications)
  should have_many(:users)
end
