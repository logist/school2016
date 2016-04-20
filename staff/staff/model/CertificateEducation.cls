/// Created from: C:\InterSystems\root.xsd
Class staff.model.CertificateEducation Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "CertificateEducation";

Parameter XMLSEQUENCE = 1;

Property CertificateNumber As %String(MAXLEN = "", XMLNAME = "CertificateNumber");

Property CertificateSerie As %String(MAXLEN = "", XMLNAME = "CertificateSerie");

Property Institution As staff.model.EducationInstitution(XMLNAME = "Institution");

Property IssueDate As %TimeStamp(XMLNAME = "IssueDate");

Property Speciality As staff.model.CertificateSpeciality(XMLNAME = "Speciality");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = CertificateEducationList ];

Storage Default
{
<Data name="CertificateEducationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>CertificateNumber</Value>
</Value>
<Value name="3">
<Value>CertificateSerie</Value>
</Value>
<Value name="4">
<Value>Institution</Value>
</Value>
<Value name="5">
<Value>IssueDate</Value>
</Value>
<Value name="6">
<Value>Speciality</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("CertificateEducationList")</DataLocation>
<DefaultData>CertificateEducationDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("CertificateEducationList")</IdLocation>
<IndexLocation>^staff.model.Certificate270EI</IndexLocation>
<StreamLocation>^staff.model.Certificate270ES</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
