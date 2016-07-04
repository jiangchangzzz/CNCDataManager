﻿using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Linq;
using CNCDataApi.Models;
using System.Web.Http.Results;

namespace CNCDataApi.Controllers.Tests
{
    [TestClass()]
    public class NCSystemIOUnitsControllerTests
    {
        [TestMethod()]
        public void GetNCSystemIOUnitsTest()
        {
            var con = new NCSystemIOUnitsController();
            int expected = 12;

            var result = con.GetNCSystemIOUnits();

            Assert.IsNotNull(result);
            Assert.AreEqual(expected, result.Count());
        }

        [TestMethod()]
        public void GetNCSystemIOUnitTest()
        {
            var con = new NCSystemIOUnitsController();

            var result = con.GetNCSystemIOUnit("HIO-1006").GetAwaiter().GetResult()
                as OkNegotiatedContentResult<NCSystemIOUnit>;

            Assert.IsNotNull(result);
        }
    }
}