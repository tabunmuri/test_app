class User < ActiveRecord::Base
  validates :name, presence: true, length:  {minimum: 8, maximum: 16, message: "名前が規定文字数の中に入っていません"}
  validates :email, presence: true, length:  {minimum: 8, maximum: 16, message: "Eメールが規定文字数の中に入っていません"}

  def create_user
    save!
  end
end
