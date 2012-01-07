﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 4.0.30319.239.
// 
#pragma warning disable 1591

namespace WSWorkFlow.EMVServices {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.ComponentModel;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="EMVServicesSoap", Namespace="http://emv.sdcontent.org")]
    public partial class EMVServices : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback AuthenticateOperationCompleted;
        
        private System.Threading.SendOrPostCallback CardValid1OperationCompleted;
        
        private System.Threading.SendOrPostCallback CardValid2OperationCompleted;
        
        private System.Threading.SendOrPostCallback CardValid3OperationCompleted;
        
        private System.Threading.SendOrPostCallback GetBankCommercialNameOfCreditCardOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public EMVServices() {
            this.Url = global::WSWorkFlow.Properties.Settings.Default.WSWorkFlow_EMVServices_EMVServices;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event AuthenticateCompletedEventHandler AuthenticateCompleted;
        
        /// <remarks/>
        public event CardValid1CompletedEventHandler CardValid1Completed;
        
        /// <remarks/>
        public event CardValid2CompletedEventHandler CardValid2Completed;
        
        /// <remarks/>
        public event CardValid3CompletedEventHandler CardValid3Completed;
        
        /// <remarks/>
        public event GetBankCommercialNameOfCreditCardCompletedEventHandler GetBankCommercialNameOfCreditCardCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://emv.sdcontent.org/Authenticate", RequestNamespace="http://emv.sdcontent.org", ResponseNamespace="http://emv.sdcontent.org", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string Authenticate(string BankId, string password) {
            object[] results = this.Invoke("Authenticate", new object[] {
                        BankId,
                        password});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void AuthenticateAsync(string BankId, string password) {
            this.AuthenticateAsync(BankId, password, null);
        }
        
        /// <remarks/>
        public void AuthenticateAsync(string BankId, string password, object userState) {
            if ((this.AuthenticateOperationCompleted == null)) {
                this.AuthenticateOperationCompleted = new System.Threading.SendOrPostCallback(this.OnAuthenticateOperationCompleted);
            }
            this.InvokeAsync("Authenticate", new object[] {
                        BankId,
                        password}, this.AuthenticateOperationCompleted, userState);
        }
        
        private void OnAuthenticateOperationCompleted(object arg) {
            if ((this.AuthenticateCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.AuthenticateCompleted(this, new AuthenticateCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://emv.sdcontent.org/CardValid1", RequestNamespace="http://emv.sdcontent.org", ResponseNamespace="http://emv.sdcontent.org", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int CardValid1(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, System.DateTime ValidFromDate, System.DateTime ValidToDate) {
            object[] results = this.Invoke("CardValid1", new object[] {
                        sID,
                        CardId,
                        IssuerId,
                        CardSecureNumber,
                        CardHolderName,
                        ValidFromDate,
                        ValidToDate});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void CardValid1Async(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, System.DateTime ValidFromDate, System.DateTime ValidToDate) {
            this.CardValid1Async(sID, CardId, IssuerId, CardSecureNumber, CardHolderName, ValidFromDate, ValidToDate, null);
        }
        
        /// <remarks/>
        public void CardValid1Async(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, System.DateTime ValidFromDate, System.DateTime ValidToDate, object userState) {
            if ((this.CardValid1OperationCompleted == null)) {
                this.CardValid1OperationCompleted = new System.Threading.SendOrPostCallback(this.OnCardValid1OperationCompleted);
            }
            this.InvokeAsync("CardValid1", new object[] {
                        sID,
                        CardId,
                        IssuerId,
                        CardSecureNumber,
                        CardHolderName,
                        ValidFromDate,
                        ValidToDate}, this.CardValid1OperationCompleted, userState);
        }
        
        private void OnCardValid1OperationCompleted(object arg) {
            if ((this.CardValid1Completed != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CardValid1Completed(this, new CardValid1CompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://emv.sdcontent.org/CardValid2", RequestNamespace="http://emv.sdcontent.org", ResponseNamespace="http://emv.sdcontent.org", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int CardValid2(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName) {
            object[] results = this.Invoke("CardValid2", new object[] {
                        sID,
                        CardId,
                        IssuerId,
                        CardSecureNumber,
                        CardHolderName});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void CardValid2Async(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName) {
            this.CardValid2Async(sID, CardId, IssuerId, CardSecureNumber, CardHolderName, null);
        }
        
        /// <remarks/>
        public void CardValid2Async(string sID, string CardId, int IssuerId, string CardSecureNumber, string CardHolderName, object userState) {
            if ((this.CardValid2OperationCompleted == null)) {
                this.CardValid2OperationCompleted = new System.Threading.SendOrPostCallback(this.OnCardValid2OperationCompleted);
            }
            this.InvokeAsync("CardValid2", new object[] {
                        sID,
                        CardId,
                        IssuerId,
                        CardSecureNumber,
                        CardHolderName}, this.CardValid2OperationCompleted, userState);
        }
        
        private void OnCardValid2OperationCompleted(object arg) {
            if ((this.CardValid2Completed != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CardValid2Completed(this, new CardValid2CompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://emv.sdcontent.org/CardValid3", RequestNamespace="http://emv.sdcontent.org", ResponseNamespace="http://emv.sdcontent.org", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int CardValid3(string sID, string CardId, int IssuerID, string CardHolderName) {
            object[] results = this.Invoke("CardValid3", new object[] {
                        sID,
                        CardId,
                        IssuerID,
                        CardHolderName});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void CardValid3Async(string sID, string CardId, int IssuerID, string CardHolderName) {
            this.CardValid3Async(sID, CardId, IssuerID, CardHolderName, null);
        }
        
        /// <remarks/>
        public void CardValid3Async(string sID, string CardId, int IssuerID, string CardHolderName, object userState) {
            if ((this.CardValid3OperationCompleted == null)) {
                this.CardValid3OperationCompleted = new System.Threading.SendOrPostCallback(this.OnCardValid3OperationCompleted);
            }
            this.InvokeAsync("CardValid3", new object[] {
                        sID,
                        CardId,
                        IssuerID,
                        CardHolderName}, this.CardValid3OperationCompleted, userState);
        }
        
        private void OnCardValid3OperationCompleted(object arg) {
            if ((this.CardValid3Completed != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CardValid3Completed(this, new CardValid3CompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://emv.sdcontent.org/GetBankCommercialNameOfCreditCard", RequestNamespace="http://emv.sdcontent.org", ResponseNamespace="http://emv.sdcontent.org", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string GetBankCommercialNameOfCreditCard(string CardId) {
            object[] results = this.Invoke("GetBankCommercialNameOfCreditCard", new object[] {
                        CardId});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void GetBankCommercialNameOfCreditCardAsync(string CardId) {
            this.GetBankCommercialNameOfCreditCardAsync(CardId, null);
        }
        
        /// <remarks/>
        public void GetBankCommercialNameOfCreditCardAsync(string CardId, object userState) {
            if ((this.GetBankCommercialNameOfCreditCardOperationCompleted == null)) {
                this.GetBankCommercialNameOfCreditCardOperationCompleted = new System.Threading.SendOrPostCallback(this.OnGetBankCommercialNameOfCreditCardOperationCompleted);
            }
            this.InvokeAsync("GetBankCommercialNameOfCreditCard", new object[] {
                        CardId}, this.GetBankCommercialNameOfCreditCardOperationCompleted, userState);
        }
        
        private void OnGetBankCommercialNameOfCreditCardOperationCompleted(object arg) {
            if ((this.GetBankCommercialNameOfCreditCardCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.GetBankCommercialNameOfCreditCardCompleted(this, new GetBankCommercialNameOfCreditCardCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void AuthenticateCompletedEventHandler(object sender, AuthenticateCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class AuthenticateCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal AuthenticateCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void CardValid1CompletedEventHandler(object sender, CardValid1CompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CardValid1CompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CardValid1CompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void CardValid2CompletedEventHandler(object sender, CardValid2CompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CardValid2CompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CardValid2CompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void CardValid3CompletedEventHandler(object sender, CardValid3CompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CardValid3CompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CardValid3CompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void GetBankCommercialNameOfCreditCardCompletedEventHandler(object sender, GetBankCommercialNameOfCreditCardCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class GetBankCommercialNameOfCreditCardCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal GetBankCommercialNameOfCreditCardCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591