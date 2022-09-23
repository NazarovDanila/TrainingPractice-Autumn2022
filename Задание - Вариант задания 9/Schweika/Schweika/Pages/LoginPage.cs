using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Schweika.Utils;
using Schweika.ModelEF;
using Schweika.Pages;

namespace Schweika
{    
    public partial class LoginPage : Form
    {     
        static public Form prevPAGE = null;// статическое открытое поле для предыдущей формы
        public LoginPage()
        {
            InitializeComponent();
        }
        private void LoginPage_Load(object sender, EventArgs e)
        {
        }
        #region Кнопки
        private void EnterBtn_Click(object sender, EventArgs e)
        {
            if (LoginTB.Text == null || PasswordTB.Text == null)
            {
                MessageBox.Show("Нужно задать логин и пароль!");
                return;
            }
            if (DbConnect.db.User.Any(x => x.UserLogin == LoginTB.Text && x.UserPassword == PasswordTB.Text))
            {
                User usr = DbConnect.db.User.First(u => u.UserLogin == LoginTB.Text);
                switch (usr.UserRole)
                {
                    case 1:
                        AdministratorPage admPage = new AdministratorPage();// создаем форму директора                        
                        prevPAGE = this;// сохраняем в форме куда возвращаться
                        admPage.Show();// показываем форму директора
                        this.Hide();// форму подключения скрываем (но не закрываем!)
                        break;
                    case 2:
                        ProductPage prodPage = new ProductPage();// создаем форму директора                        
                        prevPAGE = this;// сохраняем в форме куда возвращаться
                        prodPage.Show();// показываем форму директора
                        this.Hide();// форму подключения скрываем (но не закрываем!)
                        break;
                    case 3:
                        ManagerPage manPage = new ManagerPage();// создаем форму директора                        
                        prevPAGE = this;// сохраняем в форме куда возвращаться
                        manPage.Show();// показываем форму директора
                        this.Hide();// форму подключения скрываем (но не закрываем!)
                        break;
                }
                LoginTB.Clear();
                PasswordTB.Clear();
            }
            else
            {
                MessageBox.Show("Пользователя с таким логином и паролем нет!");
                LoginTB.Clear();
                PasswordTB.Clear();
            }
        }
        private void Closebtn_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        #endregion
    }
}
