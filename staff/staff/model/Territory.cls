/// Created from: C:\InterSystems\root.xsd
Class staff.model.Territory Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Territory";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property KLADR As %Numeric(XMLNAME = "KLADR");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property OUZ As %String(MAXLEN = "", XMLNAME = "OUZ");

Property Order As %xsd.int(XMLNAME = "Order");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="TerritoryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>KLADR</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>OUZ</Value>
</Value>
<Value name="5">
<Value>Order</Value>
</Value>
<Value name="6">
<Value>Parent</Value>
</Value>
</Data>
<DataLocation>^staff.model.TerritoryD</DataLocation>
<DefaultData>TerritoryDefaultData</DefaultData>
<IdLocation>^staff.model.TerritoryD</IdLocation>
<IndexLocation>^staff.model.TerritoryI</IndexLocation>
<StreamLocation>^staff.model.TerritoryS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
