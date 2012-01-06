using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

namespace MoiGioi_Money10
{
    public static class Hash
    {
        private static string ByteArrayToString(byte[] arrInput)
        {
            int i;
            StringBuilder sOutput = new StringBuilder(arrInput.Length);
            for (i = 0; i < arrInput.Length; ++i)
                sOutput.Append(arrInput[i].ToString("X2"));

            return sOutput.ToString();
        }

        public static String MD5_Hash(String strInput)
        {
            //string sSourceData;
            byte[] tmpSource;
            byte[] tmpHash;

            //Create a byte array from strInput.
            tmpSource = ASCIIEncoding.ASCII.GetBytes(strInput);

            //Compute hash based on source data.
            tmpHash = new MD5CryptoServiceProvider().ComputeHash(tmpSource);

            return Hash.ByteArrayToString(tmpHash);
        }
    }
}
