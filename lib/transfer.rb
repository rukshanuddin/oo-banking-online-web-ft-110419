class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amt)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amt
    if sender.valid? && receiver.valid?

  end

  def valid?
    if self.kind_of? Transfer
      self.status == 'pending'
    else
      self.status == 'open'
    end

  end

end
