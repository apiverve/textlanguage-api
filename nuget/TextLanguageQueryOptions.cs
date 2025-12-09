using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TextLanguage
{
    /// <summary>
    /// Query options for the Text Language API
    /// </summary>
    public class TextLanguageQueryOptions
    {
        /// <summary>
        /// The text to detect the language of
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
