using System;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace AsyncSample.Lib {
	public class Downloader: IDisposable {
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

			using (HttpResponseMessage response = await httpClient.GetAsync(uri)) {
				if (!response.IsSuccessStatusCode) {
					throw new Exception(string.Format("Error: {0}", response.StatusCode));
				}
				Thread.Sleep(3000);
				return await response.Content.ReadAsStringAsync();
			}
		}
	}
}
