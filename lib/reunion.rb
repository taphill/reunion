class Reunion
  attr_reader :name, :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    activities << activity
  end

  def total_cost
    activities.sum do |activity|
      activity.total_cost
    end
  end

  def breakout
    breakout_costs = Hash.new(0)
    activities.each do |activity|
      activity.owed.each do |participant, amount_owed|
        breakout_costs[participant] += amount_owed
      end
    end

    breakout_costs
  end

  def summary
    output = ""
    breakout.each do |participant, amount_owed|
      output += "#{participant}: #{amount_owed}\n"
    end

    output.chop
  end

  def detailed_breakout

  end
end
