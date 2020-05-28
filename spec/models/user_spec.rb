require 'rails_helper'

RSpec.describe 'Userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    let(:user) { build(:user) }
    subject { test_user.valid? }
    context 'nameカラム' do
      let(:test_user) { build(:user) }
      it '空欄でないこと' do
        test_user.name = nil
        is_expected.to eq false;
      end
      it '2文字以上であること' do
        test_user.name = Faker::Lorem.characters(number:1)
        is_expected.to eq false;
      end
      it '10文字以下であること' do
        test_user.name = Faker::Lorem.characters(number:11)
        is_expected.to eq false;
      end
    end

    context 'introductionカラム' do
      let(:test_user) { user }
      it '20文字以下であること' do
        test_user.introduction = Faker::Lorem.characters(number:21)
        is_expected.to eq false
      end
    end
  end
end