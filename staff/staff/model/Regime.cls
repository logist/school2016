/// Created from: C:\InterSystems\root.xsd
Class staff.model.Regime Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Regime";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RegimeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.RegimeD</DataLocation>
<DefaultData>RegimeDefaultData</DefaultData>
<IdLocation>^staff.model.RegimeD</IdLocation>
<IndexLocation>^staff.model.RegimeI</IndexLocation>
<StreamLocation>^staff.model.RegimeS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
