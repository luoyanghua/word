using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace eWorld.EMPI.Job.Util
{
    /// <summary>
    /// 基于MemoryCache（内存缓存）的缓存工具类
    /// </summary>
    public class MemoryCacheUtil
    {
        public static ObjectCache Cache
        {
            get
            {
                return MemoryCache.Default;
            }
        }
        /// <summary>
        /// 获取或设置与指定的键相关联的值
        /// </summary>
        /// <typeparam name="T">Type</typeparam>
        /// <param name="key">The key of the value to get.</param>
        /// <returns>与指定键关联的值.</returns>
        public static T Get<T>(string key)
        {
            return (T)Cache[key];
        }

        /// <summary>
        ///将指定的键和对象到放到缓存中
        /// </summary>
        /// <param name="key">key</param>
        /// <param name="data">Data</param>
        /// <param name="cacheTime">Cache time</param>
        public static void Set(string key, object data, int cacheTime)
        {
            if (data == null)
                return;

            var policy = new CacheItemPolicy();
            policy.AbsoluteExpiration = DateTime.Now + TimeSpan.FromMinutes(cacheTime);
            Cache.Add(new CacheItem(key, data), policy);
        }

        /// <summary>
        /// 获取一个值，表示与指定键关联的值是否被缓存
        /// </summary>
        /// <param name="key">key</param>
        /// <returns>Result</returns>
        public static bool IsSet(string key)
        {
            return (Cache.Contains(key));
        }

        /// <summary>
        /// 从缓存中移除指定键的值
        /// </summary>
        /// <param name="key">/key</param>
        public static void Remove(string key)
        {
            Cache.Remove(key);
        }

        /// <summary>
        /// 通过模式移除项
        /// </summary>
        /// <param name="pattern">pattern</param>
        public static void RemoveByPattern(string pattern)
        {
            var regex = new Regex(pattern, RegexOptions.Singleline | RegexOptions.Compiled | RegexOptions.IgnoreCase);
            var keysToRemove = new List<String>();

            foreach (var item in Cache)
                if (regex.IsMatch(item.Key))
                    keysToRemove.Add(item.Key);

            foreach (string key in keysToRemove)
            {
                Remove(key);
            }
        }

        /// <summary>
        /// 清除所有缓存数据
        /// </summary>
        public static void Clear()
        {
            foreach (var item in Cache)
                Remove(item.Key);
        }
    }
}
