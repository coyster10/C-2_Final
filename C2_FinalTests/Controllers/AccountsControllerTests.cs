using Microsoft.VisualStudio.TestTools.UnitTesting;
using C2_Final.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using C2_Final.Data;
using C2_Final.Models;

namespace C2_Final.Controllers.Tests
{
    [TestClass()]
    public class AccountsControllerTests
    {
        [TestMethod()]
        public void GetInstitutionsTest()
        {
            AccountsController test = new AccountsController("evrevretv");

            var result = test.GetInstitutions();

            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void WithdrawFundsTest()
        {
            AccountsController test = new AccountsController("wercerverv");

            var result = test.Withdraw("111111", "45");

            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AddFundsTest()
        {
            AccountsController test = new AccountsController("evervr4ev");

            var result = test.AddFunds("111111", "45");

            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AuthenticateEmployeeTest()
        {

            AuthenticationController test = new AuthenticationController();

            var result = test.employee_Login("c.bailey12@gmail.com", "password");

            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AuthenticateMemberTest()
        {

            AuthenticationController test = new AuthenticationController();

            var result = test.member_Login("c.bailey11@gmail.com", "CBpassword");

            Assert.IsNotNull(result);
        }
    }
}