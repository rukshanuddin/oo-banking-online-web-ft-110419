class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = 'pending'
    @sender = sender
  end

end
