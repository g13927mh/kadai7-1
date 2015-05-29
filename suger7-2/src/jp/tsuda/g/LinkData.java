package jp.tsuda.g;
 
import java.net.URL;
import java.util.Date;
 
import javax.jdo.annotations.*;
 
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class LinkData {
    @PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Long id;
     
    @Persistent
    private String name;
    private long value;
     
 
    public LinkData(String name,String value) {
        super();
        this.name = name;
        this.value = Long.parseLong(value);
        
    }
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }
    
 
    public Long getValue() {
        return value;
    }
 
    public void setValue(Long value) {
        this.value = value;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
}