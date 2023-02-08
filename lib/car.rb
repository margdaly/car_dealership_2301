class Car

  def initialize(make_model, monthly_payment, loan_length)
  @make_model = make_model
  @monthly_payment = monthly_payment
  @loan_length = loan_length
  end

  def make_model
    @make_model
  end

  def make
    make = @make_model.split(" ").first
  end

  def model
    model = @make_model.split(' ').last
  end

  def monthly_payment
    @monthly_payment
  end

  def loan_length
    @loan_length
  end

  def total_cost
    @loan_length * @monthly_payment
  end
end