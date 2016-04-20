/// Created from: C:\InterSystems\root.xsd
Class staff.model.Position Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Position";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="PositionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.PositionD</DataLocation>
<DefaultData>PositionDefaultData</DefaultData>
<IdLocation>^staff.model.PositionD</IdLocation>
<IndexLocation>^staff.model.PositionI</IndexLocation>
<StreamLocation>^staff.model.PositionS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
