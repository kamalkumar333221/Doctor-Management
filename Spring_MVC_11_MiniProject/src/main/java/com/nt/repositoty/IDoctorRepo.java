package com.nt.repositoty;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nt.entity.DoctorEntity;

public interface IDoctorRepo extends JpaRepository<DoctorEntity, Integer> {

}
