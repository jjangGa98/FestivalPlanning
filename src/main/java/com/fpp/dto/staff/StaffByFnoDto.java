package com.fpp.dto.staff;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor

@Data
public class StaffByFnoDto {
	String FestivalName;
	String commissioningAgency;
	String addressEvent;
	String place;
	String startDate;
	String endDate;
	int recruitmentTO;
	String recruitmentField;
	String preferentialTreatment;
	String applicationPeriod;
}
