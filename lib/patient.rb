class Patient
    @@all = []

    attr_accessor :name, :date, :doctor, :appointment

    def initialize(name)
        @name = name
        @date = date
        @doctor= doctor
        @appointment = appointment
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, doctor, self)
    end

    def doctors
        Appointments.all.collect {|appointment| appointment.doctor}
    end





end

