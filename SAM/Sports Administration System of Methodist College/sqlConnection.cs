using System;

namespace Sports_Administration_System_of_Methodist_College
{
    public class sqlConnection
    {
        private string strcon;

        public sqlConnection(string strcon)
        {
            this.strcon = strcon;
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }

        internal void Close()
        {
            throw new NotImplementedException();
        }
    }
}