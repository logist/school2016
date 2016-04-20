/// Created from: C:\InterSystems\root.xsd
Class staff.model.Qualification Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Qualification";

Parameter XMLSEQUENCE = 1;

Property Category As staff.model.QualificationCategory(XMLNAME = "Category");

Property DateGet As %TimeStamp(XMLNAME = "DateGet");

Property Speciality As staff.model.CertificateSpeciality(XMLNAME = "Speciality");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = QualificationList ];

Storage Default
{
<Data name="QualificationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Category</Value>
</Value>
<Value name="3">
<Value>DateGet</Value>
</Value>
<Value name="4">
<Value>Speciality</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("QualificationList")</DataLocation>
<DefaultData>QualificationDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("QualificationList")</IdLocation>
<IndexLocation>^staff.model.QualificationI</IndexLocation>
<StreamLocation>^staff.model.QualificationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
