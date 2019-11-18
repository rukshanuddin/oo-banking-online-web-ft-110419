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
    @sender.status == 'open'
    @receiver.status == 'open'
  end

end
