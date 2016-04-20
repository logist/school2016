/// Created from: C:\InterSystems\root.xsd
Class staff.model.CardRecord Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "CardRecord";

Parameter XMLSEQUENCE = 1;

Property AdditionalLaborAgreement As staff.model.YesNo(XMLNAME = "AdditionalLaborAgreement");

Property Care As staff.model.MedicalCare(XMLNAME = "Care");

Property Conditions As staff.model.MedicalCondition(XMLNAME = "Conditions");

Property DateBegin As %TimeStamp(XMLNAME = "DateBegin");

Property DateEnd As %TimeStamp(XMLNAME = "DateEnd");

Property Military As staff.model.Military(XMLNAME = "Military");

Property OrderIn As %String(MAXLEN = "", XMLNAME = "OrderIn");

Property OrderOut As %String(MAXLEN = "", XMLNAME = "OrderOut");

Property Organization As staff.model.OrganizationInfo(XMLNAME = "Organization");

Property Population As %xsd.double(XMLNAME = "Population");

Property PositionType As staff.model.PositionType(XMLNAME = "PositionType");

Property Post As staff.model.Post(XMLNAME = "Post");

Property PostType As staff.model.Position(XMLNAME = "PostType");

Property Regime As staff.model.Regime(XMLNAME = "Regime");

Property SubdivisionName As %String(MAXLEN = "", XMLNAME = "SubdivisionName");

Property SubdivisionType As staff.model.Subdivision(XMLNAME = "SubdivisionType");

Property TypeIn As staff.model.RecordTypeIn(XMLNAME = "TypeIn");

Property TypeInAdd As staff.model.RecordTypeInAdd(XMLNAME = "TypeInAdd");

Property TypeInCountry As staff.model.Country(XMLNAME = "TypeInCountry");

Property TypeInGoIn As staff.model.RecordTypeMoveInOrg(XMLNAME = "TypeInGoIn");

Property TypeInStudTarget As staff.model.YesNo(XMLNAME = "TypeInStudTarget");

Property TypeInStudType As staff.model.RecordTypeInStudType(XMLNAME = "TypeInStudType");

Property TypeInTerr As staff.model.Territory(XMLNAME = "TypeInTerr");

Property TypeOut As staff.model.RecordTypeOut(XMLNAME = "TypeOut");

Property TypeOutCountry As staff.model.Country(XMLNAME = "TypeOutCountry");

Property TypeOutDel As staff.model.RecordTypeOutDel(XMLNAME = "TypeOutDel");

Property TypeOutGoIn As staff.model.RecordTypeMoveOutOrg(XMLNAME = "TypeOutGoIn");

Property TypeOutTerr As staff.model.Territory(XMLNAME = "TypeOutTerr");

Property Wage As %xsd.double(XMLNAME = "Wage");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = CardRecordList ];

Storage Default
{
<Data name="CardRecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AdditionalLaborAgreement</Value>
</Value>
<Value name="3">
<Value>Care</Value>
</Value>
<Value name="4">
<Value>Conditions</Value>
</Value>
<Value name="5">
<Value>DateBegin</Value>
</Value>
<Value name="6">
<Value>DateEnd</Value>
</Value>
<Value name="7">
<Value>Military</Value>
</Value>
<Value name="8">
<Value>OrderIn</Value>
</Value>
<Value name="9">
<Value>OrderOut</Value>
</Value>
<Value name="10">
<Value>Organization</Value>
</Value>
<Value name="11">
<Value>Population</Value>
</Value>
<Value name="12">
<Value>PositionType</Value>
</Value>
<Value name="13">
<Value>Post</Value>
</Value>
<Value name="14">
<Value>PostType</Value>
</Value>
<Value name="15">
<Value>Regime</Value>
</Value>
<Value name="16">
<Value>SubdivisionName</Value>
</Value>
<Value name="17">
<Value>SubdivisionType</Value>
</Value>
<Value name="18">
<Value>TypeIn</Value>
</Value>
<Value name="19">
<Value>TypeInAdd</Value>
</Value>
<Value name="20">
<Value>TypeInCountry</Value>
</Value>
<Value name="21">
<Value>TypeInGoIn</Value>
</Value>
<Value name="22">
<Value>TypeInStudTarget</Value>
</Value>
<Value name="23">
<Value>TypeInStudType</Value>
</Value>
<Value name="24">
<Value>TypeInTerr</Value>
</Value>
<Value name="25">
<Value>TypeOut</Value>
</Value>
<Value name="26">
<Value>TypeOutCountry</Value>
</Value>
<Value name="27">
<Value>TypeOutDel</Value>
</Value>
<Value name="28">
<Value>TypeOutGoIn</Value>
</Value>
<Value name="29">
<Value>TypeOutTerr</Value>
</Value>
<Value name="30">
<Value>Wage</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("CardRecordList")</DataLocation>
<DefaultData>CardRecordDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("CardRecordList")</IdLocation>
<IndexLocation>^staff.model.CardRecordI</IndexLocation>
<StreamLocation>^staff.model.CardRecordS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
