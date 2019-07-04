class Transaction < ApplicationRecord
  belongs_to :user

  # validates :amount, numericality: { other_than: 0 }
  validate :check_balance

  after_create :discount_balance

  def check_balance
    puts("\n\n\n\n\n\nYeah!!!!!\n\n\n\n\n\n")
    balance = User.find(user_id).balance
    puts("Balance:#{balance} Amount:#amount}")
    if amount < 0
      if amount.abs > balance
        errors.add(:error, "Usuario no puede gastar más de su saldo")
      end
    end
  end


  def discount_balance
    user = User.find(user_id)
    user.balance += amount
    user.save
  end

end
