using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kong.ApiExpert.Model
{
    public class StringValueAttribute : Attribute
    {
        // Fields
        private string mValue;

        // Methods
        public StringValueAttribute(string value)
        {
            mValue = value;
        }

        // Properties
        public string Value
        {
            get
            {
                return mValue;
            }
        }
    }
}
