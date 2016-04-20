/// Created from: C:\InterSystems\root.xsd
Class staff.model.EducationInstitution Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "EducationInstitution";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="EducationInstitutionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Parent</Value>
</Value>
</Data>
<DataLocation>^staff.model.EducationIn2E00D</DataLocation>
<DefaultData>EducationInstitutionDefaultData</DefaultData>
<IdLocation>^staff.model.EducationIn2E00D</IdLocation>
<IndexLocation>^staff.model.EducationIn2E00I</IndexLocation>
<StreamLocation>^staff.model.EducationIn2E00S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
