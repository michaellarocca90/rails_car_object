class Car
  attr_accessor :make, :model_year, :speed, :lights, :parking_brake

  def initialize (make, model_year)
    @make = make
    @model_year = model_year
    @speed = 0
    @lights = 'off'
    @parking_brake = 'On'
  end

  def make= new_make
    @make = new_make
  end

  def family= new_family
    @family = new_family
  end

  def accelerate
    unless parking_brake == 'on'
      @speed += 10
    end
  end

  def brake

    if @speed - 7 < 0
      @speed = 0

    else
      @speed -= 7
    end

  end

  def light_switch
    if @lights == 'off'
      @lights = 'on'
    else
      @lights = 'off'
    end
  end

  def parking_brake_switch

    unless speed > 0
      if @parking_brake == 'On'
        @parking_brake = 'Off'
      else
        @parking_brake = 'On'
      end
    end
  end

end
