package com.fairagora.verifik8.v8web.data.domain.sys;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "sys_password_reset_tokens")
public class SYSPasswordResetToken {

    private static final int EXPIRATION = 60 * 24;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    protected Long id;

    // @Column(name = "CODE", unique = true, length = 2, nullable = false)
    // protected String code;

    // @Column(name = "NAME", length = 64, nullable = false)
    // protected String name;

    @Column(name = "TOKEN")
    private String token;

    @OneToOne(targetEntity = SYSUser.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "SYS_USER_ID")
    private SYSUser sysUser;

    @Column(name = "EXPIRY_DATE")
    private Date expiryDate;

    public SYSPasswordResetToken() {
        super();
    }

    public SYSPasswordResetToken(final String token) {
        super();

        this.token = token;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
    }

    public SYSPasswordResetToken(final String token, final SYSUser sysUser) {
        super();

        this.token = token;
        this.sysUser = sysUser;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
    }

    //
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

//    public String getCode() {
//        return code;
//    }

//    public void setCode(String code) {
//        this.code = code;
//    }

//    @Override
//    public String getName() {
//        return name;
//    }

//    public void setName(String name) {
//        this.name = name;
//    }

    public String getToken() {
        return token;
    }

    public void setToken(final String token) {
        this.token = token;
    }

    public SYSUser getSysUser() {
        return sysUser;
    }

    public void setSysUser(final SYSUser sysUser) {
        this.sysUser = sysUser;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(final Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    private Date calculateExpiryDate(final int expiryTimeInMinutes) {
        final Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(new Date().getTime());
        cal.add(Calendar.MINUTE, expiryTimeInMinutes);
        return new Date(cal.getTime().getTime());
    }

    public void updateToken(final String token) {
        this.token = token;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
    }

    //

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((expiryDate == null) ? 0 : expiryDate.hashCode());
        result = prime * result + ((token == null) ? 0 : token.hashCode());
        result = prime * result + ((sysUser == null) ? 0 : sysUser.hashCode());
        return result;
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final SYSPasswordResetToken other = (SYSPasswordResetToken) obj;
        if (expiryDate == null) {
            if (other.expiryDate != null) {
                return false;
            }
        } else if (!expiryDate.equals(other.expiryDate)) {
            return false;
        }
        if (token == null) {
            if (other.token != null) {
                return false;
            }
        } else if (!token.equals(other.token)) {
            return false;
        }
        if (sysUser == null) {
            if (other.sysUser != null) {
                return false;
            }
        } else if (!sysUser.equals(other.sysUser)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Token [String=").append(token).append("]").append("[Expires").append(expiryDate).append("]");
        return builder.toString();
    }

}
