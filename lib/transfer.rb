class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amt)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amt
    sender.valid?
    receiver.valid?
  end

  def valid?
    if self.kind_of? Transfer
      self.status == 'pending'
    else
      self.status == 'open'
    end

  end

  def execute_transaction
    if self.status == 'pending'
    @sender.balance -= @amount
    @receiver.balance += @amount
    self.status = 'complete'
  elsif self.status == 'complete'
    "Transaction rejected. Please check your account balance."
  end

  def reverse_transfer

  end

end
