class Transfer
  attr_accessor :status, :sender, :receiver

  def initialize(sender, receiver)
    @status = 'pending'
  end

end
