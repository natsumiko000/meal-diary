class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: {maximum: 10, minimum: 2}
  validates :introduction, length: { maximum: 20 }

  has_many :diaries, dependent: :destroy

	enum status: {active:0, inactive:1}

	# 物理削除の代わりにユーザーの`deleted_at`をタイムスタンプで更新
  def soft_delete
    update_attribute(:deleted_at, Time.current)
    update_attributes(status: 1)
  end

  # ユーザーのアカウントが有効であることを確認
  def active_for_authentication?
    super && !deleted_at
  end

  # 削除したユーザーにカスタムメッセージを追加します
  def inactive_message
    !deleted_at ? super : :deleted_account
  end
end
