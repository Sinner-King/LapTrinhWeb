﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CKLTW
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class GKLTW12Entities : DbContext
    {
        public GKLTW12Entities()
            : base("name=GKLTW12Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CHITIETDONTHANG> CHITIETDONTHANG { get; set; }
        public virtual DbSet<CHUDE> CHUDE { get; set; }
        public virtual DbSet<DONDATHANG> DONDATHANG { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANG { get; set; }
        public virtual DbSet<NHACUNGCAP> NHACUNGCAP { get; set; }
        public virtual DbSet<SANPHAM> SANPHAM { get; set; }
    }
}
