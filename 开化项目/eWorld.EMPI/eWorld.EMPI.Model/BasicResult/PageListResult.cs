using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.BasicResult
{
    public class PageListResult<T> : BaseResult
    {
        public DocumentList<T> data;
    }

    public class PageInfoModel
    {
        public int PageIndex { get; set; }

        public int PageSize { get; set; }

        public int TotalCount { get; set; }

        public int TotalPages { get; set; }
    }

    public class DocumentList<T>
    {
        public List<T> DataList { get; set; }

        public PageInfoModel PageInfo { get; set; }
    }
}
