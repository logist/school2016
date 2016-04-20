/// Created from: C:\InterSystems\root.xsd
Class staff.model.Kladr Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Kladr";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property FullType As %String(MAXLEN = "", XMLNAME = "FullType");

Property ID As %Integer(XMLNAME = "ID");

Property Level As %xsd.int(XMLNAME = "Level") [ SqlFieldName = _Level ];

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Property PostIndex As %String(MAXLEN = "", XMLNAME = "PostIndex");

Property ShortType As %String(MAXLEN = "", XMLNAME = "ShortType");

Storage Default
{
<Data name="KladrDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FullType</Value>
</Value>
<Value name="3">
<Value>Level</Value>
</Value>
<Value name="4">
<Value>Name</Value>
</Value>
<Value name="5">
<Value>Parent</Value>
</Value>
<Value name="6">
<Value>PostIndex</Value>
</Value>
<Value name="7">
<Value>ShortType</Value>
</Value>
</Data>
<DataLocation>^staff.model.KladrD</DataLocation>
<DefaultData>KladrDefaultData</DefaultData>
<IdLocation>^staff.model.KladrD</IdLocation>
<IndexLocation>^staff.model.KladrI</IndexLocation>
<StreamLocation>^staff.model.KladrS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
