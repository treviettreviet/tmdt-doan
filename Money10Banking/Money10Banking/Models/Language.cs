using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Money10Banking.Models
{
    public class Language
    {

        List<Lang> _listlang;

        public Language()
        {
            _listlang = new List<Lang>();
        }

        public Lang this[string var_lang]
        {
            get
            {
                for (int i = 0; i < _listlang.Count; i++)
                {
                    Lang _lang = (Lang)_listlang[i];
                    if (_lang.VarLang == var_lang)
                    {
                        return _lang;
                    }
                }
                return null;
            }

            set
            {
                for (int i = 0; i < _listlang.Count; i++)
                {
                    Lang _lang = (Lang)_listlang[i];
                    if (_lang.VarLang == var_lang)
                    {
                        _listlang[i] = value;
                        break;
                    }
                }
            }
        }

        public int AddLang(Lang data)
        {
            _listlang.Add(data);
            return _listlang.Count;
        }
    }
}