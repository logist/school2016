/// Created from: C:\InterSystems\root.xsd
Class staff.model.MedicalCondition Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "MedicalCondition";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="MedicalConditionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.MedicalConditionD</DataLocation>
<DefaultData>MedicalConditionDefaultData</DefaultData>
<IdLocation>^staff.model.MedicalConditionD</IdLocation>
<IndexLocation>^staff.model.MedicalConditionI</IndexLocation>
<StreamLocation>^staff.model.MedicalConditionS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
