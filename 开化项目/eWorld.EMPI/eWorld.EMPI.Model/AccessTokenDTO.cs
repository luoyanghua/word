using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model
{
    public class AccessTokenDTO
    {
        public string access_token { set; get; }

        public string token_type { set; get; }

        public string expires_in { set; get; }

        public string issued { set; get; }

        public DateTime expires { set; get; }
    }
}
