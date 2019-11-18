class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amt)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amt
    # sender.valid?
    # receiver.valid?
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if self.status == 'pending'

      if !sender.valid?
        "Transaction rejected. Please check your account balance."
      else
        @sender.balance -= @amount
        @receiver.balance += @amount
        self.status = 'complete'
      end
    elsif self.status == 'complete'

    elsif sender.balance < @amount
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer

  end

end
