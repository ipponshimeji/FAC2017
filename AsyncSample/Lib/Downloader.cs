using System;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace AsyncSample.Lib {
	public class Downloader: IDisposable {
		// HttpClientオブジェクトは毎回作らずに使い回す。
		// socketの浪費を防ぐため。
		// 参照:
		//   https://www.infoq.com/news/2016/09/HttpClient
		//   [日本語訳] https://www.infoq.com/jp/news/2016/09/HttpClient
		private HttpClient httpClient = new HttpClient();

		public void Dispose() {
			HttpClient temp = Interlocked.Exchange(ref this.httpClient, null);
			if (temp != null) {
				temp.Dispose();
			}
		}

		public async Task<string> DownloadText(string uri) {
			HttpClient httpClient = this.httpClient;
			if (httpClient == null) {
				throw new ObjectDisposedException(nameof(Downloader));
			}

			string text;
			using (HttpResponseMessage response = await httpClient.GetAsync(uri)) {
				if (!response.IsSuccessStatusCode) {
					throw new Exception(string.Format("Error: {0}", response.StatusCode));
				}
				text = await response.Content.ReadAsStringAsync();
			}

			// 以下の行を入れてわざと待たせるようにすると、
			// 非同期に動作していることがGUI上から分かりやすい。
			Thread.Sleep(3000);
			return text;
		}
	}
}
