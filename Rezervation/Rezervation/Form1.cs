using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Rezervation.Models;

namespace Rezervation
{
    public partial class Form1 : Form
    {
        private readonly CabinetRezervationEntities db = new CabinetRezervationEntities();
        private Cabinet SelectedCabinet;
        private Button SelectedCabinetButton;
        public Form1()
        {
            InitializeComponent();
            CreateCabinets();
        }
        public void CreateCabinets()
        {
            int X = 15;
            foreach (var item in db.Cabinets)
            {
                Button btn = new Button();
                btn.Name = "Btn" + item.Name;
                btn.Text = item.Name;
                if (item.IsReserved)
                {
                    btn.BackColor = Color.DarkRed;
                }
                else
                {
                    btn.BackColor = Color.GreenYellow;
                }
                btn.Width = 100;
                btn.Height = 100;
                btn.Location= new System.Drawing.Point(X, 42);
                X += btn.Width + 20;
                btn.Click+= new System.EventHandler(this.BtnCabinets_Click);
                this.Controls.Add(btn);
            }
        }

        private void BtnCabinets_Click(object sender, EventArgs e)
        {
            SelectedCabinetButton = sender as Button;
            if (!String.IsNullOrWhiteSpace(SelectedCabinetButton.Text))
            {
                Cabinet cabinet = db.Cabinets.FirstOrDefault(c => c.Name == SelectedCabinetButton.Text);
                if (cabinet != null)
                {
                    SelectedCabinet = cabinet;
                    if (SelectedCabinet.IsReserved==false)
                    {
                        BtnRezerv.Enabled = true;
                        BtnCheck.Enabled = false;
                        SelectedCabinetButton.BackColor = Color.Pink;
                        SelectedCabinetButton.FlatAppearance.BorderColor = Color.Plum;
                    }
                    else
                    {
                        BtnRezerv.Enabled = false;
                        BtnCheck.Enabled = true;
                    }
                }
            }

        }

        private void BtnRezerv_Click(object sender, EventArgs e)
        {
            if (SelectedCabinet.IsReserved==false)
            {
                DateTime StartDate = DateTime.Now;

                CabinetRezervation rezervation = new CabinetRezervation
                {
                    CabinetId = SelectedCabinet.Id,
                    StartDate = StartDate
                };
                if (!String.IsNullOrWhiteSpace(TxtRezervTime.Text))
                {
                    int Time = Convert.ToInt32(TxtRezervTime.Text);
                    DateTime EndDate = StartDate.AddMinutes(Time);
                    rezervation.EndDate = StartDate.AddMinutes(Time);
                    rezervation.TotalPrice = SelectedCabinet.Price * (Convert.ToDecimal(EndDate.Subtract(StartDate).TotalMinutes / 60));
                }
                db.CabinetRezervations.Add(rezervation);
                SelectedCabinet.IsReserved = true;
                db.SaveChanges();
                SelectedCabinetButton.BackColor = Color.DarkRed;
            }
            else
            {
                MessageBox.Show("Bu kabinet rezerv olunub");
            }

        }

        private void BtnCheck_Click(object sender, EventArgs e)
        {
            if (SelectedCabinet.IsReserved)
            {
                CabinetRezervation rezervation = db.CabinetRezervations.OrderByDescending(c => c.StartDate).Where(c => c.CabinetId == SelectedCabinet.Id).First();
                rezervation.TotalPrice = (Convert.ToDecimal(DateTime.Now.Subtract(rezervation.StartDate.Value).TotalSeconds) / 60) * SelectedCabinet.Price;
                rezervation.EndDate = DateTime.Now;
                SelectedCabinet.IsReserved = false;
                db.SaveChanges();
                MessageBox.Show(rezervation.TotalPrice.Value.ToString("0.00"));
                SelectedCabinetButton.BackColor = SystemColors.Control;
                BtnCheck.Enabled = false;
                //BtnRezerv.Enabled = true;
            }

        }
    }
}
