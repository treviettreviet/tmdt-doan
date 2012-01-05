﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MoiGioi_Money10
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="MoiGioi")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertTaiKhoan(TaiKhoan instance);
    partial void UpdateTaiKhoan(TaiKhoan instance);
    partial void DeleteTaiKhoan(TaiKhoan instance);
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["MoiGioiConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<TaiKhoan> TaiKhoans
		{
			get
			{
				return this.GetTable<TaiKhoan>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TaiKhoan")]
	public partial class TaiKhoan : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MaTaiKhoan;
		
		private System.Nullable<decimal> _SoDu;
		
		private System.Nullable<int> _SoTaiKhoan;
		
		private string _MaLoaiTaiKhoan;
		
		private string _Email;
		
		private string _MatKhau;
		
		private string _MatKhauGiaoDich;
		
		private System.Nullable<int> _TinhTrang;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaTaiKhoanChanging(string value);
    partial void OnMaTaiKhoanChanged();
    partial void OnSoDuChanging(System.Nullable<decimal> value);
    partial void OnSoDuChanged();
    partial void OnSoTaiKhoanChanging(System.Nullable<int> value);
    partial void OnSoTaiKhoanChanged();
    partial void OnMaLoaiTaiKhoanChanging(string value);
    partial void OnMaLoaiTaiKhoanChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnMatKhauChanging(string value);
    partial void OnMatKhauChanged();
    partial void OnMatKhauGiaoDichChanging(string value);
    partial void OnMatKhauGiaoDichChanged();
    partial void OnTinhTrangChanging(System.Nullable<int> value);
    partial void OnTinhTrangChanged();
    #endregion
		
		public TaiKhoan()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaTaiKhoan", DbType="VarChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MaTaiKhoan
		{
			get
			{
				return this._MaTaiKhoan;
			}
			set
			{
				if ((this._MaTaiKhoan != value))
				{
					this.OnMaTaiKhoanChanging(value);
					this.SendPropertyChanging();
					this._MaTaiKhoan = value;
					this.SendPropertyChanged("MaTaiKhoan");
					this.OnMaTaiKhoanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoDu", DbType="Decimal(18,0)")]
		public System.Nullable<decimal> SoDu
		{
			get
			{
				return this._SoDu;
			}
			set
			{
				if ((this._SoDu != value))
				{
					this.OnSoDuChanging(value);
					this.SendPropertyChanging();
					this._SoDu = value;
					this.SendPropertyChanged("SoDu");
					this.OnSoDuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoTaiKhoan", DbType="Int")]
		public System.Nullable<int> SoTaiKhoan
		{
			get
			{
				return this._SoTaiKhoan;
			}
			set
			{
				if ((this._SoTaiKhoan != value))
				{
					this.OnSoTaiKhoanChanging(value);
					this.SendPropertyChanging();
					this._SoTaiKhoan = value;
					this.SendPropertyChanged("SoTaiKhoan");
					this.OnSoTaiKhoanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaLoaiTaiKhoan", DbType="VarChar(10)")]
		public string MaLoaiTaiKhoan
		{
			get
			{
				return this._MaLoaiTaiKhoan;
			}
			set
			{
				if ((this._MaLoaiTaiKhoan != value))
				{
					this.OnMaLoaiTaiKhoanChanging(value);
					this.SendPropertyChanging();
					this._MaLoaiTaiKhoan = value;
					this.SendPropertyChanged("MaLoaiTaiKhoan");
					this.OnMaLoaiTaiKhoanChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="VarChar(50)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MatKhau", DbType="NVarChar(50)")]
		public string MatKhau
		{
			get
			{
				return this._MatKhau;
			}
			set
			{
				if ((this._MatKhau != value))
				{
					this.OnMatKhauChanging(value);
					this.SendPropertyChanging();
					this._MatKhau = value;
					this.SendPropertyChanged("MatKhau");
					this.OnMatKhauChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MatKhauGiaoDich", DbType="VarChar(50)")]
		public string MatKhauGiaoDich
		{
			get
			{
				return this._MatKhauGiaoDich;
			}
			set
			{
				if ((this._MatKhauGiaoDich != value))
				{
					this.OnMatKhauGiaoDichChanging(value);
					this.SendPropertyChanging();
					this._MatKhauGiaoDich = value;
					this.SendPropertyChanged("MatKhauGiaoDich");
					this.OnMatKhauGiaoDichChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TinhTrang", DbType="Int")]
		public System.Nullable<int> TinhTrang
		{
			get
			{
				return this._TinhTrang;
			}
			set
			{
				if ((this._TinhTrang != value))
				{
					this.OnTinhTrangChanging(value);
					this.SendPropertyChanging();
					this._TinhTrang = value;
					this.SendPropertyChanged("TinhTrang");
					this.OnTinhTrangChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
