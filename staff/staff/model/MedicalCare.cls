/// Created from: C:\InterSystems\root.xsd
Class staff.model.MedicalCare Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "MedicalCare";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="MedicalCareDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.MedicalCareD</DataLocation>
<DefaultData>MedicalCareDefaultData</DefaultData>
<IdLocation>^staff.model.MedicalCareD</IdLocation>
<IndexLocation>^staff.model.MedicalCareI</IndexLocation>
<StreamLocation>^staff.model.MedicalCareS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
