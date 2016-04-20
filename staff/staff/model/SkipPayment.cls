/// Created from: C:\InterSystems\root.xsd
Class staff.model.SkipPayment Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "SkipPayment";

Parameter XMLSEQUENCE = 1;

Property DateBegin As %TimeStamp(XMLNAME = "DateBegin");

Property DateEnd As %TimeStamp(XMLNAME = "DateEnd");

Property Reason As staff.model.SkipPaymentReason(XMLNAME = "Reason");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = SkipPaymentList ];

Storage Default
{
<Data name="SkipPaymentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DateBegin</Value>
</Value>
<Value name="3">
<Value>DateEnd</Value>
</Value>
<Value name="4">
<Value>Reason</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("SkipPaymentList")</DataLocation>
<DefaultData>SkipPaymentDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("SkipPaymentList")</IdLocation>
<IndexLocation>^staff.model.SkipPaymentI</IndexLocation>
<StreamLocation>^staff.model.SkipPaymentS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
