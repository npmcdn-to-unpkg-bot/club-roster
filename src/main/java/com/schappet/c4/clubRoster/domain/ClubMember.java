package com.schappet.c4.clubRoster.domain;

import java.util.Set;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Date;
import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Table;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.format.annotation.DateTimeFormat;
import org.hibernate.annotations.*;
import javax.persistence.CascadeType;
import javax.validation.constraints.NotNull;
import com.fasterxml.jackson.annotation.*;
import com.schappet.c4.*;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/** 
 * Generated by Protogen
 * @see <a href="https://github.com/ui-icts/protogen">https://github.com/ui-icts/protogen</a>
 * @since 04/21/2016 08:21:12 PM CDT
 */
@Entity( name = "com_schappet_c4_clubRoster_domain_clubMember" )
@Table( name = "club_member", schema = "clubroster" )
@JsonIgnoreProperties( { "hibernateLazyInitializer", "handler" } )
public class ClubMember { 

	private static final Log log = LogFactory.getLog( ClubMember.class );

    private Integer memberId;
    private String username;
    private String firstName;
    private String lastName;
    private String emailAddress;
    private String password;
    private String memberCode;
    private String memberSince;
    private Boolean isGuest;
    private Set<MemberGear> memberGears = new HashSet<MemberGear>(0);


    @javax.persistence.SequenceGenerator(  name="gen",  sequenceName="clubroster.seqnum",allocationSize=1)
    @Id
    @GeneratedValue( strategy=GenerationType.AUTO,generator="gen")
    @Column(name = "member_id", unique = true, nullable = false)
    public Integer getMemberId(){
        return memberId;
    }

    public void setMemberId(Integer memberId){
        this.memberId = memberId;
    }

    @Column(name = "username")
    public String getUsername(){
        return username;
    }

    public void setUsername(String username){
        this.username = username;
    }

    @Column(name = "first_name")
    public String getFirstName(){
        return firstName;
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;
    }

    @Column(name = "last_name")
    public String getLastName(){
        return lastName;
    }

    public void setLastName(String lastName){
        this.lastName = lastName;
    }

    @Column(name = "email_address")
    public String getEmailAddress(){
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress){
        this.emailAddress = emailAddress;
    }

    @Column(name = "password")
    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    @Column(name = "member_code")
    public String getMemberCode(){
        return memberCode;
    }

    public void setMemberCode(String memberCode){
        this.memberCode = memberCode;
    }

    @Column(name = "member_since")
    public String getMemberSince(){
        return memberSince;
    }

    public void setMemberSince(String memberSince){
        this.memberSince = memberSince;
    }

    @Column(name = "is_guest")
    public Boolean getIsGuest(){
        return isGuest;
    }

    public void setIsGuest(Boolean isGuest){
        this.isGuest = isGuest;
    }

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,   mappedBy = "clubMember", targetEntity=MemberGear.class, cascade=CascadeType.REMOVE)
    public Set<MemberGear> getMemberGears(){
        return memberGears;
    }

    public void setMemberGears(Set<MemberGear> memberGears){
        this.memberGears = memberGears;
    }


}
