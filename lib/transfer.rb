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
    self.status == 'open'

  end

end
