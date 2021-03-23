class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  def users_attributes=(ua)
    self.user = User.find_or_create_by(username: users_attributes[:username]) unless users_attributes[:username].blank?
  end

end