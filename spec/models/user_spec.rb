require 'rails_helper'

describe User do
  describe '#create' do

    it '必須項目が入力してあれば登録できること' do
      user = build(:user)
      expect(user).to be_valid
    end

    it "user_nameがない場合は登録できないこと" do
      user = build(:user, user_name: nil)
      user.valid?
      expect(user.errors[:user_name]).to include("を入力してください")
    end

    it "emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "emailに@とドメインが存在する場合は登録できること" do
      user = create(:user)
      another_user = build(:user, email: "kkk@gmail.com")
      another_user.valid?
      expect(user).to be_valid
    end

    it "emailに@とドメインがない場合は登録できないこと" do
      user = create(:user)
      another_user = build(:user, email: "kkkgmail")
      another_user.valid?
      expect(another_user.errors[:email]).to include("は不正な値です")
    end

    it "重複したuser_nameが存在する場合は登録できない" do
      user = create(:user)
      another_user = build(:user, user_name: user.user_name)
      another_user.valid?
      expect(another_user.errors[:user_name]).to include("はすでに存在します")
    end

    it "重複したemailが存在する場合は登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      # expect(user.errors[:password]).to include("を入力してください", "は7文字以上で入力してください", "は不正な値です")
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "passwordが6文字以上であれば登録できること" do
      user = build(:user, password: "password0", password_confirmation: "password0")
      user.valid?
      expect(user).to be_valid
    end
  end
end