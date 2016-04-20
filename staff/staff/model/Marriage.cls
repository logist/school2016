/// Created from: C:\InterSystems\root.xsd
Class staff.model.Marriage Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Marriage";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="MarriageDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.MarriageD</DataLocation>
<DefaultData>MarriageDefaultData</DefaultData>
<IdLocation>^staff.model.MarriageD</IdLocation>
<IndexLocation>^staff.model.MarriageI</IndexLocation>
<StreamLocation>^staff.model.MarriageS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
