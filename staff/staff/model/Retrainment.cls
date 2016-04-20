/// Created from: C:\InterSystems\root.xsd
Class staff.model.Retrainment Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Retrainment";

Parameter XMLSEQUENCE = 1;

Property DiplomaNumber As %String(MAXLEN = "", XMLNAME = "DiplomaNumber");

Property DiplomaSerie As %String(MAXLEN = "", XMLNAME = "DiplomaSerie");

Property Hours As %xsd.int(XMLNAME = "Hours");

Property Institution As staff.model.EducationInstitution(XMLNAME = "Institution");

Property Speciality As staff.model.CertificateSpeciality(XMLNAME = "Speciality");

Property YearPassing As %xsd.int(XMLNAME = "YearPassing");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = RetrainmentList ];

Storage Default
{
<Data name="RetrainmentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DiplomaNumber</Value>
</Value>
<Value name="3">
<Value>DiplomaSerie</Value>
</Value>
<Value name="4">
<Value>Hours</Value>
</Value>
<Value name="5">
<Value>Institution</Value>
</Value>
<Value name="6">
<Value>Speciality</Value>
</Value>
<Value name="7">
<Value>YearPassing</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("RetrainmentList")</DataLocation>
<DefaultData>RetrainmentDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("RetrainmentList")</IdLocation>
<IndexLocation>^staff.model.RetrainmentI</IndexLocation>
<StreamLocation>^staff.model.RetrainmentS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
