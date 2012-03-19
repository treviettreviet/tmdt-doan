using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Money10Banking.Models
{
    public class Lang
    {
        private string _varlang;

        public string VarLang
        {
            get { return _varlang; }
            set { _varlang = value; }
        }
        private string _valuelang;

        public string ValueLang
        {
            get { return _valuelang; }
            set { _valuelang = value; }
        }

        private string _urllang;

        public string UrlLang
        {
            get { return _urllang; }
            set { _urllang = value; }
        }
    }
}