using System;
using System.Threading.Tasks;
using System.Windows.Forms;
using AsyncSample.Lib;

namespace AsyncSample.CSharp {
	// Form1の代わりにForm2を表示させたい場合は、
	// Program.Main中の以下の行の"Form1"を"Form2"に変更してください。
	//   Application.Run(new Form1());
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

		// async/awaitを無理やり書かないようにしたバージョン
		private void button_Click(object sender, EventArgs e) {
			const string url = "http://www.msftncsi.com/ncsi.txt";
			this.button.Enabled = false;
			try {
				this.downloader.DownloadText(url).ContinueWith(
					new Action<Task<string>>(this.ContinuedProc)
				);
			} catch {
				FinallyProc();
				throw;
			}
		}

		private void FinallyProc() {
			this.button.Enabled = true;
		}

		private void ContinuedProcBody(Task<string> task) {
			try {
				string message;
				if (task.Exception == null) {
					message = $"[{DateTime.Now}] {task.Result}";
				} else {
					message = task.Exception.Message;
				}
				this.label.Text = message;
			} finally {
				FinallyProc();
			}
		}

		private void ContinuedProc(Task<string> task) {
			// GUIスレッド上で処理を行う。
			this.Invoke(new Action<Task<string>>(this.ContinuedProcBody), task);
		}
	}
}
