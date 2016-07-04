﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;
using CNCDataApi.Models;
using System.Web.Http.Results;

namespace CNCDataApi.Controllers.Tests
{
    [TestClass()]
    public class SpindleSrvMotorParasControllerTests
    {
        [TestMethod()]
        public void GetSpindleSrvMotorParasTest()
        {
            var con = new SpindleSrvMotorParasController();
            int expected = 60;

            var result = con.GetSpindleSrvMotorParas();

            Assert.IsNotNull(result);
            Assert.AreEqual(expected, result.Count());
        }

        [TestMethod()]
        public void GetSpindleSrvMotorParaTest()
        {
            var con = new SpindleSrvMotorParasController();

            var result = con.GetSpindleSrvMotorPara("CTB-4011ZXB30").GetAwaiter().GetResult()
                as OkNegotiatedContentResult<SpindleSrvMotorPara>;

            Assert.IsNotNull(result);
        }
    }
}