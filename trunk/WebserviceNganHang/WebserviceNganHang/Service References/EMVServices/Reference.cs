﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebserviceNganHang.EMVServices {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://emv.sdcontent.org", ConfigurationName="EMVServices.EMVServicesSoap")]
    public interface EMVServicesSoap {
        
        // CODEGEN: Generating message contract since element name BankId from namespace http://emv.sdcontent.org is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://emv.sdcontent.org/Authenticate", ReplyAction="*")]
        WebserviceNganHang.EMVServices.AuthenticateResponse Authenticate(WebserviceNganHang.EMVServices.AuthenticateRequest request);
        
        // CODEGEN: Generating message contract since element name sID from namespace http://emv.sdcontent.org is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://emv.sdcontent.org/CardValid1", ReplyAction="*")]
        WebserviceNganHang.EMVServices.CardValid1Response CardValid1(WebserviceNganHang.EMVServices.CardValid1Request request);
        
        // CODEGEN: Generating message contract since element name sID from namespace http://emv.sdcontent.org is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://emv.sdcontent.org/CardValid2", ReplyAction="*")]
        WebserviceNganHang.EMVServices.CardValid2Response CardValid2(WebserviceNganHang.EMVServices.CardValid2Request request);
        
        // CODEGEN: Generating message contract since element name sID from namespace http://emv.sdcontent.org is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://emv.sdcontent.org/CardValid3", ReplyAction="*")]
        WebserviceNganHang.EMVServices.CardValid3Response CardValid3(WebserviceNganHang.EMVServices.CardValid3Request request);
        
        // CODEGEN: Generating message contract since element name CardId from namespace http://emv.sdcontent.org is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://emv.sdcontent.org/GetBankCommercialNameOfCreditCard", ReplyAction="*")]
        WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardResponse GetBankCommercialNameOfCreditCard(WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class AuthenticateRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Authenticate", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.AuthenticateRequestBody Body;
        
        public AuthenticateRequest() {
        }
        
        public AuthenticateRequest(WebserviceNganHang.EMVServices.AuthenticateRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class AuthenticateRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string BankId;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string password;
        
        public AuthenticateRequestBody() {
        }
        
        public AuthenticateRequestBody(string BankId, string password) {
            this.BankId = BankId;
            this.password = password;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class AuthenticateResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="AuthenticateResponse", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.AuthenticateResponseBody Body;
        
        public AuthenticateResponse() {
        }
        
        public AuthenticateResponse(WebserviceNganHang.EMVServices.AuthenticateResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class AuthenticateResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string AuthenticateResult;
        
        public AuthenticateResponseBody() {
        }
        
        public AuthenticateResponseBody(string AuthenticateResult) {
            this.AuthenticateResult = AuthenticateResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid1Request {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid1", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid1RequestBody Body;
        
        public CardValid1Request() {
        }
        
        public CardValid1Request(WebserviceNganHang.EMVServices.CardValid1RequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid1RequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string sID;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string CardId;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int IssuerId;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string CardSecureNumber;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string CardHolderName;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=5)]
        public System.DateTime ValidFromDate;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=6)]
        public System.DateTime ValidToDate;
        
        public CardValid1RequestBody() {
        }
        
        public CardValid1RequestBody(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, System.DateTime ValidFromDate, System.DateTime ValidToDate) {
            this.sID = sID;
            this.CardId = CardId;
            this.IssuerId = IssuerId;
            this.CardSecureNumber = CardSecureNumber;
            this.CardHolderName = CardHolderName;
            this.ValidFromDate = ValidFromDate;
            this.ValidToDate = ValidToDate;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid1Response {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid1Response", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid1ResponseBody Body;
        
        public CardValid1Response() {
        }
        
        public CardValid1Response(WebserviceNganHang.EMVServices.CardValid1ResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid1ResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int CardValid1Result;
        
        public CardValid1ResponseBody() {
        }
        
        public CardValid1ResponseBody(int CardValid1Result) {
            this.CardValid1Result = CardValid1Result;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid2Request {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid2", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid2RequestBody Body;
        
        public CardValid2Request() {
        }
        
        public CardValid2Request(WebserviceNganHang.EMVServices.CardValid2RequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid2RequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string sID;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string CardId;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int IssuerId;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string CardSecureNumber;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=4)]
        public string CardHolderName;
        
        public CardValid2RequestBody() {
        }
        
        public CardValid2RequestBody(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName) {
            this.sID = sID;
            this.CardId = CardId;
            this.IssuerId = IssuerId;
            this.CardSecureNumber = CardSecureNumber;
            this.CardHolderName = CardHolderName;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid2Response {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid2Response", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid2ResponseBody Body;
        
        public CardValid2Response() {
        }
        
        public CardValid2Response(WebserviceNganHang.EMVServices.CardValid2ResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid2ResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int CardValid2Result;
        
        public CardValid2ResponseBody() {
        }
        
        public CardValid2ResponseBody(int CardValid2Result) {
            this.CardValid2Result = CardValid2Result;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid3Request {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid3", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid3RequestBody Body;
        
        public CardValid3Request() {
        }
        
        public CardValid3Request(WebserviceNganHang.EMVServices.CardValid3RequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid3RequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string sID;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string CardId;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int IssuerID;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=3)]
        public string CardHolderName;
        
        public CardValid3RequestBody() {
        }
        
        public CardValid3RequestBody(string sID, string CardId, int IssuerID, string CardHolderName) {
            this.sID = sID;
            this.CardId = CardId;
            this.IssuerID = IssuerID;
            this.CardHolderName = CardHolderName;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CardValid3Response {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CardValid3Response", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.CardValid3ResponseBody Body;
        
        public CardValid3Response() {
        }
        
        public CardValid3Response(WebserviceNganHang.EMVServices.CardValid3ResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class CardValid3ResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int CardValid3Result;
        
        public CardValid3ResponseBody() {
        }
        
        public CardValid3ResponseBody(int CardValid3Result) {
            this.CardValid3Result = CardValid3Result;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetBankCommercialNameOfCreditCardRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetBankCommercialNameOfCreditCard", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequestBody Body;
        
        public GetBankCommercialNameOfCreditCardRequest() {
        }
        
        public GetBankCommercialNameOfCreditCardRequest(WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class GetBankCommercialNameOfCreditCardRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string CardId;
        
        public GetBankCommercialNameOfCreditCardRequestBody() {
        }
        
        public GetBankCommercialNameOfCreditCardRequestBody(string CardId) {
            this.CardId = CardId;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetBankCommercialNameOfCreditCardResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetBankCommercialNameOfCreditCardResponse", Namespace="http://emv.sdcontent.org", Order=0)]
        public WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardResponseBody Body;
        
        public GetBankCommercialNameOfCreditCardResponse() {
        }
        
        public GetBankCommercialNameOfCreditCardResponse(WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://emv.sdcontent.org")]
    public partial class GetBankCommercialNameOfCreditCardResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string GetBankCommercialNameOfCreditCardResult;
        
        public GetBankCommercialNameOfCreditCardResponseBody() {
        }
        
        public GetBankCommercialNameOfCreditCardResponseBody(string GetBankCommercialNameOfCreditCardResult) {
            this.GetBankCommercialNameOfCreditCardResult = GetBankCommercialNameOfCreditCardResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface EMVServicesSoapChannel : WebserviceNganHang.EMVServices.EMVServicesSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class EMVServicesSoapClient : System.ServiceModel.ClientBase<WebserviceNganHang.EMVServices.EMVServicesSoap>, WebserviceNganHang.EMVServices.EMVServicesSoap {
        
        public EMVServicesSoapClient() {
        }
        
        public EMVServicesSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public EMVServicesSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public EMVServicesSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public EMVServicesSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebserviceNganHang.EMVServices.AuthenticateResponse WebserviceNganHang.EMVServices.EMVServicesSoap.Authenticate(WebserviceNganHang.EMVServices.AuthenticateRequest request) {
            return base.Channel.Authenticate(request);
        }
        
        public string Authenticate(string BankId, string password) {
            WebserviceNganHang.EMVServices.AuthenticateRequest inValue = new WebserviceNganHang.EMVServices.AuthenticateRequest();
            inValue.Body = new WebserviceNganHang.EMVServices.AuthenticateRequestBody();
            inValue.Body.BankId = BankId;
            inValue.Body.password = password;
            WebserviceNganHang.EMVServices.AuthenticateResponse retVal = ((WebserviceNganHang.EMVServices.EMVServicesSoap)(this)).Authenticate(inValue);
            return retVal.Body.AuthenticateResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebserviceNganHang.EMVServices.CardValid1Response WebserviceNganHang.EMVServices.EMVServicesSoap.CardValid1(WebserviceNganHang.EMVServices.CardValid1Request request) {
            return base.Channel.CardValid1(request);
        }
        
        public int CardValid1(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, System.DateTime ValidFromDate, System.DateTime ValidToDate) {
            WebserviceNganHang.EMVServices.CardValid1Request inValue = new WebserviceNganHang.EMVServices.CardValid1Request();
            inValue.Body = new WebserviceNganHang.EMVServices.CardValid1RequestBody();
            inValue.Body.sID = sID;
            inValue.Body.CardId = CardId;
            inValue.Body.IssuerId = IssuerId;
            inValue.Body.CardSecureNumber = CardSecureNumber;
            inValue.Body.CardHolderName = CardHolderName;
            inValue.Body.ValidFromDate = ValidFromDate;
            inValue.Body.ValidToDate = ValidToDate;
            WebserviceNganHang.EMVServices.CardValid1Response retVal = ((WebserviceNganHang.EMVServices.EMVServicesSoap)(this)).CardValid1(inValue);
            return retVal.Body.CardValid1Result;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebserviceNganHang.EMVServices.CardValid2Response WebserviceNganHang.EMVServices.EMVServicesSoap.CardValid2(WebserviceNganHang.EMVServices.CardValid2Request request) {
            return base.Channel.CardValid2(request);
        }
        
        public int CardValid2(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName) {
            WebserviceNganHang.EMVServices.CardValid2Request inValue = new WebserviceNganHang.EMVServices.CardValid2Request();
            inValue.Body = new WebserviceNganHang.EMVServices.CardValid2RequestBody();
            inValue.Body.sID = sID;
            inValue.Body.CardId = CardId;
            inValue.Body.IssuerId = IssuerId;
            inValue.Body.CardSecureNumber = CardSecureNumber;
            inValue.Body.CardHolderName = CardHolderName;
            WebserviceNganHang.EMVServices.CardValid2Response retVal = ((WebserviceNganHang.EMVServices.EMVServicesSoap)(this)).CardValid2(inValue);
            return retVal.Body.CardValid2Result;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebserviceNganHang.EMVServices.CardValid3Response WebserviceNganHang.EMVServices.EMVServicesSoap.CardValid3(WebserviceNganHang.EMVServices.CardValid3Request request) {
            return base.Channel.CardValid3(request);
        }
        
        public int CardValid3(string sID, string CardId, int IssuerID, string CardHolderName) {
            WebserviceNganHang.EMVServices.CardValid3Request inValue = new WebserviceNganHang.EMVServices.CardValid3Request();
            inValue.Body = new WebserviceNganHang.EMVServices.CardValid3RequestBody();
            inValue.Body.sID = sID;
            inValue.Body.CardId = CardId;
            inValue.Body.IssuerID = IssuerID;
            inValue.Body.CardHolderName = CardHolderName;
            WebserviceNganHang.EMVServices.CardValid3Response retVal = ((WebserviceNganHang.EMVServices.EMVServicesSoap)(this)).CardValid3(inValue);
            return retVal.Body.CardValid3Result;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardResponse WebserviceNganHang.EMVServices.EMVServicesSoap.GetBankCommercialNameOfCreditCard(WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequest request) {
            return base.Channel.GetBankCommercialNameOfCreditCard(request);
        }
        
        public string GetBankCommercialNameOfCreditCard(string CardId) {
            WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequest inValue = new WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequest();
            inValue.Body = new WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardRequestBody();
            inValue.Body.CardId = CardId;
            WebserviceNganHang.EMVServices.GetBankCommercialNameOfCreditCardResponse retVal = ((WebserviceNganHang.EMVServices.EMVServicesSoap)(this)).GetBankCommercialNameOfCreditCard(inValue);
            return retVal.Body.GetBankCommercialNameOfCreditCardResult;
        }
    }
}