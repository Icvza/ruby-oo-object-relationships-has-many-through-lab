require 'pry'
class Doctor
    @@all = []
    attr_accessor :name, :appointment, :patient

    def initialize(name)
        @name = name 
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, self, patient)
    end

    def patients
        Appointment.all.map{ |patient| patient.doctor == self }
    end



    

end

