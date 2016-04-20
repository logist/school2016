/// Created from: C:\InterSystems\root.xsd
Class staff.model.SkipPaymentReason Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "SkipPaymentReason";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="SkipPaymentReasonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.SkipPaymentReasonD</DataLocation>
<DefaultData>SkipPaymentReasonDefaultData</DefaultData>
<IdLocation>^staff.model.SkipPaymentReasonD</IdLocation>
<IndexLocation>^staff.model.SkipPaymentReasonI</IndexLocation>
<StreamLocation>^staff.model.SkipPaymentReasonS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
