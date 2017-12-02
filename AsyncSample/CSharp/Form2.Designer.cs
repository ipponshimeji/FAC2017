namespace AsyncSample.CSharp {
	partial class Form2 {
		/// <summary>
		/// 必要なデザイナー変数です。
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// 使用中のリソースをすべてクリーンアップします。
		/// </summary>
		/// <param name="disposing">マネージ リソースを破棄する場合は true を指定し、その他の場合は false を指定します。</param>
		protected override void Dispose(bool disposing) {
			if (disposing && (components != null)) {
				components.Dispose();
			}
			this.downloader.Dispose();
			base.Dispose(disposing);
		}

		#region Windows フォーム デザイナーで生成されたコード

		/// <summary>
		/// デザイナー サポートに必要なメソッドです。このメソッドの内容を
		/// コード エディターで変更しないでください。
		/// </summary>
		private void InitializeComponent() {
			this.button = new System.Windows.Forms.Button();
			this.label = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// button
			// 
			this.button.Location = new System.Drawing.Point(148, 131);
			this.button.Name = "button";
			this.button.Size = new System.Drawing.Size(133, 48);
			this.button.TabIndex = 0;
			this.button.Text = "Download";
			this.button.UseVisualStyleBackColor = true;
			this.button.Click += new System.EventHandler(this.button_Click);
			// 
			// label
			// 
			this.label.Font = new System.Drawing.Font("MS UI Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(128)));
			this.label.Location = new System.Drawing.Point(23, 40);
			this.label.Name = "label";
			this.label.Size = new System.Drawing.Size(410, 48);
			this.label.TabIndex = 1;
			this.label.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(457, 217);
			this.Controls.Add(this.label);
			this.Controls.Add(this.button);
			this.Name = "Form1";
			this.Text = "Async Sample (C#)";
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.Button button;
		private System.Windows.Forms.Label label;
	}
}

