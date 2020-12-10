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
        Appointment.all.select {|appointment| appointment.patient == self}
      end

    def new_appointment(date, patient)
        Appointment.new(date, self, patient)
    end

    def patients
        Appointment.all.select{ |patient| patient.doctor == self }
    end



    

end

