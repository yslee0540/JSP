package multi;

public class AirportVO {
	private String code;
	private String name;
	private String latitude;
	private String longitude;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return "AirportVO [code=" + code + ", name=" + name + ", latitude=" + latitude + ", longitude=" + longitude
				+ "]";
	}

}
