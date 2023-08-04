package dto;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class UserDTO {

    private String pid, did, aadhar, username, password, gender, bgroup, address, contact, age, units, units_donated, units_req, units_given, function;

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getUnits_given() {
        return units_given;
    }

    public void setUnits_given(String units_given) {
        this.units_given = units_given;
    }

    public String getUnits_req() {
        return units_req;
    }

    public void setUnits_req(String units_req) {
        this.units_req = units_req;
    }

    public String getUnits_donated() {
        return units_donated;
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
    }

    public void setUnits_donated(String units_donated) {
        this.units_donated = units_donated;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getUnits() {
        return units;
    }

    public void setUnits(String units) {
        this.units = units;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
