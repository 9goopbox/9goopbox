package vo.view;

import vo.PatientVO;
import vo.TreatmentVO;

public class ChartTreatmentVO {
	private PatientVO patientVO;
	private TreatmentVO treatmentVO;
	
	
	public PatientVO getPatientVO() {
		return patientVO;
	}
	public void setPatientVO(PatientVO patientVO) {
		this.patientVO = patientVO;
	}
	public TreatmentVO getTreatmentVO() {
		return treatmentVO;
	}
	public void setTreatmentVO(TreatmentVO treatmentVO) {
		this.treatmentVO = treatmentVO;
	}
	
	
}
