using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopCart
{
    public class UpdatePQty
    {
        public string Product_Id { set; get; }
        public int Order_Id { set; get; }
        public string Order_Status { set; get; }
    }
}