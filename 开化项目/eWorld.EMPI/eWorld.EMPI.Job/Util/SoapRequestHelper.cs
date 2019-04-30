using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace eWorld.EMPI.Job.Util
{
    public static class SoapRequestHelper
    {
        private readonly static HttpClient httpClient;
        private readonly static Hashtable xmlnsList;
        private readonly static Hashtable elementFormDefaultList;
        private readonly static Hashtable soapActionList;

        static SoapRequestHelper()
        {
            httpClient = new HttpClient();
            xmlnsList = new Hashtable();
            elementFormDefaultList = new Hashtable();
            soapActionList = new Hashtable();
        }

        public static string Send(string url, string methodName, Dictionary<string, string> @params)
        {
            HttpRequestMessage httpRequest = new HttpRequestMessage(HttpMethod.Post, url)
            {
                Content = new StringContent(GetSoapXml(url, methodName, @params), Encoding.UTF8, "text/xml")
            };
            httpRequest.Content.Headers.Add("SOAPAction", GetSoapAction(url, methodName));

            var res = httpClient.SendAsync(httpRequest).Result;

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(res.Content.ReadAsStringAsync().Result);

            XmlNamespaceManager nsmgr = new XmlNamespaceManager(doc.NameTable);
            nsmgr.AddNamespace("soap", "http://schemas.xmlsoap.org/soap/envelope/");

            return doc.SelectSingleNode("//soap:Body", nsmgr).InnerXml;
        }

        private static string GetSoapXml(string url, string methodName, Dictionary<string, string> @params)
        {
            string xmlns = GetXmlns(url);
            bool isQualified = GetElementFormDefault(url) == "qualified";

            XmlDocument doc = new XmlDocument();
            doc.AppendChild(doc.CreateXmlDeclaration("1.0", Encoding.UTF8.BodyName, null));

            XmlElement soapEnvelope = doc.CreateElement("soap", "Envelope", "http://schemas.xmlsoap.org/soap/envelope/");
            soapEnvelope.SetAttribute("xmlns:z", xmlns);

            XmlElement soapBody = doc.CreateElement("soap", "Body", "http://schemas.xmlsoap.org/soap/envelope/");


            XmlElement methodNameDocumnet = doc.CreateElement("z", methodName, xmlns);
            foreach (var param in @params)
            {
                XmlElement content = isQualified ? doc.CreateElement("z", param.Key, xmlns) : doc.CreateElement(param.Key);
                XmlCDataSection cData = doc.CreateCDataSection(param.Value);
                content.AppendChild(cData);
                methodNameDocumnet.AppendChild(content);
            }
            soapBody.AppendChild(methodNameDocumnet);

            soapEnvelope.AppendChild(soapBody);
            doc.AppendChild(soapEnvelope);

            return doc.InnerXml;
        }
        private static string GetXmlns(string url)
        {
            if (xmlnsList.ContainsKey(url))
            {
                return xmlnsList[url] as string;
            }

            XmlDocument doc = GetXmlDocument(url);

            string xmlns = doc?.SelectSingleNode("//@targetNamespace")?.Value ?? "";

            xmlnsList.Add(url, xmlns);

            return xmlns;
        }
        private static string GetElementFormDefault(string url)
        {
            if (elementFormDefaultList.ContainsKey(url))
            {
                return elementFormDefaultList[url] as string;
            }

            XmlDocument doc = GetXmlDocument(url);

            string elementFormDefault = doc?.SelectSingleNode("//@elementFormDefault")?.Value ?? "";

            elementFormDefaultList.Add(url, elementFormDefault);

            return elementFormDefault;
        }
        private static string GetSoapAction(string url, string methodName)
        {
            string key = $"{url}/{methodName}";
            if (soapActionList.ContainsKey(key))
            {
                return soapActionList[key] as string;
            }

            XmlDocument doc = GetXmlDocument(url);

            XmlNamespaceManager nsmgr = new XmlNamespaceManager(doc.NameTable);
            nsmgr.AddNamespace("wsdl", "http://schemas.xmlsoap.org/wsdl/");

            XmlNode node = doc.SelectSingleNode($"//wsdl:operation[@name=\"{methodName}\"]", nsmgr);
            string soapAction = node?.SelectSingleNode("//@soapAction")?.Value ?? "";

            soapActionList.Add(key, soapAction);

            return soapAction;
        }
        private static XmlDocument GetXmlDocument(string url)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load($"{url}?wsdl");

            return doc;
        }
    }
}
