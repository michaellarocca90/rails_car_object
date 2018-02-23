class CarsController < ApplicationController

  def car_register

    if !params.has_key?(:make) || params[:make].strip.empty?
      @make = "Missing Make"
      render "home.html.erb"

    elsif !params.has_key?(:model_year) || params[:model_year].strip.empty?
      @model_year = "Missing Model Year"
      render "home.html.erb"

    else
      car = Car.new(params[:make], params[:model_year])
      session[:car] = car.to_yaml
      @car = YAML.load(session[:car])
      render "car_simulate.html.erb"
    end
  end

  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    car = @car
    session[:car] = car.to_yaml
    render "car_simulate.html.erb"
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    car = @car
    session[:car] = car.to_yaml
    render "car_simulate.html.erb"
  end

  def lights
    @car = YAML.load(session[:car])
    @car.light_switch
    car = @car
    session[:car] = car.to_yaml
    render "car_simulate.html.erb"
  end

  def parking_brake_switch
    @car = YAML.load(session[:car])
    if params[:contact].nil?
      # render "car_simulate.html.erb"
    elsif params[:contact] == @car.parking_brake
      # render "car_simulate.html.erb"
    else
      @car.parking_brake_switch
      car = @car
      session[:car] = car.to_yaml
      # render "car_simulate.html.erb"
    end
    render "car_simulate.html.erb"
  end

  def home
    render "car_register.html.erb"
  end

end
