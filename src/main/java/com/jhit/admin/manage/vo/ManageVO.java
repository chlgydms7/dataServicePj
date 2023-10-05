package com.jhit.admin.manage.vo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Data
public class ManageVO{
	
	private int rn; //일련번호
	private String registerId; //등록자ID
	private String regDt; //등록일시
	private String updusrId; //수정자ID
	private String updtDt; //수정일시
	private String groupDataNm; //국가중점메타데이터
	
	private String regDe; //등록일자
	private String ltCreatDe; //최근생성일자
	
	private String searchCondition; //검색조건
	private String searchKeyword; //검색어
	
	//코드정보
	private String codeId; //코드ID
	private String codeSn; //코드번호
	private String codeCn; //코드명
	
	//오픈마켓
	private String dataId; //데이터 ID
	private String seOrganNm; //구분 조직 명
	private String seOrganId; //구분 조직 ID
	private String dataNm; //데이터 명
	private String dataDcCn; //데이터 설명 내용
	private String dataTyCode; //데이터 유형코드
	private String rnewCycleCode; //갱신주기 코드
	private String lastRnewEraCode; //최종갱신시기코드
	private String constScopeCode; //구축범위코드
	private String dataCntmCode; //데이터좌표계코드
	private String dataFomCode; //데이터형식코드
	private String spainfLclasCode; //공간정보 대분류 코드
	private String spainfMlsfcCode; //공간정보 중분류 코드
	private String bassSpainfLclasCode; //기본공간정보 대분류 코드
	private String bassSpainfMlsfcCode; //기본공간정보 중분류 코드
	private String bassSpainfSclasCode; //기본공간정보 소분류 코드
	
	//국가중점데이터
	private String metdataId; //메타데이터ID
	private String seKwrd; //구분키워드
	private String prdctnMagtManageInsttCode; //생산주체 관리기관코드
	private String prdctnMagtManageDeptCode; //생산주체 관리부서코드
	private String prdctnMagtPrdctnInsttCode; //생산주체 생산기관코드
	private String prdctnMagtPrdctnDeptCode; //생산주체 생산부서코드
	private String prdctnMagtSysNm; //생산주체 시스템명
	private String prdctnMagtRnewCycle; //생산주체 갱신주기
	private String spainfEllips; //공간정보 타원체
	private String spainfCntmCode; //공간정보 좌표계
	private String spainfPrj; //공간정보 투영법
	private String spainfObjectfomCode; //공간정보 객체형태코드
	private String aggrMagtManageInsttCode; //취합주체 관리기관코드
	private String aggrMagtManageDeptCode; //취합주체 관리부서코드
	private String aggrMagtColctCycleCode; //취합주체 수집주기코드
	private String aggrMagtSysNm; //취합주체 시스템명
	private String aggrMagtColctMthCode; //취합주체 수집방법
	private String constGeoScopeCode; //구축 지리적 범위코드
	private String constTimeScope; //구축 시간적 범위
	private String othbcOpnSys; //공개 개방시스템
	private String othbcDistbDataCntmCode; //공개 배포 데이터 좌표계코드
	private String othbcDistbDataFomCode; //공개 배포 데이터 형식코드
	private String distbPcPolicy; //유통 가격정책
	private String distbSellMth; //유통 판매방법
	private String rm; //비고
	
	//건축데이터개방
	private String dataSe; //데이터 구분
	private String allRnewCycleCode; //전체 갱신주기
	private String lastDataDe; //최종 데이터 일자
	private String changeDataAt; //변동데이터 여부
	
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public String getRegisterId() {
		return registerId;
	}
	public void setRegisterId(String registerId) {
		this.registerId = registerId;
	}
	public String getRegDt() {
		return regDt;
	}
	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}
	public String getUpdusrId() {
		return updusrId;
	}
	public void setUpdusrId(String updusrId) {
		this.updusrId = updusrId;
	}
	public String getUpdtDt() {
		return updtDt;
	}
	public void setUpdtDt(String updtDt) {
		this.updtDt = updtDt;
	}
	public String getDataId() {
		return dataId;
	}
	public void setDataId(String dataId) {
		this.dataId = dataId;
	}
	public String getSeOrganNm() {
		return seOrganNm;
	}
	public void setSeOrganNm(String seOrganNm) {
		this.seOrganNm = seOrganNm;
	}
	public String getSeOrganId() {
		return seOrganId;
	}
	public void setSeOrganId(String seOrganId) {
		this.seOrganId = seOrganId;
	}
	public String getDataNm() {
		return dataNm;
	}
	public void setDataNm(String dataNm) {
		this.dataNm = dataNm;
	}
	public String getDataDcCn() {
		return dataDcCn;
	}
	public void setDataDcCn(String dataDcCn) {
		this.dataDcCn = dataDcCn;
	}
	public String getDataTyCode() {
		return dataTyCode;
	}
	public void setDataTyCode(String dataTyCode) {
		this.dataTyCode = dataTyCode;
	}
	public String getRnewCycleCode() {
		return rnewCycleCode;
	}
	public void setRnewCycleCode(String rnewCycleCode) {
		this.rnewCycleCode = rnewCycleCode;
	}
	public String getLastRnewEraCode() {
		return lastRnewEraCode;
	}
	public void setLastRnewEraCode(String lastRnewEraCode) {
		this.lastRnewEraCode = lastRnewEraCode;
	}
	public String getConstScopeCode() {
		return constScopeCode;
	}
	public void setConstScopeCode(String constScopeCode) {
		this.constScopeCode = constScopeCode;
	}
	public String getDataCntmCode() {
		return dataCntmCode;
	}
	public void setDataCntmCode(String dataCntmCode) {
		this.dataCntmCode = dataCntmCode;
	}
	public String getDataFomCode() {
		return dataFomCode;
	}
	public void setDataFomCode(String dataFomCode) {
		this.dataFomCode = dataFomCode;
	}
	public String getSpainfLclasCode() {
		return spainfLclasCode;
	}
	public void setSpainfLclasCode(String spainfLclasCode) {
		this.spainfLclasCode = spainfLclasCode;
	}
	public String getSpainfMlsfcCode() {
		return spainfMlsfcCode;
	}
	public void setSpainfMlsfcCode(String spainfMlsfcCode) {
		this.spainfMlsfcCode = spainfMlsfcCode;
	}
	public String getBassSpainfLclasCode() {
		return bassSpainfLclasCode;
	}
	public void setBassSpainfLclasCode(String bassSpainfLclasCode) {
		this.bassSpainfLclasCode = bassSpainfLclasCode;
	}
	public String getBassSpainfMlsfcCode() {
		return bassSpainfMlsfcCode;
	}
	public void setBassSpainfMlsfcCode(String bassSpainfMlsfcCode) {
		this.bassSpainfMlsfcCode = bassSpainfMlsfcCode;
	}
	public String getBassSpainfSclasCode() {
		return bassSpainfSclasCode;
	}
	public void setBassSpainfSclasCode(String bassSpainfSclasCode) {
		this.bassSpainfSclasCode = bassSpainfSclasCode;
	}
	public String getMetdataId() {
		return metdataId;
	}
	public void setMetdataId(String metdataId) {
		this.metdataId = metdataId;
	}
	public String getSeKwrd() {
		return seKwrd;
	}
	public void setSeKwrd(String seKwrd) {
		this.seKwrd = seKwrd;
	}
	public String getPrdctnMagtManageInsttCode() {
		return prdctnMagtManageInsttCode;
	}
	public void setPrdctnMagtManageInsttCode(String prdctnMagtManageInsttCode) {
		this.prdctnMagtManageInsttCode = prdctnMagtManageInsttCode;
	}
	public String getPrdctnMagtManageDeptCode() {
		return prdctnMagtManageDeptCode;
	}
	public void setPrdctnMagtManageDeptCode(String prdctnMagtManageDeptCode) {
		this.prdctnMagtManageDeptCode = prdctnMagtManageDeptCode;
	}
	public String getPrdctnMagtPrdctnInsttCode() {
		return prdctnMagtPrdctnInsttCode;
	}
	public void setPrdctnMagtPrdctnInsttCode(String prdctnMagtPrdctnInsttCode) {
		this.prdctnMagtPrdctnInsttCode = prdctnMagtPrdctnInsttCode;
	}
	public String getPrdctnMagtPrdctnDeptCode() {
		return prdctnMagtPrdctnDeptCode;
	}
	public void setPrdctnMagtPrdctnDeptCode(String prdctnMagtPrdctnDeptCode) {
		this.prdctnMagtPrdctnDeptCode = prdctnMagtPrdctnDeptCode;
	}
	public String getPrdctnMagtSysNm() {
		return prdctnMagtSysNm;
	}
	public void setPrdctnMagtSysNm(String prdctnMagtSysNm) {
		this.prdctnMagtSysNm = prdctnMagtSysNm;
	}
	public String getPrdctnMagtRnewCycle() {
		return prdctnMagtRnewCycle;
	}
	public void setPrdctnMagtRnewCycle(String prdctnMagtRnewCycle) {
		this.prdctnMagtRnewCycle = prdctnMagtRnewCycle;
	}
	public String getSpainfEllips() {
		return spainfEllips;
	}
	public void setSpainfEllips(String spainfEllips) {
		this.spainfEllips = spainfEllips;
	}
	public String getSpainfPrj() {
		return spainfPrj;
	}
	public void setSpainfPrj(String spainfPrj) {
		this.spainfPrj = spainfPrj;
	}
	public String getSpainfObjectfomCode() {
		return spainfObjectfomCode;
	}
	public void setSpainfObjectfomCode(String spainfObjectfomCode) {
		this.spainfObjectfomCode = spainfObjectfomCode;
	}
	public String getAggrMagtManageInsttCode() {
		return aggrMagtManageInsttCode;
	}
	public void setAggrMagtManageInsttCode(String aggrMagtManageInsttCode) {
		this.aggrMagtManageInsttCode = aggrMagtManageInsttCode;
	}
	public String getAggrMagtManageDeptCode() {
		return aggrMagtManageDeptCode;
	}
	public void setAggrMagtManageDeptCode(String aggrMagtManageDeptCode) {
		this.aggrMagtManageDeptCode = aggrMagtManageDeptCode;
	}
	public String getAggrMagtColctCycleCode() {
		return aggrMagtColctCycleCode;
	}
	public void setAggrMagtColctCycleCode(String aggrMagtColctCycleCode) {
		this.aggrMagtColctCycleCode = aggrMagtColctCycleCode;
	}
	public String getAggrMagtSysNm() {
		return aggrMagtSysNm;
	}
	public void setAggrMagtSysNm(String aggrMagtSysNm) {
		this.aggrMagtSysNm = aggrMagtSysNm;
	}
	public String getAggrMagtColctMthCode() {
		return aggrMagtColctMthCode;
	}
	public void setAggrMagtColctMthCode(String aggrMagtColctMthCode) {
		this.aggrMagtColctMthCode = aggrMagtColctMthCode;
	}
	public String getConstGeoScopeCode() {
		return constGeoScopeCode;
	}
	public void setConstGeoScopeCode(String constGeoScopeCode) {
		this.constGeoScopeCode = constGeoScopeCode;
	}
	public String getConstTimeScope() {
		return constTimeScope;
	}
	public void setConstTimeScope(String constTimeScope) {
		this.constTimeScope = constTimeScope;
	}
	public String getOthbcOpnSys() {
		return othbcOpnSys;
	}
	public void setOthbcOpnSys(String othbcOpnSys) {
		this.othbcOpnSys = othbcOpnSys;
	}
	public String getOthbcDistbDataCntmCode() {
		return othbcDistbDataCntmCode;
	}
	public void setOthbcDistbDataCntmCode(String othbcDistbDataCntmCode) {
		this.othbcDistbDataCntmCode = othbcDistbDataCntmCode;
	}
	public String getOthbcDistbDataFomCode() {
		return othbcDistbDataFomCode;
	}
	public void setOthbcDistbDataFomCode(String othbcDistbDataFomCode) {
		this.othbcDistbDataFomCode = othbcDistbDataFomCode;
	}
	public String getDistbPcPolicy() {
		return distbPcPolicy;
	}
	public void setDistbPcPolicy(String distbPcPolicy) {
		this.distbPcPolicy = distbPcPolicy;
	}
	public String getDistbSellMth() {
		return distbSellMth;
	}
	public void setDistbSellMth(String distbSellMth) {
		this.distbSellMth = distbSellMth;
	}
	public String getRm() {
		return rm;
	}
	public void setRm(String rm) {
		this.rm = rm;
	}
	public String getDataSe() {
		return dataSe;
	}
	public void setDataSe(String dataSe) {
		this.dataSe = dataSe;
	}
	public String getAllRnewCycleCode() {
		return allRnewCycleCode;
	}
	public void setAllRnewCycleCode(String allRnewCycleCode) {
		this.allRnewCycleCode = allRnewCycleCode;
	}
	public String getLastDataDe() {
		return lastDataDe;
	}
	public void setLastDataDe(String lastDataDe) {
		this.lastDataDe = lastDataDe;
	}
	public String getChangeDataAt() {
		return changeDataAt;
	}
	public void setChangeDataAt(String changeDataAt) {
		this.changeDataAt = changeDataAt;
	}
	public String getSpainfCntmCode() {
		return spainfCntmCode;
	}
	public void setSpainfCntmCode(String spainfCntmCode) {
		this.spainfCntmCode = spainfCntmCode;
	}
	public String getGroupDataNm() {
		return groupDataNm;
	}
	public void setGroupDataNm(String groupDataNm) {
		this.groupDataNm = groupDataNm;
	}
	public String getRegDe() {
		return regDe;
	}
	public void setRegDe(String regDe) {
		this.regDe = regDe;
	}
	public String getLtCreatDe() {
		return ltCreatDe;
	}
	public void setLtCreatDe(String ltCreatDe) {
		this.ltCreatDe = ltCreatDe;
	}
	public String getCodeId() {
		return codeId;
	}
	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}
	public String getCodeSn() {
		return codeSn;
	}
	public void setCodeSn(String codeSn) {
		this.codeSn = codeSn;
	}
	public String getCodeCn() {
		return codeCn;
	}
	public void setCodeCn(String codeCn) {
		this.codeCn = codeCn;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

}