using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Windows.Forms;
using AsyncSample.Lib;

namespace AsyncSample.CSharp {
	public partial class Form2: Form {
		// Downloaderオブジェクトはフォームで使い回す。
		// Downloaderオブジェクトに含まれるHttpClientオブジェクトを使いまわし、
		// socketの浪費を防ぐため。
		// 参照:
		//   https://www.infoq.com/news/2016/09/HttpClient
		//   [日本語訳] https://www.infoq.com/jp/news/2016/09/HttpClient
		private Downloader downloader = new Downloader();

		public Form2() {
			InitializeComponent();
		}

		private void button1_Click(object sender, EventArgs e) {
			Action finallyProc = () => {
				this.button.Enabled = true;
			};
			Action<Task<string>> proc = (task) => {
				try {
					string message;
					if (task.Exception == null) {
						message = string.Format("[{0}] {1}", DateTime.Now, task.Result);
					} else {
						message = task.Exception.Message;
					}
					this.label.Text = message;
				} finally {
					finallyProc();
				}
			};

			this.button.Enabled = false;
			try {
				this.downloader.DownloadText("http://www.msftncsi.com/ncsi.txt").ContinueWith((task) => {
					// GUIスレッド上で続きを行う。
					this.Invoke(proc, task);
				});
			} catch {
				finallyProc();
				throw;
			}
		}
	}
}
