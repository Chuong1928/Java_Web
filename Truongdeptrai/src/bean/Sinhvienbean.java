package bean;

public class Sinhvienbean {
	private String ID;
	private String FirstName;
	private String LastName;
	private String DateOfBirth;
	private String PlaceOfBirth;
	private String Gender;	
	private String img;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getPlaceOfBirth() {
		return PlaceOfBirth;
	}
	public void setPlaceOfBirth(String placeOfBirth) {
		PlaceOfBirth = placeOfBirth;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Sinhvienbean(String iD, String firstName, String lastName, String dateOfBirth, String placeOfBirth,
			String gender, String img) {
		super();
		ID = iD;
		FirstName = firstName;
		LastName = lastName;
		DateOfBirth = dateOfBirth;
		PlaceOfBirth = placeOfBirth;
		Gender = gender;
		this.img = img;
	}
	public Sinhvienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
