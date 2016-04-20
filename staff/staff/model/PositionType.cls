/// Created from: C:\InterSystems\root.xsd
Class staff.model.PositionType Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PositionType";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="PositionTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.PositionTypeD</DataLocation>
<DefaultData>PositionTypeDefaultData</DefaultData>
<IdLocation>^staff.model.PositionTypeD</IdLocation>
<IndexLocation>^staff.model.PositionTypeI</IndexLocation>
<StreamLocation>^staff.model.PositionTypeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
