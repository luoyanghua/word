using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eWorld.EMPI.Model.DTO
{
    public class ExamDocumentData
    {
        public List<ExamDocument> DataList { get; set; }
    }
    public class ExamDocument
    {
        public string FileUID { get; set; }
        public string OriginalFileName { get; set; }
        public string TypeCode { get; set; }
        public string MimeType { get; set; }
        public string FileRelativePath { get; set; }
        public DateTime FileCreateTime { get; set; }
    }
}
