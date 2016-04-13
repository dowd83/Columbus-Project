package business;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Company implements Serializable {
    
    Long companyId;
    String companyName;
    String companyAddress;
    Double rating;
    int positionId;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getCompanyId() {
        return companyId;
    }
    
    public void setCompanyId(Long companyId){
        this.companyId = companyId;
    }
    
    public String getCompanyName(){
        return companyName;
    }
    
    public void setCompanyName(String companyName){
        this.companyName = companyName;
    }
    
    public String getCompanyAddress(){
        return companyAddress;
    }
    
    public void setCompanyAddress(){
        this.companyAddress = companyAddress;
    }
    
    public Double getRating(){
        return rating;
    }
    
    public void setRating(Double rating){
        this.rating = rating;
    }
    
}
