class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amt)
    @status = 'pending'
    @sender = sender
    @receiver = receiver
    @amount = amt
  end

  def valid?(person)
    person.status == 'open'
  end

end
