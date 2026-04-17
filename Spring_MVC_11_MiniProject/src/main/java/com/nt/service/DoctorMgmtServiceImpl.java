package com.nt.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.entity.DoctorEntity;
import com.nt.repositoty.IDoctorRepo;
import com.nt.vo.DoctorVO;

@Service 
public class DoctorMgmtServiceImpl implements IDoctorMgmtService {

    @Autowired
    private IDoctorRepo repo;

    @Override
    public String insertAllData(DoctorVO vo) {
        DoctorEntity entity = new DoctorEntity();
        // copy data first
        BeanUtils.copyProperties(vo, entity);
        // then set extra fields
        entity.setCreateUser(System.getProperty("user.name"));
        int id = repo.save(entity).getId();
        return "Doctor details saved with id = " + id;
    }

	@Override
	public List<DoctorVO> fetchAllData() {
		List<DoctorEntity> entity = repo.findAll();
		List<DoctorVO> list = new ArrayList<>();
		entity.forEach(e->{
			DoctorVO vo = new DoctorVO();
			BeanUtils.copyProperties(e, vo);
			Double fees = e.getFees();
			if(fees<500) {
				vo.setDiscount(0.0);
			}
			else vo.setDiscount(10.0);
			list.add(vo);
			vo.setNetPrice(fees+(fees*vo.getDiscount()/100));
			
		});
		return list;
	}

	@Override
	public DoctorEntity getDoctorById(int id) {
		DoctorEntity entity = repo.findById(id).get();
		return entity;
	}

	@Override
	public String updateDoctor(DoctorVO vo) {
		DoctorEntity entity = repo.findById(vo.getId())
		        .orElseThrow(() -> new RuntimeException("Doctor not found"));
		BeanUtils.copyProperties(vo, entity);
		entity.setUpdateUser("kamal");
		repo.save(entity);
		return vo.getId()+" Doctor detail updated success";
	}

	@Override
	public String deleteDoctorById(Integer id) {
		repo.deleteById(id);
		return id+" Doctor id deleted";
	}
}