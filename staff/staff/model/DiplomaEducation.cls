/// Created from: C:\InterSystems\root.xsd
Class staff.model.DiplomaEducation Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "DiplomaEducation";

Parameter XMLSEQUENCE = 1;

Property Aim As %Boolean(XMLNAME = "Aim");

Property DiplomaNumber As %String(MAXLEN = "", XMLNAME = "DiplomaNumber");

Property DiplomaSerie As %String(MAXLEN = "", XMLNAME = "DiplomaSerie");

Property Institution As staff.model.EducationInstitution(XMLNAME = "Institution");

Property Speciality As staff.model.Speciality(XMLNAME = "Speciality");

Property TerritoryRf As staff.model.Territory(XMLNAME = "TerritoryRf");

Property Type As staff.model.EducationType(XMLNAME = "Type");

Property YearGraduation As %xsd.int(XMLNAME = "YearGraduation");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = DiplomaEducationList ];

Storage Default
{
<Data name="DiplomaEducationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Aim</Value>
</Value>
<Value name="3">
<Value>DiplomaNumber</Value>
</Value>
<Value name="4">
<Value>DiplomaSerie</Value>
</Value>
<Value name="5">
<Value>Institution</Value>
</Value>
<Value name="6">
<Value>Speciality</Value>
</Value>
<Value name="7">
<Value>TerritoryRf</Value>
</Value>
<Value name="8">
<Value>Type</Value>
</Value>
<Value name="9">
<Value>YearGraduation</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("DiplomaEducationList")</DataLocation>
<DefaultData>DiplomaEducationDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("DiplomaEducationList")</IdLocation>
<IndexLocation>^staff.model.DiplomaEducationI</IndexLocation>
<StreamLocation>^staff.model.DiplomaEducationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
