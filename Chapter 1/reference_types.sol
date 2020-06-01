pragma solidity ^0.5.1;
contract EmrPatients{
  // This is the Constructor and it gets called ONCE only when contract is first deployed
  constructor() public{
    // Do Nothing For now
  }
  // Define mapping to store key-value pairs
  mapping(string=>medicalRecord)
  patientRecordMapping;

  // Organize medical records using struct
  struct medicalRecord
  {
    string report_name;
    address owner;
  }
  // Save medical record
  function saveMedicalReport(string memory mr_number, string memory report_name, address p_addr) public payable {
    patientRecordMapping[mr_number] = medicalRecord(report_name, p_addr);
  }
  // Return medical record from mr_number
  function getReportByMedicalRecordNumber(string memory mr_number) public view returns (string memory, address) {
    return (patientRecordMapping[mr_number].report_name, patientRecordMapping[mr_number].owner);
  }
}
