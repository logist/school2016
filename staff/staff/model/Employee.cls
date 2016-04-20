/// Created from: C:\InterSystems\root.xsd
Class staff.model.Employee Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Employee";

Parameter XMLSEQUENCE = 1;

Index SurnameIndex On General.Surname;

Relationship AddressList As staff.model.Address(XMLITEMNAME = "Address", XMLNAME = "AddressList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship AwardList As staff.model.Award(XMLITEMNAME = "Award", XMLNAME = "AwardList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship CardRecordList As staff.model.CardRecord(XMLITEMNAME = "CardRecord", XMLNAME = "CardRecordList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship CertificateEducationList As staff.model.CertificateEducation(XMLITEMNAME = "CertificateEducation", XMLNAME = "CertificateEducationList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship DiplomaEducationList As staff.model.DiplomaEducation(XMLITEMNAME = "DiplomaEducation", XMLNAME = "DiplomaEducationList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Property Document As staff.model.DocumentData(XMLNAME = "Document");

Property Extended As staff.model.ExtendedData(XMLNAME = "Extended");

Property General As staff.model.GeneralData(XMLNAME = "General");

Property Organization As staff.model.OrganizationInfo(XMLNAME = "Organization");

Relationship PostGraduateEducationList As staff.model.PostGraduateEducation(XMLITEMNAME = "PostGraduateEducation", XMLNAME = "PostGraduateEducationList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship QualificationList As staff.model.Qualification(XMLITEMNAME = "Qualification", XMLNAME = "QualificationList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Property Region As staff.model.Territory(XMLNAME = "Region");

Relationship RetrainmentList As staff.model.Retrainment(XMLITEMNAME = "Retrainment", XMLNAME = "RetrainmentList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship SkillImprovementList As staff.model.SkillImprovement(XMLITEMNAME = "SkillImprovement", XMLNAME = "SkillImprovementList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship SkipPaymentList As staff.model.SkipPayment(XMLITEMNAME = "SkipPayment", XMLNAME = "SkipPaymentList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship TimeFactList As staff.model.TimeFact(XMLITEMNAME = "TimeFact", XMLNAME = "TimeFactList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Relationship VocationList As staff.model.Vocation(XMLITEMNAME = "Vocation", XMLNAME = "VocationList", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = Employee ];

Storage Default
{
<Data name="EmployeeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Document</Value>
</Value>
<Value name="3">
<Value>Extended</Value>
</Value>
<Value name="4">
<Value>General</Value>
</Value>
<Value name="5">
<Value>Organization</Value>
</Value>
<Value name="6">
<Value>Region</Value>
</Value>
</Data>
<DataLocation>^staff.model.EmployeeD</DataLocation>
<DefaultData>EmployeeDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeD</IdLocation>
<IndexLocation>^staff.model.EmployeeI</IndexLocation>
<StreamLocation>^staff.model.EmployeeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
