package com.nt.service;

import java.util.List;

import com.nt.entity.DoctorEntity;
import com.nt.vo.DoctorVO;

public interface IDoctorMgmtService {
	public String insertAllData(DoctorVO vo);
	public List<DoctorVO> fetchAllData();
	public DoctorEntity getDoctorById(int id);
	public String updateDoctor(DoctorVO vo);
	public String deleteDoctorById(Integer id);
}
