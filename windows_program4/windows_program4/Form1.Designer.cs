namespace windows_program4
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            text_principle = new TextBox();
            label2 = new Label();
            text_years = new TextBox();
            text_rate = new TextBox();
            label3 = new Label();
            calculate = new Button();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = SystemColors.ButtonFace;
            label1.Location = new Point(261, 205);
            label1.Name = "label1";
            label1.Size = new Size(98, 15);
            label1.TabIndex = 0;
            label1.Text = "principle amount";
            label1.Click += label1_Click;
            // 
            // text_principle
            // 
            text_principle.Location = new Point(365, 202);
            text_principle.Name = "text_principle";
            text_principle.Size = new Size(100, 23);
            text_principle.TabIndex = 1;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(264, 244);
            label2.Name = "label2";
            label2.Size = new Size(95, 15);
            label2.TabIndex = 2;
            label2.Text = "Number of Years";
            // 
            // text_years
            // 
            text_years.Location = new Point(365, 241);
            text_years.Name = "text_years";
            text_years.Size = new Size(100, 23);
            text_years.TabIndex = 3;
            // 
            // text_rate
            // 
            text_rate.Location = new Point(365, 281);
            text_rate.Name = "text_rate";
            text_rate.Size = new Size(100, 23);
            text_rate.TabIndex = 5;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(264, 284);
            label3.Name = "label3";
            label3.Size = new Size(30, 15);
            label3.TabIndex = 4;
            label3.Text = "Rate";
            // 
            // calculate
            // 
            calculate.Location = new Point(324, 329);
            calculate.Name = "calculate";
            calculate.Size = new Size(75, 23);
            calculate.TabIndex = 6;
            calculate.Text = "Calculate";
            calculate.UseVisualStyleBackColor = true;
            calculate.Click += calculate_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(calculate);
            Controls.Add(text_rate);
            Controls.Add(label3);
            Controls.Add(text_years);
            Controls.Add(label2);
            Controls.Add(text_principle);
            Controls.Add(label1);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private TextBox text_principle;
        private Label label2;
        private TextBox text_years;
        private TextBox text_rate;
        private Label label3;
        private Button calculate;
    }
}