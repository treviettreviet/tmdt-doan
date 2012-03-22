<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Danh sách các bảng dữ liệu trong database
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Danh sách các bảng dữ liệu trong database</h2>
    <ul>
        <li><a href="/Permission/Admin">Admin</a></li>
        <li><a href="/Permission/Group">Group</a></li>
        <li><a href="/Permission/Permission">Permission</a></li>
        <li><a href="/Permission/TaiKhoan">TaiKhoan</a></li>
        <li><a href="/Permission/KhachHang">KhachHang</a></li>
        <li><a href="/Permission/MoiGioi">MoiGioi</a></li>
        <li><a href="/Permission/DiaChi">DiaChi</a></li>
        <li><a href="/Permission/LoaiGiayPhepKinhDoanh">LoaiGiayPhepKinhDoanh</a></li>
        <li><a href="/Permission/LoaiTaiKhoan">LoaiTaiKhoan</a></li>
        <li><a href="/Permission/The">The</a></li>
        <li><a href="/Permission/TheTam">TheTam</a></li>
        <li><a href="/Permission/LoaiThe">LoaiThe</a></li>
        <li><a href="/Permission/LoaiGiaoDich">LichSuGiaoDich</a></li>
        <li><a href="/Permission/LoaiGiaoDich">LoaiGiaoDich</a></li>
        <li><a href="/Permission/LogAction">LogAction</a></li>
        <li><a href="/Permission/NganHangLienKet">NganHangLienKet</a></li>
        <li><a href="/Permission/NgonNgu">NgonNgu</a></li>
        <li><a href="/Permission/NoiDung">NoiDung</a></li>
        <li><a href="/Permission/PhiGiaoDich">PhiGiaoDich</a></li>
        <li><a href="/Permission/ThamSo">ThamSo</a></li>
    </ul>
</asp:Content>
