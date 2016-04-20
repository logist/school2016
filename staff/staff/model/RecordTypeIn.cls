/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeIn Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeIn";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeInDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.RecordTypeInD</DataLocation>
<DefaultData>RecordTypeInDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeInD</IdLocation>
<IndexLocation>^staff.model.RecordTypeInI</IndexLocation>
<StreamLocation>^staff.model.RecordTypeInS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
