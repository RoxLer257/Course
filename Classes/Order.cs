//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CourseProject.Classes
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public int ID_Order { get; set; }
        public int ID_Dishes { get; set; }
        public int id_Users { get; set; }
        public int Quantity { get; set; }
        public double Summa { get; set; }
        public System.DateTime Order_Date { get; set; }
    
        public virtual Users Users { get; set; }
        public virtual Dishes Dishes { get; set; }
    }
}
