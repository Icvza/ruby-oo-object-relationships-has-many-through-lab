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
        # binding.pry
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
    
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.collect {|appointment| appointment.patient}
    end



    

end

