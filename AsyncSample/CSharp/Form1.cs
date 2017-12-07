using System;
using System.Windows.Forms;
using AsyncSample.Lib;

namespace AsyncSample.CSharp {
	public partial class Form1: Form {
		// Downloaderオブジェクトはフォーム内で使い回す。
		// Downloaderオブジェクトに含まれるHttpClientオブジェクトを使いまわし、
		// socketの浪費を防ぐため。
		// 参照:
		//   https://www.infoq.com/news/2016/09/HttpClient
		//   [日本語訳] https://www.infoq.com/jp/news/2016/09/HttpClient
		private Downloader downloader = new Downloader();

		public Form1() {
			InitializeComponent();
		}

		private async void button_Click(object sender, EventArgs e) {
			// 処理中はボタンを無効化し、二度押しを防ぐ。
			this.button.Enabled = false;
			try {
				string message;
				try {
					string text = await this.downloader.DownloadText("http://www.msftncsi.com/ncsi.txt");
					message = $"[{DateTime.Now}] {text}";
				} catch (Exception exception) {
					message = exception.Message;
				}
				this.label.Text = message;
			} finally {
				this.button.Enabled = true;
			}
		}
	}
}
