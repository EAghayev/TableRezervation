namespace Rezervation
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.BtnCheck = new System.Windows.Forms.Button();
            this.BtnRezerv = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.TxtRezervTime = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.BtnCheck);
            this.groupBox1.Controls.Add(this.BtnRezerv);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.TxtRezervTime);
            this.groupBox1.Location = new System.Drawing.Point(510, 21);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(184, 167);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Qeydiyyat";
            // 
            // BtnCheck
            // 
            this.BtnCheck.Location = new System.Drawing.Point(6, 115);
            this.BtnCheck.Name = "BtnCheck";
            this.BtnCheck.Size = new System.Drawing.Size(172, 23);
            this.BtnCheck.TabIndex = 3;
            this.BtnCheck.Text = "Hesabi cixart";
            this.BtnCheck.UseVisualStyleBackColor = true;
            this.BtnCheck.Click += new System.EventHandler(this.BtnCheck_Click);
            // 
            // BtnRezerv
            // 
            this.BtnRezerv.Location = new System.Drawing.Point(6, 79);
            this.BtnRezerv.Name = "BtnRezerv";
            this.BtnRezerv.Size = new System.Drawing.Size(172, 23);
            this.BtnRezerv.TabIndex = 2;
            this.BtnRezerv.Text = "Rezerv et";
            this.BtnRezerv.UseVisualStyleBackColor = true;
            this.BtnRezerv.Click += new System.EventHandler(this.BtnRezerv_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Qeydiyyat muddeti";
            // 
            // TxtRezervTime
            // 
            this.TxtRezervTime.Location = new System.Drawing.Point(6, 42);
            this.TxtRezervTime.Name = "TxtRezervTime";
            this.TxtRezervTime.Size = new System.Drawing.Size(172, 20);
            this.TxtRezervTime.TabIndex = 0;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button BtnCheck;
        private System.Windows.Forms.Button BtnRezerv;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtRezervTime;
    }
}

