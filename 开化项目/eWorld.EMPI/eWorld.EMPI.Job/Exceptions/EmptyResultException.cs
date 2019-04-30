using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Job.Exceptions
{
    [System.Serializable]
    public class EmptyResultException : Exception
    {
        public EmptyResultException() { }
        public EmptyResultException(string message) : base(message) { }
        public EmptyResultException(string message, Exception inner) : base(message, inner) { }
        protected EmptyResultException(
          System.Runtime.Serialization.SerializationInfo info,
          System.Runtime.Serialization.StreamingContext context) : base(info, context) { }
    }
}
