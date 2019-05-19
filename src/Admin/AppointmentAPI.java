package Admin;

import java.util.List;

public interface AppointmentAPI {
	
	public abstract void updateStatusConfirmed(String time, String hospital);
	
	public abstract int addAppointment(Appointment a);
	
	public abstract List<Appointment> getAvailAppointments(String doctor);
	
	public abstract void updateStatusAvilable(String time, String hospital);
	
	public abstract List<Appointment> getConfAppointments(String doctor);
	
	public abstract void delete(String hospital, String time);
	
}
