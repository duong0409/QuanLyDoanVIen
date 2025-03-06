<?php include("header.php"); ?>
<?php
ob_start();
if(isset($_SESSION['name'])){
	  $conn = mysqli_connect('localhost', 'root', '', 'dtb_btl') or die ('Không thể kết nối tới database');
	  mysqli_set_charset($conn, 'utf8');
	if(isset($_GET['sub'])){ //Nếu ấn nút submit
      $sub=$_GET['sub'];
      //Xử lý việc xóa đoàn viên
      if($sub=='delete'){
        $madoanvien=$_GET['id'];// Lấy ID của đoàn viên cần xóa
        //xóa id của 2 bảng doanphi và doanvien
        $sql1 = "delete from doanphi where madoanvien='$madoanvien'";
        $sql2 ="delete from doanvien where madoanvien='$madoanvien'";
        if (mysqli_query($conn, $sql1)  && mysqli_query($conn, $sql2)) {
          echo "<script>alert('Xóa Thành Công');window.location='admin.php';</script>";
        } else {
          echo "Lỗi: " . $sql . "<br>" . mysqli_error($conn);
        }
      }
      // Xử lý việc cập nhật thông tin đoàn viên
      if($sub=='update'){
        $madoanvien=$_GET['id']; //lấy id đoàn viên
        // Câu lệnh SQL để lấy thông tin của đoàn viên
        $sql ="select doanvien.madoanvien, hoten, doanvien.malop, que, hoatdong, noiohientai, ngayvaodoan, noivaodoan,
         tenlop from doanvien JOIN lop on doanvien.malop = lop.malop where madoanvien='$madoanvien'";

        $result = mysqli_query($conn,$sql); // thực hiện câu lệnh
        $row = mysqli_fetch_assoc($result); //lấy kết quả truy vấn
        //lấy dữ liệu ra từ kết quả truy vấn 
        $ten=$row['hoten'];
        $que=$row['que'];$vao=$row['ngayvaodoan'];
        $noivao=$row['noivaodoan'];$loai=$row['hoatdong'];
        include("menu.php"); 

        // Hiển thị form cập nhật thông tin đoàn viên
        echo '<div class="block">
              <h1>Cập Nhật Đoàn Viên</h1>
              <div class="form">
              <form method="post" action="">
              <label>Tên ĐV</label><input type="text" name="ten" value="'.$ten.'"><br>
              <label>Lớp ĐV</label>
                <select name="lop">
                  <option value="1">CNTT1</option>
                  <option value="2">CNTT2</option>
                  <option value="3">CNTT3</option>
                  <option value="4">QTKD1</option>
                  <option value="5">QTKD2</option>
                  <option value="6">QTKD3</option>
                  <option value="7">KTXD1</option>
                  <option value="8">KTXD2</option>
                  <option value="9">KTXD3</option>
                </select><br>
              <label>Ngày Vào</label><input type="text" name="vao" value="'.$vao.'"><br>
              <label>Quê Quán</label><input type="text" name="que" value="'.$que.'"><br>
              <label>Nơi Vào</label><input type="text" name="noivao" value="'.$noivao.'"><br>
              <label>Xếp Loại</label><input type="text" name="loai" value="'.$loai.'"><br>
                <button name="submit"class="button"><span>Cập Nhật</span></button>
              </form>
              </div></div>';

        if(isset($_POST['submit'])){
          $ten=$_POST['ten'];$lop=$_POST['lop'];
          $que=$_POST['que'];$vao=$_POST['vao'];
          $noivao=$_POST['noivao'];$loai=$_POST['loai'];
          // Câu lệnh SQL để cập nhật thông tin đoàn viên
          $sql ="update doanvien set hoten='$ten',malop='$lop',ngayvaodoan='$vao',
          noivaodoan='$noivao',hoatdong='$loai' where madoanvien='$madoanvien'";
          if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Cập Nhật Thành Công');window.location='list.php?list=all';</script>";
          } else {
            echo "Lỗi: " . $sql . "<br>" . mysqli_error($conn);
          }
        }
      }

  	}
  	else {
?>
<?php include("menu.php");?>
  <?php
  if(isset($_GET['list'])){//nếu gửi ấn 1 nút
    $page=$_GET['list'];
    global $page;
    if($_GET['list']=='all'){ //hiển thị list all
      echo '<div class="block">
              <h1>Danh Sách Tất Cả Đoàn Viên</h1>';
        $sql ="select doanvien.madoanvien, hoten, doanvien.malop, que, hoatdong, noiohientai, ngayvaodoan,noivaodoan, tenlop from doanvien JOIN lop on doanvien.malop = lop.malop";
        $result = mysqli_query($conn,$sql);
        echo "
        <table>
          <tr>
            <th>Mã Đv</th>
            <th>Họ Tên</th>
            <th>Lớp</th>
            <th>Quê Quán</th>
            <th>Ngày Vào Đoàn</th>
            <th>Nơi Vào Đoàn</th>
            <th>Xếp Loại</th>
            <th>Hành Động</th>
          </tr>";
            while($row = mysqli_fetch_assoc($result)) {
              echo "
                  <tr>
                    <td>" .$row['madoanvien']. "</td>
                    <td>" .$row['hoten']. "</td>
                    <td>" .$row['tenlop']. "</td>
                    <td>" .$row['que']. "</td>
                    <td>" .$row['ngayvaodoan']. "</td>
                    <td>" .$row['noivaodoan']. "</td>
                    <td>" .$row['hoatdong']. "</td>
                    <td style='text-align: center'>
                      <a class='red' href='list.php?sub=delete&id=".$row['madoanvien']. " '>Delete</a>
                      <a href='list.php?sub=update&id=".$row['madoanvien']. "'>Update</a>
                    </td>
                  </tr>";
            }
          echo "</table></div></div>";
    } 
    //kết thúc của trang tất cả
    else if($_GET['list']=='lop'){// danh sách theo lớp
      ?><div class="block">
              <h1>Danh Sách Đoàn Viên Theo Lớp</h1>
              <div class="form">
              <form method="post" action="">
                <label>Chọn Lớp Cần Xem</label><br>
                <select name="lop">
                  <option value="1">CNTT1</option>
                  <option value="2">CNTT2</option>
                  <option value="3">CNTT3</option>
                  <option value="4">QTKD1</option>
                  <option value="5">QTKD2</option>
                  <option value="6">QTKD3</option>
                  <option value="7">KTXD1</option>
                  <option value="8">KTXD2</option>
                  <option value="9">KTXD3</option>
                </select><br><br>
              <button name="submit" class="button"><span>Xem Danh Sách</span></button>
              </form></div></div>
      <?php
        if(isset($_POST['submit'])){
          $lop=$_POST['lop'];
          $sql ="select doanvien.madoanvien, hoten, doanvien.malop, que, hoatdong, noiohientai, ngayvaodoan,noivaodoan, tenlop from doanvien JOIN lop on doanvien.malop = lop.malop where lop.malop='$lop'";
          $result = mysqli_query($conn,$sql);
          echo "<div class='block'>
          <table>
            <tr>
              <th>Mã Đv</th>
              <th>Họ Tên</th>
              <th>Lớp</th>
              <th>Quê Quán</th>
              <th>Ngày Vào Đoàn</th>
              <th>Nơi Vào Đoàn</th>
              <th>Xếp Loại</th>
              <th>Hành Động</th>
            </tr>";
              while($row = mysqli_fetch_assoc($result)) {
                echo "
                    <tr>
                      <td>" .$row['madoanvien']. "</td>
                      <td>" .$row['hoten']. "</td>
                      <td>" .$row['tenlop']. "</td>
                      <td>" .$row['que']. "</td>
                      <td>" .$row['ngayvaodoan']. "</td>
                      <td>" .$row['noivaodoan']. "</td>
                      <td>" .$row['hoatdong']. "</td>
                      <td style='text-align: center'>
                        <a class='red' href='list.php?sub=delete&id=".$row['madoanvien']. " '>Delete</a>
                        <a href='list.php?sub=update&id=".$row['madoanvien']. "'>Update</a>
                      </td>
                    </tr>";

            } echo "</table></div></div></div>";
        }
    }
    else if($_GET['list']=='khoa'){// danh sách theo khóa
      ?><div class="block">
              <h1>Danh Đoàn Viên Theo Khóa</h1>
              <div class="form">
              <form method="post" action="">
                <label>Chọn Khóa Cần Xem</label><br>
                <select name="khoa">
                  <option value="1">K10</option>
                  <option value="2">K11</option>
                  <option value="3">K12</option>
                </select><br><br>
              <button name="submit" class="button"><span>Xem Danh Sách</span></button>
              </form></div></div>
      <?php
        if(isset($_POST['submit'])){
          $khoa=$_POST['khoa'];
          $sql ="select doanvien.madoanvien, hoten, doanvien.malop, tenlop,que, hoatdong, noiohientai, ngayvaodoan,tennganh,tenkhoahoc, noivaodoan from doanvien JOIN lop on doanvien.malop = lop.malop JOIN nganhhoc ON lop.manganh = nganhhoc.manganh join khoahoc on nganhhoc.makhoahoc = khoahoc.makhoahoc WHERE khoahoc.makhoahoc ='$khoa'";
          $result = mysqli_query($conn,$sql);
          echo "<div class='block'>
          <table>
            <tr>
              <th>Mã Đv</th>
              <th>Họ Tên</th>
              <th>Lớp</th>
              <th>Ngành Học</th>
              <th>Khóa Học</th>
              <th>Quê Quán</th>
              <th>Xếp Loại</th>
              <th>Hành Động</th>
            </tr>";
              while($row = mysqli_fetch_assoc($result)) {
                echo "
                    <tr>
                      <td>" .$row['madoanvien']. "</td>
                      <td>" .$row['hoten']. "</td>
                      <td>" .$row['tenlop']. "</td>
                      <td>" .$row['tennganh']. "</td>
                      <td>" .$row['tenkhoahoc']. "</td>
                      <td>" .$row['que']. "</td>
                      <td>" .$row['hoatdong']. "</td>
                      <td style='text-align: center'>
                        <a class='red' href='list.php?sub=delete&id=".$row['madoanvien']. " '>Delete</a>
                        <a href='list.php?sub=update&id=".$row['madoanvien']. "'>Update</a>
                      </td>
                    </tr>";

            } echo "</table></div></div></div>";
        }
    }
    else if($_GET['list']=='nganh'){// danh sách theo ngành
      ?><div class="block">
              <h1>Danh Đoàn Viên Theo Ngành</h1>
              <div class="form">
              <form method="post" action="">
                <label>Chọn Ngành Cần Xem</label><br>
                <select name="nganh">
                  <option value="1">Điện</option>
                  <option value="2">Công nghệ thông tin</option>
                  <option value="3">Cơ Khí</option>
                  <option value="4">Quản trị kinh doanh</option>
                  <option value="5">Tài chính ngân hàng</option>
                  <option value="6">Công nghệ ô tô</option>
                  <option value="7">Tin học kế toán</option>
                  <option value="8">Xây dựng</option>
                  <option value="9">Tự động hóa</option>
                </select><br><br>
              <button name="submit" class="button"><span>Xem Danh Sách</span></button>
              </form></div></div>
      <?php
        if(isset($_POST['submit'])){
          $nganh=$_POST['nganh'];
          $sql ="select doanvien.madoanvien, hoten, doanvien.malop, tenlop,que, hoatdong, noiohientai, ngayvaodoan,tennganh,tenkhoahoc, noivaodoan from doanvien JOIN lop on doanvien.malop = lop.malop JOIN nganhhoc ON lop.manganh = nganhhoc.manganh join khoahoc on nganhhoc.makhoahoc = khoahoc.makhoahoc WHERE nganhhoc.manganh ='$nganh'";
          $result = mysqli_query($conn,$sql);
          echo "<div class='block'>
          <table>
            <tr>
              <th>Mã Đv</th>
              <th>Họ Tên</th>
              <th>Lớp</th>
              <th>Ngành Học</th>
              <th>Khóa Học</th>
              <th>Quê Quán</th>
              <th>Xếp Loại</th>
              <th>Hành Động</th>
            </tr>";
              while($row = mysqli_fetch_assoc($result)) {
                echo "
                    <tr>
                      <td>" .$row['madoanvien']. "</td>
                      <td>" .$row['hoten']. "</td>
                      <td>" .$row['tenlop']. "</td>
                      <td>" .$row['tennganh']. "</td>
                      <td>" .$row['tenkhoahoc']. "</td>
                      <td>" .$row['que']. "</td>
                      <td>" .$row['hoatdong']. "</td>
                      <td style='text-align: center'>
                        <a class='red' href='list.php?sub=delete&id=".$row['madoanvien']. " '>Delete</a>
                        <a href='list.php?sub=update&id=".$row['madoanvien']. "'>Update</a>
                      </td>
                    </tr>";
            } echo "</table></div></div></div>";
        }
    }
    else if($_GET['list']=='que'){
      echo '<div class="block">
              <h1>Danh Đoàn Viên Theo Quê</h1>
              <div class="form">
              <form method="post" action="">
                <input type="text" name="que1" placeholder="Hà Nội">
              <button name="submit" class="button"><span>Xem Danh Sách</span></button>
              </form></div></div>';
        if(isset($_POST['submit'])){
          $que=$_POST['que1'];
          $sql ="select doanvien.madoanvien, hoten, doanvien.malop, que, hoatdong, noiohientai, ngayvaodoan,noivaodoan, tenlop from doanvien JOIN lop on doanvien.malop = lop.malop where que='$que'";
          $result = mysqli_query($conn,$sql);
          echo "<div class='block'>
          <table>
            <tr>
              <th>Mã Đv</th>
              <th>Họ Tên</th>
              <th>Lớp</th>
              <th>Quê Quán</th>
              <th>Ngày Vào Đoàn</th>
              <th>Nơi Vào Đoàn</th>
              <th>Xếp Loại</th>
              <th>Hành Động</th>
            </tr>";
              while($row = mysqli_fetch_assoc($result)) {
                echo "
                    <tr>
                      <td>" .$row['madoanvien']. "</td>
                      <td>" .$row['hoten']. "</td>
                      <td>" .$row['tenlop']. "</td>
                      <td>" .$row['que']. "</td>
                      <td>" .$row['ngayvaodoan']. "</td>
                      <td>" .$row['noivaodoan']. "</td>
                      <td>" .$row['hoatdong']. "</td>
                      <td style='text-align: center'>
                        <a class='red' href='list.php?sub=delete&id=".$row['madoanvien']. " '>Delete</a>
                        <a href='list.php?sub=update&id=".$row['madoanvien']. "'>Update</a>
                      </td>
                    </tr>";
            }echo "</table></div></div></div>";
        }
    } echo "</div>";
  } else echo "Chưa ấn nút";
}
?> 
<?php
} else echo "Bạn phải đăng nhập để thực hiện các chức năng!<br>";
?>
</div>
<?php include("footer.php"); ?>