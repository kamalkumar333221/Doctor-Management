package com.nt.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class DoctorVO {
	private Integer id;
	@NonNull
    private String name;
	@NonNull
    private String addr="odisha";
	@NonNull
    private Double fees;
    private Double discount;
    private Double netPrice;
}