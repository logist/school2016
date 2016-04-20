/// Created from: C:\InterSystems\root.xsd
Class staff.model.AcademicDegree Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "AcademicDegree";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="AcademicDegreeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.AcademicDegreeD</DataLocation>
<DefaultData>AcademicDegreeDefaultData</DefaultData>
<IdLocation>^staff.model.AcademicDegreeD</IdLocation>
<IndexLocation>^staff.model.AcademicDegreeI</IndexLocation>
<StreamLocation>^staff.model.AcademicDegreeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
