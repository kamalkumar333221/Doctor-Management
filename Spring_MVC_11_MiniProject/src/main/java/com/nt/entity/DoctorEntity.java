package com.nt.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@Entity
@Data
@Table(name="doctor")
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@SQLDelete(sql = "UPDATE doctor_info SET active = 'inactive' WHERE id = ? and update_count = ?")
@SQLRestriction(value = "active <> 'inactive'")
public class DoctorEntity {
	@SequenceGenerator(name = "gen1", sequenceName = "doctor_seq", initialValue = 1, allocationSize = 1)
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	@Id
	private Integer id;
	@NonNull
	@Column(length=30)
	private String name;
	@NonNull
	@Column(length=30)
	private String addr;
	@NonNull
	private Double fees;
	
	// meta data
	@Column(length=30, insertable = true, updatable = false)
	private String createUser;
	@Column(length=30, insertable = false, updatable = true)
	private String updateUser;
	@CreationTimestamp
	@Column(name="insert_time", updatable = false, insertable = true)
	private LocalDateTime insertTime;

	@Column(name="update_time", insertable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateTime;
	private String active = "active";
	@Version
	@Column(name = "update_count")
	private int updateCount;
	
}
