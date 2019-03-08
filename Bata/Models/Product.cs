using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace Bata.Models
{
    public class Product
    {
        
        public int id
        {
            get;
            set;
        }

        
        public string productName
        {
            get;
            set;
        }

        
        public string imagePath{ get; set; }


        [DataType(DataType.Currency)]
        public string price { get; set; }

    }
}