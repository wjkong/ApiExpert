using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class StringValueAttribute : Attribute
    {
        // Fields
        private string mValue;

        // Methods
        public StringValueAttribute(string value)
        {
            this.mValue = value;
        }

        // Properties
        public string Value
        {
            get
            {
                return this.mValue;
            }
        }
    }
}
