require'pry'
class Patient
    @@all = []

    attr_accessor :name, :date, :doctor, :appointment

    def initialize(name)
        @name = name
        @date = date
        @doctor= doctor
        @appointment = appointment
        save
        @appointments = []
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)

        Appointment.new(date, self, doctor)
    #     appointment = self
    #    Appointment.new(date, self, doctor)
    # binding.pry
    end

    def appointments 
        Appointment.all.select {|appointment| appointment.patient == self}
    end
    # doctor_who = Doctor.new('The Doctor')
    #   hevydevy = Patient.new('Devin Townsend')
    #   appointment = hevydevy.new_appointment('Friday, January 32nd', doctor_who)

    #   expect(hevydevy.appointments).to include(appointment)
    #   expect(appointment.patient).to eq(hevydevy)

    # def doctors
    #     Appointment.all.collect {|appointment| appointment.doctor}
    # end

    def doctors
         Appointment.all.collect do |appointment|
           appointment.doctor
         end
     end

    





end

