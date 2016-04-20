/// Created from: C:\InterSystems\root.xsd
Class staff.model.Military Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Military";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="MilitaryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.MilitaryD</DataLocation>
<DefaultData>MilitaryDefaultData</DefaultData>
<IdLocation>^staff.model.MilitaryD</IdLocation>
<IndexLocation>^staff.model.MilitaryI</IndexLocation>
<StreamLocation>^staff.model.MilitaryS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
