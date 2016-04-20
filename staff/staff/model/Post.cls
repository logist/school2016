/// Created from: C:\InterSystems\root.xsd
Class staff.model.Post Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Post";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="PostDefaultData">
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
<DataLocation>^staff.model.PostD</DataLocation>
<DefaultData>PostDefaultData</DefaultData>
<IdLocation>^staff.model.PostD</IdLocation>
<IndexLocation>^staff.model.PostI</IndexLocation>
<StreamLocation>^staff.model.PostS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
