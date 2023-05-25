CREATE DATABASE SczaaUvzwE;

USE SczaaUvzwE;

CREATE TABLE Category
(
	id INT PRIMARY KEY auto_increment,
    name CHAR(50),
    status INT
);

CREATE TABLE Product
(
	id INT PRIMARY KEY auto_increment,
    name CHAR(100),
    price INT,
    quantity INT,
    image CHAR(255),
    description text,
    manufacturer CHAR(100),
    catID INT REFERENCES Category(id),
    status int
);

INSERT INTO Category VALUES(1, "Mô hình ô tô", 1);
INSERT INTO Category VALUES(2, "Đồ chơi Pokemon", 1);
INSERT INTO Category VALUES(3, "Đồ chơi đất nặn", 1);
INSERT INTO Category VALUES(4, "Đồ chơi gỗ", 1);
INSERT INTO Category VALUES(5, "Đồ chơi giáo dục", 1);
INSERT INTO Category VALUES(6, "Đồ chơi thông minh", 1);

-- -- -- -- -- -- -- -- -- -- ĐỒ CHƠI Ô TÔ
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe khủng long", 300000, 200, "/View/Customer/img/products/Oto/Xe_khung_long.jpg", "Sản phẩm xe tải chở khủng long kích thước lớn được thiết kế chắc chắn,
màu sắc tươi sang, hoạt động hoàn hảo tạo cảm giác thích thú cho bé khi chơi, bên cạnh đó xe được tặng kèm 3 chú khủng long dễ thương cho bé thỏa sức sáng tạo. 
Đồ chơi thiết kế thông minh, an toàn cho bé khi chơi", "OEM - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe công trình chuyên dụng", 249000, 100, "/View/Customer/img/products/Oto/Xe_cong_trinh_chuyen_dung.jpg", "Chức năng chính của xe tải sàn thấp là vận chuyển các thiết bị máy móc ở công trường,
được làm từ nhựa ABS và kim loại cao cấp, khung xe chắc chắn, người lái có thể quay 360 độ giúp dễ dàng hơn trong việc vận chuyển. Hơn thế nữa, mô hình này đã thể hiện rõ như thực tế. 
Các bé hãy cùng nhau lái xe ra công trường và giúp các cô chú công nhân nào.", "Jingbang - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe ô tô mini", 139000, 300, "/View/Customer/img/products/Oto/Xe_o_to_mini.jpg", "Màu sắc đa dạng, đẹp, nhỏ gọn bé có thể mang theo đi bất cứ đâu, không sắc nhọn, an toàn với trẻ nhỏ. 
Phù hợp với các bé nhỏ tuổi, chất liệu nhựa an toàn cho bé, lốp xe bằng cao su mềm có độ ma sát và độ bám rất tốt, xe có thể di chuyển dễ dàng trên nhiều địa hình khác nhau", "B-STAR - Việt Nam", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe địa hình cảnh sát", 299000, 180, "/View/Customer/img/products/Oto/Xe_dia_hinh_canh_sat.jpg", "Đây là dòng xe với những nét thiết kế đặc trưng theo phong cách xe đua vượt địa hình, 
với 2 bánh cao giúp xe có thể dễ dàng di chuyển ở nhiều địa hình khó. Sẽ có thể di chuyển lên xuống, quẹo trái và phải, cùng với các họa tiết được tô điểm một cách ngẫu nhiên dọc thân xe chắc chắn
các bé sẽ thích mê món đồ chơi xe điều khiển này cho mà xem.", "VECTO - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe biến hình robot", 500000, 145, "/View/Customer/img/products/Oto/Xe_bien_hinh_robot.jpg","Xe điều khiển từ xa biến hình thành robot có sạc, ô tô có thể biến đổi ra nhiều hình dáng khác nhau, 
nhờ đó nâng cao khả năng quan sát và tư duy của trẻ. Xe được làm từ chất liệu nhựa cao cấp, an toàn với sức khỏe trẻ nhỏ khi sử dụng, để phụ huynh an tâm khi bé vui chơi.", "Daesung Toys - Hàn Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Máy kéo bánh xích điều kiển từ xa", 550000, 130, "/View/Customer/img/products/Oto/May_keo_banh_xich_dieu_khien_tu_xa.jpg", "Sản phẩm được thiết kế rất tinh xảo cộng thêm hệ thống âm thanh động cơ sống động 
cùng với tay điều khiển 22 kênh đầy đủ các chức năng mang lại cho người chơi một cảm giác như đang được trải nghiệm một chiếc máy xúc thực thụ.", "Toycity - Thụy Điển", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe kim loại quân sự", 849000, 150, "/View/Customer/img/products/Oto/Xe_kim_loai_quan_su.jpg", "Xe ô tô quân đội tỉ lệ 1:32 bằng sắt chạy cót và mở 2 cửa xe trước, xe được làm bằng chất liệu 
kim loại chống gỉ và nhựa giống hệt với xe thực tế với tỉ lệ thu nhỏ 1:32. Kích thước xe :DxRxC15,5 cm x 6,0cm x 5,0cm. Kích thước hộp : DxRxC 20cm x 10cm x 10cm. 
Xe không sử dụng pin để chạy, xe chạy đẩy tay, mở được cửa 2 bên xe , cốp xe nắp máy như hình ảnh đính kèm. Xe có âm thanh và đèn khi mở cửa xe hoặc đặt xe xuống đất rồi ấn nhẹ đuôi xe",
"MINIAUTO - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe ô tô, xe buýt, máy bay giao thông", 375000, 100, "/View/Customer/img/products/Oto/Xe_oto_xe_buyt_may_bay_giao_thong.jpg", "Đồ chơi mô hình máy bay chứa các bộ xe ô tô cảnh sát cho bé yêu tập trung vui vẻ chơi tại nhà tập tính tự lập cho bé. 
Bộ bao gồm các chi tiết : máy bay đa chức năng như có loa thông báo, chạy được pin, phát sáng, 4 xe ôtô và 1 máy bay trực thăng, có cabin và trang trượt trong máy bay và các loại biển báo giao thông
, màu sắc hấp dẫn và vật liệu an toàn. Kích thước máy bay : 33 x 29 x 15 cm, kích thước xe cảnh sát : 7 x 3 x 2.5 cm. Giúp bé phát triển trí não toàn diện, tăng khả năng ghi nhớ, trí tưởng tượng
,trò chơi thú vị cho bé và cả gia đình.", "VECTO - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe chòi chân bốn bánh", 190000, 200, "/View/Customer/img/products/Oto/Xe_choi_chan_bon_banh.jpg", "Sản phẩm với thiết kế chòi chân không chỉ giúp bé tập đi thăng bằng với xe, mà còn giúp tăng khả năng vận động ở trẻ nhỏ, 
mang đến cho bé yêu những giờ phút vui chơi thú vị bên bạn bè và người thân, giúp bé phát triển cả về thể chất và tinh thần. Với thiết kế mới,
 yên xe và tay lái được bọc nệm mềm giúp bé thoải mái khi ngồi, đặc biệt tay lái và yên x", "BBT GLOBAL - Việt Nam", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe vượt địa hình", 900000, 50, "/View/Customer/img/products/Oto/Xe_vuot_dia_hinh.jpg", "Chiếc xe được làm bằng vật liệu chất lượng cao và chắc chắn với khả năng chống va chạm và chống va đập. Với lốp cao su rỗng mềm và hệ thống giảm xóc chuyên nghiệp có hiệu suất tuyệt vời. 
Chắc chắn là món quà tốt nhất cho trẻ em từ sự chọn lựa của gia đình.", "MINIAUTO - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe quân đội vượt địa hình", 426000, 250, "/View/Customer/img/products/Oto/Xe_quan_doi_vuot_dia_hinh.jpg", "Xe tải quân sự điều khiển bằng radio của Mỹ có nhiều màu sắc khác nhau, được sản xuất theo tỷ lệ 1/12, có đầy đủ ổ đĩa cardan và bộ vi sai bền. 
Cầu được gắn trên lò xo kim loại, cho phép bạn vận chuyển thoải mái các vật phẩm khác nhau có trọng lượng lên tới 1,2 kg trên những con đường không bằng phẳng. 
Bánh xe với lốp cao su mềm với gai lốp hung hãn cho phép chiếc xe tải nhỏ vượt địa hình mà không gặp vấn đề gì.", "MINIAUTO - Trung Quốc", 1, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Xe cứu hỏa", 636000, 180, "/View/Customer/img/products/Oto/Xe_cuu_hoa.jpg", "Xe cứu hỏa phun nước chạy đà đồ chơi trẻ em. Xe được làm theo mô hình giống hệt các xe cứu hỏa thực tế, xe có mô hình tỉ lệ 1:16, 
thiết kế bằng nhựa ABS với màu đỏ rất nổi bật, Xe cứu hỏa có âm nhạc và đèn nháy trên cabin xe, loại xe cầu thang rút có thể nâng hạ cần và kéo dài cần, xe có 6 bánh được làm từ nhựa và cao su.
Kích thước xe : 27cm x 10.0cm x 12.0cm, kích thước hộp xe : 32.5cm x 21cm x 12cm, khối lượng xe khoảng : 600g", "Herbie - Đức", 1, 1);

-- -- -- -- -- -- -- -- -- -- ĐỒ CHƠI POKEMON
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Lắp ráp Pokemon", 499000, 200, "/View/Customer/img/products/Pokemon/Lap_rap_pokemon.jpg", "Mô hình KEEPPLAY được làm từ chất liệu nhựa ABS được cắt ghép thành từng mảnh, mô phỏng mô hình các xe tăng, thiết kế độc đáo và bắt mắt. 
Mang lại sự trải nghiệm thú vị khi tự tay lắp ghép các tuyệt tác, chất liệu bền đẹp.", "BANDAI - Nhật Bản", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Mô hình Pokemon", 100000, 300, "/View/Customer/img/products/Pokemon/Mo_hinh_pokemon.jpg", "đồ chơi mô hình Pokemon bằng nhựa 24 con (5cm) là loại đồ chơi mô hình các chú pokemon được thiết kế với màu sắc tươi sáng, nhỏ nhắn, chân thật chắc chắn sẽ là món đồ chơi Pokemon được các bé yêu thích bộ phim hoạt hình này,
 muốn sưu tập cho mình những chú Pokemon dễ thương nhất. Sản phẩm dành cho các bé từ 5 tuổi trở lên.", "TAKARATOMY - Nhật Bản", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Quả cầu Pokemon", 60000, 500, "/View/Customer/img/products/Pokemon/Qua_cau_pokemon.jpg", "Sản phẩm Mô hình Quả Cầu Pokemon Go, Anime, Đồ chơi tự động ném thú Pikachu bao gồm 1 quả cầu và 1 mô hình pokemon chất lượng đảm bảo.
Kích thước mô hình: 8x8cm, chất liệu: Nhựa ABS, sử dụng mô hình thực tế là một phương pháp hiệu quả để dạy trẻ, giúp trẻ dễ dàng khám phá và học hỏi hơn.", "OEM - Trung Quốc", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Thẻ bài Pokemon", 229000, 350, "/View/Customer/img/products/Pokemon/The_bai_pokemon.jpg", "Rèn luyện khả năng: Phát triển trí tuệ, phối hợp tay và não, trau dồi sở thích, cảm xúc, đồ chơi tương tác, tăng thị giác. 
Gói hàng bao gồm: 1 Hộp gồm 36 gói, 1 gói gồm 9 thẻ,8 túi mỗi thẻ + 1 thẻ flash ,tổng cộng 324 thẻ. Với Pokémon TCG bạn có thể vừa sưu tập, vừa đấu bài với người khác, 
đấu bài online hoặc chỉ đơn giản là sưu tập những mẫu thẻ bài mình yêu thích", "Nifoki - Thái Lan/Trung Quốc/Malaysia", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Pokemon điện tử", 300000, 200, "/View/Customer/img/products/Pokemon/Pokemon_dien_tu.jpg", "Đồ chơi bóng Pokemon bằng nhựa ABS cao cấp, cứng cáp, rất bền và chịu va đập tốt. Mô hình Pikachu có thể gấp gọn mini và lấy từ trong quả bóng Pokemon như trong phim. 
Các nhân vật Pokémon gồm nhiều khớp cử động linh hoạt, chi tiết sắt nét rất sắc nét.", "MySun - Việt Nam", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Quyển bí kiếp Pokemon cỡ nhỏ", 100000, 150, "/View/Customer/img/products/Pokemon/Quyen_bi_kiep_pokemon_co_nho.jpg", "Giữ 90 thẻ hoặc 180 thẻ hai mặt(lật mặt sau), Album đựng các thẻ bài pokemon cho sưu tầm, chất liệu: Giấy + PVC
 Kích thước: xấp xỉ.32,5cmx20cm, kích thước túi 9cmx7cm", "Nifoki - Trung Quốc", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Quyển bí kiếp Pokemon cỡ lớn", 150000, 100, "/View/Customer/img/products/Pokemon/Quyen_bi_kiep_pokemon_co_lon.jpg", "Pokémon Sun Và Moon - Bách Khoa Toàn Thư - Một ấn phẩm không thể bỏ qua dành cho tất cả những người yêu thích và muốn tìm hiểu về các Pokémon!
Tổng số Pokémon ở cả 2 quyển là 802 loài, từ điển được sắp xếp theo thứ tự bảng chữ cái, cực kỳ dễ tra cứu, tất tần tật những thông tin bạn cần biết: từ hình dáng, bí mật đến chuỗi tiến hóa sẽ được tiết lộ trong bộ sách đồ sộ này!", 
"NXB Kim Đồng - Việt Nam", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Hình dán Pokemon", 55000, 500, "/View/Customer/img/products/Pokemon/Hinh_dan_pokemon.jpg", "Tất cả đều được cắt sẵn, dễ dàng sử dụng. Khi bóc hầu như không để lại keo dính, nếu để lại một ít cũng dễ dàng lau sạch. Chất liệu: PVC. Kích thước: 4-10cm
Sticker (decal, tem, hình dán) dùng để trang trí lên tất cả bề mặt cứng như mũ bảo hiểm, laptop, vali du lịch, xe đạp, xe máy, ô tô, ván trượt, hộp bút, điện thoại, máy tính, tủ lạnh, tủ quần áo, tường, cửa, đàn guitar...
Chống nắng và chống thấm nước, trang trí xe hơi, trang trí thời trang thủ công", "OEM - Trung Quốc", 2, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Thẻ bài Pokemon kim loại", 205000, 300, "/View/Customer/img/products/Pokemon/The_bai_pokemon_kim_loai.jpg", "Độ dày: 0.4mm, kích thước thẻ: 8.8*6.3cm, chất liệu: Kim loại, độ tuổi sử dụng: 3-12 tuổi. Tất cả các hình ảnh thẻ được chụp bằng hiện vật, và các thẻ là thẻ sáng bóng hoàn toàn mới, 
Chào mừng bạn đến mua hàng, chúng tôi sẽ gửi cho bạn sớm nhất có thể", "Nifoki - Trung Quốc", 2, 1 );

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Móc khóa Pokemon", 62000, 400, "/View/Customer/img/products/Pokemon/Moc_khoa_pokemon.jpg", "Tạo hình từ những chú Pokemon dễ thương từ bộ phim hoạt hình cùng tên. Móc khóa: nhựa PVC tổng hợp an toàn cho sức khỏe. Khoen móc khóa làm từ hợp kim nhôm cứng chắc. 
Công dụng: treo chìa khóa, Usb, thẻ siêu thị, trang trí balo. Móc khóa có kiểu dáng ngộ nghĩnh, dễ thương, nhiều hình phù hợp với mọi đối tượng sử dụng", "BAIMAO - Trung Quốc", 2, 1);

-- -- -- -- -- -- -- -- -- -- ĐỒ CHƠI ĐẤT NẶN
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn 36 kèm khuôn", 199000, 200, "/View/Customer/img/products/Datnan/Dat_nan_36_mau_kem_khuon.jpg", "Hộp đồ chơi đất sét 24 màu cho bé được làm từ nguyên liệu tự nhiên: bột gỗ, chất làm quánh. Không độc hại; Không dây bẩn ra sàn nhà. Bao gồm: 24 màu, 21 khuôn hình, dao cắt, và phụ kiện khác. 
Có sách hướng dẫn. Dễ chơi, dễ tạo hình, kích thích óc sáng tạo. Sản phẩm kèm hộp đựng tiện lợi. Hộp đồ chơi đất sét 24 màu cho bé tạo hình khối không độc hại cho trẻ em", "Toyroyal - Nhật Bản", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đắt nặn làm bánh", 225000, 300, "/View/Customer/img/products/Datnan/Dat_nan_lam_banh.jpg", "Đất nặn khay bánh ngọt ngào Play-doh B0307 với các gam màu tươi sáng và chất liệu bột mì an toàn, bé yêu của mẹ thỏa sức sáng tạo và nhào nặn ra những con vật, đồ vật đẹp mắt,
bé có thể tăng cường trí sáng tạo của mình bởi những sản phẩm tạo ra với hình thù ngộ nghĩnh và đáng yêu nhất.", "GuangZhou - Trung Quốc", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn Nara", 60000, 400, "/View/Customer/img/products/Datnan/Dat_nan_Nara.jpg", "Đất nặn Nara bao gồm 12 màu sắc neol tươi sáng và dụng cụ tạo hình đát nặn giúp bé nhanh chóng ghi nhớ các màu sắc. 
Đây còn là trò chơi giúp trẻ phát triển trí tuệ bằng cách trẻ sẽ tự tay làm những mẫu vật khác nhau kèm theo những dụng cụ và khuôn hình cho bé tha hồ sáng tạo thế giới đầy màu sắc cho riêng mình.", "Nara - Nhật Bản", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn xô 12 màu", 49000, 300, "/View/Customer/img/products/Datnan/Dat_nan_xo_12_mau.jpg", "Đuợc làm từ chất liệu cao cấp, sáp màu không chỉ cho độ mềm dẻo mà còn có độ bền tốt. Khi để lâu trong không khí hay sử dụng trong thời gian dài, sáp nặn cũng không bị khô cứng hay vón cục.
Sáp màu an toàn, không độc hại, không tạo mùi khó chịu và không dính sáp ra tay bé khi sử dụng. Sáp nặn là sự kết hợp giữa màu sắc và hình thể, trẻ có thể tha hồ sáng tạo ra mọi hình dáng bé muốn. Sản phẩm không chỉ giúp bé phát huy được trí tưởng tượng, 
kích thích được thị giác và còn rèn luyện cho bé được tính tỉ mỉ, khéo tay", "	GuangBo - Trung Quốc", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn nhiều màu Deli", 75000, 250, "/View/Customer/img/products/Datnan/Dat_nan_nhieu_mau_Deli.jpg", "Đất nặn nhiều màu Deli - hộp nhựa có quai xáchChất liệu: Bột mì, Nước, Chất tạo màu thực phẩm (Nguyên liệu gần tương tự nguyên liệu làm Tò he). Cực kì an toàn cho trẻ nhỏChất liệu an toàn gần giống Tò he, tuy nhiên đã được cải tiến nên rất mềm, 
dễ nặn và tạo nhiều hình thù khác nhau. Màu sắc tươi sáng bắt mắt, kích thích thị giác và sự sáng tạo cho bé", "Deli - Trung Quốc", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn MIC 10 màu", 20000, 500, "/View/Customer/img/products/Datnan/Dat_nan_Mic_10_mau.jpg", "Đất Nặn Học Tập 10 Màu thơm MIC thích hợp với các bé mẫu giáo, cấp 1 để trẻ thỏa sức phát triển có màu sắc tươi sáng, mềm dẻo, vừa dễ tạo hình, vừa không bị nứt khi sử dụng. Sáp màu an toàn, không độc hại, 
không tạo mùi khó chịu và không dính sáp ra tay bé khi sử dụng. Có độ dầu cao, chống dính, vì vậy sau khi đắp các màu sắc khác nhau của sáp nặn để tạo hình, bé cũng rất dễ dàng để tách các màu ra. Khi để lâu trong không khí hay sử dụng trong thời gian dài, 
sáp nặn không bị khô cứng hay vón cục. Với loại sáp này, bé có thể trộn sáp nặn có nhiều màu khác nhau để tạo ra màu mới. Khi trộn sáp, màu được hình thành rất đẹp, đều mịn và tươi sáng.", "MIC - Việt Nam", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn 14 khuôn tạo hình ngộ nghĩnh", 90000, 200, "/View/Customer/img/products/Datnan/Dat_nan_14_khuon_tao_hinh_ngo_nghinh.jpg", "Bộ sản phẩm có 14 khuôn chơi màu sắc rực rỡ họa tiết bắt mắt giúp bé có nhiều trải nghiệm hơn khi chơi khuôn được thiết kế để dễ dàng cắt đất nặn mà không bị bám dính, lại rất dễ dàng lau rửa sau khi chơi cùng đất nặn 
Kích thước được thiết kế vừa vặn để cho trẻ từ 3 đến 5 tuổi dễ dàng tạo hình  nhanh và đơn giản với mọi loại đất nặn. Bộ khuôn đất nặn là dụng cụ hữu ích cho bé khi chơi cùng đất nặn an toàn", "Kid-Art - Thái Lan", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn và khuôn nhựa TAKACOL", 85000, 300, "/View/Customer/img/products/Datnan/Dat_nan_va_khuon_nhua_TAKACOL.jpg", "Bột nặn an toàn TAKACOL  cho ra mẫu mới, thêm nhiều khuôn trong 1 set (6 khuôn sinh động). Vẫn làm từ bột mì, có an toàn có kiểm định và nguồn gốc rõ ràng. Có nhiều màu sắc đa dạng, tiện lợi trong việc vui chơi cho em nhỏ", 
"TAKACOL - Việt Nam", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn an toàn TEDU", 209000, 150, "/View/Customer/img/products/Datnan/Dat_nan_an_toan_TEDU.jpg", "Đất nặn TEDU được nấu chín từ 100% nguyên liệu thực phẩm có nguồn gốc an toàn. Bởi những bàn tay cần mẫn và tỉ mỉ từng công đoạn, để đạt được sự hài lòng của những vị khách khó tính nhất. ", "TEDU - Việt Nam", 3, 1);

INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)
VALUES("Đất nặn heo làm mì", 238000, 200, "/View/Customer/img/products/Datnan/Dat_nan_heo_lam_mi.jpg", "Nếu không có cạnh và gờ sắc, bộ đồ chơi này sẽ không làm tổn thương trẻ em để chúng có thể thoải mái vui chơi và tận hưởng bản thân. Được thiết kế với mô hình con heo hoạt hình, nó không chỉ trau dồi nhận thức màu sắc của trẻ mà còn cải thiện sự phối hợp tay của trẻ.
Bộ đồ chơi này được làm bằng nhựa cao cấp. Chiều dài của máy mì là 18cm, chiều rộng là 9 và chiều cao là 12cm.", " Gincho - Trung Quốc", 3, 1);


-- Nhập product cho category 4 
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Xếp hình 140 khối gỗ không màu", 300000, 250, "/View/Customer/img/products/Go/Xep_hinh_140_khoi_go_khong_mau.jpg", 
"Đồ chơi xếp hình khối gỗ cho trẻ em, chất liệu gỗ sồi cao cấp dành cho bé từ 2 tuổi phát triển trí tuệ, hàng nội địa xuất khẩu châu Âu DCG004A. Khối gỗ không cán bằng parafin công nghiệp nên an toàn cho trẻ khi sử dụng. ", 
"Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Lắp ráp mô hình hệ Mặt Trời bằng gỗ", 382000, 240, "/View/Customer/img/products/Go/Lap_rap_mo_hinh_he_MT_bang_go.jpg", 
"Bộ lắp ráp mô hình Hệ mặt trời 3D Solar System. Đồ chơi lắp ráp mô hình 3D. Kích thước mô hình: 52.2 x 39.7 x 11.8 (cm). Chất liệu: Xốp. Màu sắc: Nhiều màu. Kích thước hộp: 22 x 29 x 3.5 (cm). Số mảnh ghép: 146 mảnh. Cách chơi: Lắp ráp các chi tiết theo hướng dẫn để hoàn thành mô hình 3D mô phỏng Hệ mặt trời. Các vật thể được thể hiện theo thứ tự từ trong ra ngoài: Mặt trời, Sao Thủy, Sao Kim, Trái Đất, Sao Hỏa, Sao Mộc, Sao Thổ, Sao Thiên Vương, Sao Hải Vương. Bộ sản phẩm bao gồm: 146 mảnh ghép bằng xốp, tờ hướng dẫn", 
"Magic Puzzle - Anh", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Xếp hình thành phố bằng gỗ", 330000, 255, "/View/Customer/img/products/Go/Xep_hinh_thanh_pho_bang_go.jpg", 
"Bộ xếp hình giao thông thành phố làm bằng gỗ , không ảnh hưởng đến sức khỏe của trẻ. Ngoài ra, sản phẩm có bề mặt nhẵn mịn, không gây ra những tổn thương cho trẻ khi chơi. Các bậc phụ huynh có thể hoàn toàn an tâm. Bộ xếp hình gồm 133 chi tiết được thiết kế tinh tế với màu sắc bắt mắt, thu hút sự chú ý của bé, đồng thời giúp bé cảm thấy thích thú khi chơi. Bộ đồ chơi kèm theo thảm chơi lắp ghép 2 mặt. Họa tiết ngộ nghĩnh chi tiết to không lo bé nuốt. Kích thước:25x25cm", 
"Trung Quốc", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bộ ghép gỗ 12 chủ đề", 70000, 200, "/View/Customer/img/products/Go/Bo_ghep_go_12_chu_de.jpg", 
"Bộ lật hình luyện trí nhớ 12 chủ đề, Rèn luyện trí nhớ và khả năng quan sát cho bé, M22. Đồ chơi gỗ - lật hình tìm cặp giống nhau, rèn luyện trí nhớ và khả năng quan sát cho bé. Các mẹ say mê phương pháp giáo dục Shichida chắc không quá xa lạ gì với hoạt động tương tác rèn luyện trí nhớ này. Cách chơi như sau: Xếp tấm thẻ có các cặp hình giống nhau vào khay gỗ. Đặt các núm gỗ lên. Cùng bé tìm các cặp hình giống nhau bằng cách lật núm. Gồm 1 khay gỗ đựng 16 núm gỗ. 6 tấm thẻ 2 mặt (tổng là 12 mặt chơi), cái này mẹ cũng dễ chế học liệu chơi lắm ạ. Các tấm thẻ level hình tăng dần độ khó để bé ko nhàm chán.", 
"Trung Quốc", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Thùng đồ chơi kỹ thuật bằng gỗ", 250000, 260, "/View/Customer/img/products/Go/Thung_do_choi_ky_thuat_bang_go.jpg", 
"Đồ Chơi Hộp Công Cụ Gỗ Cho Bé Tập Làm Kỹ Sư, Thợ Mộc 39 Chi Tiết. Đồ chơi phát triển trí tuệ: Hộp công cụ bằng gỗ cho bé. Nguyên liệu sản phẩm: gỗ thông. Trọng lượng sản phẩm: 1,3kg. Kích thước sản phẩm: 30 * 21 * 8CM. Thiết kế tinh xảo, đẹp mắt, kích thước phù hợp với khả năng cầm nắm của bé. Hộp gỗ đựng có khóa cài thiết kế chắc chắn giúp bé cất đồ chơi gọn gàng. Giúp bé nâng cao khả năng tập trung, quan sát và rèn sự khéo léo của ngón tay. Dành cho các bé từ 2,5 tuổi trở lên.", 
"Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đồ chơi trang điểm bằng gỗ", 230000, 200, "/View/Customer/img/products/Go/Do_choi_trang_diem_bang_go.jpg", 
"Bàn trang điểm | Winwintoys - 60582. Bé có thích làm đẹp giống mẹ hay hóa thân thành một chuyên gia trang điểm tài ba? Với đồ chơi trang điểm của Winwintoys, giờ đây bé yêu có thể thỏa sức tưởng tượng và tạo nên những câu chuyện thú vị của riêng mình khi vui chơi với người thân hay bạn bè. Bộ đồ chơi được thiết kế mô phỏng như thật chiếc bàn trang điểm với gương soi xinh xắn cùng với ngăn kéo nhỏ… Sản phẩm còn trang bị tất cả các dụng cụ trang điểm cần thiết để công chúa nhỏ của bạn có thể tận hưởng hàng giờ vui chơi như gương, lược, son môi, phấn, máy sấy tóc… Thông qua quá trình chơi và hóa thân thành chuyên gia trang điểm trẻ sẽ được: Rèn luyện kỹ năng, tính tỉ mỉ, khéo léo, khả năng phối hợp tay và mắt. Tăng khả năng giao tiếp và tương tác với bạn bè. Phát huy trí tưởng tượng, tư duy logic.", 
"Winwintoys - Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Trò chơi đập chuột bằng gỗ", 270000, 200, "/View/Customer/img/products/Go/Tro_choi_xe_dap_chuot_bang_go.png", 
"BỘ ĐẬP CHUỘT 3 IN 1 BAO GỒM ĐÀN, ĐẬP CHUỘT- BÁNH RĂNG XOAY. TỔNG HỢP 3 TRÒ HOT NHẤT TRÊN MỘT MÓN ĐỒ CHƠI CHO BÉ. Thay vì mua cho bé 3 đồ chơi, hãy tặng bé đồ chơi kết hợp 3 trong 1. Trò chơi ai nhanh tay nhanh mắt với bộ búa đập chuột. Đã đến lúc, con cần rèn luyện đôi mắt tinh anh, phản xạ nhanh nhạy với sự kết hợp ăn ý giữa tay và mắt. Bộ đúa đập chuột quen thuộc nhưng có nhiều cải tiến mới: Gồm 10 con chuột, nhiều nhất từ trước tới nay chia làm 2 hàng với 2 búa cho bé chơi 2 tay hoặc chơi cùng với gia đình, bạn bè. Bộ thiết kế hình ô tô chú voi con có dây kéo cho con dễ dàng di chuyển tiện lợi. Có bánh răng xoay bên hông để con luyện cơ tay. Bên cạnh là bộ đàn 8 thanh cho con phát triển âm nhạc. Màu sắc đa dạng, sinh động khơi gợi tính tò mò, nhận biết sắc màu cho bé. Kích thích sự phát triển các giác quan của bé: thính giác, thị giác, nhận biết và phân biệt màu sắc, âm thanh: là bước đầu giúp bé làm quen và khám phá thế giới xung quanh đấy ạ. Đồ chất liệu gỗ ép, gia công nhẵn bóng hoàn toàn an toàn cho bé.", 
"Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Miếng ghép hình bằng gỗ", 100000, 255, "/View/Customer/img/products/Go/Mieng_ghep_hinh_bang_go.jpg", 
"Bộ tranh ghép nam châm bằng gỗ là món đồ chơi vô cùng thú vị và bổ ích cho các bạn nhỏ. Bộ tranh ghép gồm nhiều mảnh ghép sinh động có hình ảnh các loài vật, cây cối, chữ cái, con số Mặt sau là nam châm để cố định, tạo hình trên bảng ghép. Màu sắc chân thực, bắt mắt, kích thích trí tưởng tượng, óc quan sát từ thực tế đến trò chơi của trẻ. Mặt thứ 2 là bảng đen để các bé tự viết, tự vẽ, vừa học tập, vừa vui chơi, khơi dậy sự sáng tạo, phát triển trí thông minh, tư duy logic và rèn luyện sự khéo léo hằng ngày kho được xếp những mảnh gỗ đầy hình thù đó. THÔNG TIN SẢN PHẨM: 1 bộ ghép nam châm gồm: 1 hộp phấn có 3 viên phấn vs 3 màu khác nhau. 1 miếng tẩy phấn. 1 bút viết bảng nước có đầu xoá. 1 bộ tranh ghép hình có nam châm ở mặt sau. 1 bảng gỗ 2 mặt đen, trắng. 1 hộp đựng dụng cụ. 1 tranh minh hoạ hướng dẫn bé tập ghép.Chất liệu 100% gỗ tự nhiên, nước sơn đẹp, k mùi, k phai cực kì an toàn, phù hợp cho trẻ nhỏ", 
"TOYWOODS - Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bộ cờ tứ mã bằng gỗ", 130000, 240, "/View/Customer/img/products/Go/Bo_co_tu_ma_bang_go.jpg", 
"Bên cạnh những món đồ chơi giáo dục và đồ chơi xếp hình các bé có thể giải trí cùng nhau sau những giờ học căng thẳng bằng việc cùng nhau tham gia trò chơi Đua Cá Ngựa  vui nhộn. Trò chơi có thể chơi từ 2 đến 4 bé, bộ đồ chơi hứa hẹn sẽ giúp bé và gia đình có những giờ phút giải trí sảng khoái đồng thời gắn kết tình cảm các thành viên trong gia đình cùng với việc rèn luyện kỹ năng nhanh tay nhanh mắt cho bé. Xin giới thiệu bộ cờ cá ngựa kèm xí ngầu phiên bản mới bằng gỗ, hứa hẹn sẽ đem lại cho bé những trải nghiệm và phút giây vui vẻ bên gia đình. Những viên xúc xắc quay tròn, những quân cờ cá ngựa đủ màu cùng tranh nhau về đích và loại bỏ nhau trong quá trình chơi sẽ làm cho những cuộc vui của bé thêm phần thú vị và vui vẻ. Sở hữu bộ cờ này chắc chắn mọi người sẽ có những trải nghiệm thú vị, những phút giây giải trí vui vẻ bên gia đình và người thân. Thông tin sản phẩm: Bộ đồ chơi có thể cho 2 đến 4 bé chơi cùng lúc. Sản phẩm gồm 1 bàn cờ, các quân cờ với nhiều màu sắc xanh lá, xanh dương, vàng, đỏ, 2 xí ngầu. Chất gỗ tự nhiên. Sản xuất tại Việt Nam. Kích thước: 26x26x3cm", 
"Benrikids - Việt Nam", 4, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bộ gạch xây dựng", 165000, 210, "/View/Customer/img/products/Go/Bo_gach_xay_dung.jpg", 
"Bộ đồ chơi giáo dục thông minh, chuyên dùng ở các trường mầm non, mô phỏng viên gạch xây dựng nhà, được thiết kế tỉ mỉ, thu hút sự chú ý và tạo cảm hứng chơi đùa cho trẻ nhỏ, kích thích phát triển toàn diện: phát triển tư duy, trí tưởng tượng và sáng tạo cho bé. Bé cùng với ba mẹ thỏa sức sáng tạo trở thành kỹ sư nhí xây những ngôi nhà, vườn hoa, những nơi mơ ước của bé. Sản phẩm bao gồm: Hộp gạch gồm có 20 viên kích thước 8 x 4 x 2 cm, mô phỏng viên gạch xây dựng nhà. Chất liệu bằng nhựa màu đỏ như viên gạch, nhẵn, không gây hại đến da bé. , không phai, không dính màu. Bay, bàn xoa, thước và mũ. THÔNG TIN CHI TIẾT: Chất liệu: nhựa. Sản phẩm nhẹ, phù hợp với bé từ 3 tuổi trở lên. Kích thước túi: 30x22x13 cm", 
"Công Ty Đồ Chơi Hoàng Thu - Việt Nam", 4, 1);

-- Nhập product cho category 5 
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bảng chữ cái", 81000, 240, "/View/Customer/img/products/Giaoduc/Bang_chu_cai.jpg", 
"Có 2 loại in hoa và in thường. Bảng chữ cái gồm 29 chữ cái tiếng Việt. Bộ đồ chơi giúp bé làm quen với chữ cái, bé có thể lấy từng chữ cái để ghép thành các từ đơn, từ ghép. Bề mặt nhẵn mịn, mang các màu cơ bản, cho phép bé học cách phân biệt màu sắc", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Tranh ghép 9 mảnh", 14000, 300, "/View/Customer/img/products/Giaoduc/Tranh_ghep_9_manh.jpg", 
"Bộ ghép hình các con vật ngộ nghĩnh cho các bé ghép được những bức tranh sinh động về các loài vật và nhận biết được hình dạng của chúng. Để ghép đúng bé phải tư duy so sánh các hình ảnh giống & khác nhau từ đó phát triển khả năng suy luận. Ghép hình là trò chơi giúp phát triển trí thông minh, khả năng tư duy logic cho trẻ. Bé có thể vừa học vừa chơi với những khối hình sáng tạo, màu sắc phong phú. Chất liệu bằng gỗ xấy khô an toàn cho bé. Mỗi một bảng ghép hình có 9 miếng ghép, bảng ghép có kích thước 14,5 x 14,5 x 0,7cm.", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Tranh cát màu thú vị", 49000, 300, "/View/Customer/img/products/Giaoduc/Tranh_cat_mau_thu_vi.jpg", 
"Bộ Tranh Cát Màu Thế Giới Thú Cưng STAR KIDS (K-503) bao gồm 04 bộ sản phẩm, mỗi một bộ sản phẩm là một chủ đề. Sản phẩm gồm có 04 miếng, mốt cái nhịp nhựa, 08 màu cát (xanh dương, hồng, trắng, đen, đỏ, cam, xanh lá, vàng). Cách chơi: Bước 1: Lựa hình và vị trí muốn dán màu. Sau đó, gỡ lớp giấy phía trên cùng của hình dán. (sản phẩm có hỗ trợ dụng cụ là nhíp nhựa để gỡ giấy). Lưu ý: không gỡ cùng lúc các miếng dán, vì sẽ làm các màu phân bổ không đều, làm mất sự kết dính. Bước 2: Ưu tiên các màu đậm trước, màu nhạt sau. Bước 3: Dùng cát đổ trực tiếp lên vị trí hình đã được lột lớp giấy. Bước 4: Sau khi đổ cát xong các miếng dán, bé hãy lật nghiêng tranh cát để những phần cát thừa, dư rớt ra ngoài để hoàn thành bức tranh cát. Tô tranh cát giúp kích thích trí sáng tạo, rèn luyện tính kiên nhẫn ở bé. Trong quá trình để hoàn thành một bức tranh cát hoàn chỉnh, bé cần đến sự tỉ mỉ, chăm chút để chọn từng màu cát, đổ màu vào vị trí phù hợp để hoàn thành tác phẩm tranh cát của mình. Từ những hình ảnh đã định sẵn, bé có thể tự do vận dụng tối đa trí tưởng tượng phong phú của mình để tô màu cho bức tranh. Trò chơi tô màu tranh cát cũng tạo khoảng thời gian vui chơi giữ bé và bố mẹ. Suốt quá trình chơi, bố mẹ có thể dạy cho bé các màu sắc để từ đó hình thành nên năng khiếu nghệ thuật cho bé.", 
"STAR KIDS - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bộ thẻ học thông minh", 54000, 290, "/View/Customer/img/products/Giaoduc/Bo_the_hoc_thong_minh.jpg", 
"Bộ Thẻ Học Thông Minh Song Ngữ Anh-Việt được thiết kế theo phương pháp giáo dục sớm của Glenn Doman. Bộ thẻ với 416 thẻ với 16 chủ đề khác nhau, thẻ có hình ảnh minh họa, tên gọi bằng tiếng Việt, tiếng Anh gồm cả phiên âm tiếng anh. Bộ thẻ giúp bé khám phá, nhận biết được các hình ảnh, tên gọi tiếng Việt, tiếng Anh theo từng chủ đề. Bố mẹ hãy cùng hướng dẫn con mình học qua thẻ học thông mình này nhé để bé được phát triển toàn diện. Bộ 416 Thẻ Học Thông Minh - 16 Chủ Đề Cho Bé có chất liệu giấy cao cấp chống lóa mắt. Kích thước: 10 x 7 cm (riêng bộ chữ 9 x 5 cm). Xuất xứ: Việt Nam. Với sản phẩm bộ 416 thẻ học thông minh song ngữ Việt - Anh", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bảng vẽ điện tử", 86000, 280, "/View/Customer/img/products/Giaoduc/Bang_ve_dien_tu.jpg", 
"Bảng vẽ thông minh, bảng viết tự xóa 8.5 inch cho bé tập vẽ, viết ( sáng tạo). Bảng xóa không độc hại và thân thiện với môi trường và lành mạnh: có thể được sử dụng làm đồ chơi giáo dục sớm, bảng chính tả, giấy tính toán, bảng vẽ, bảng tin, tái sử dụng, tiết kiệm tài nguyên, cứu 10 cây 10 tuổi trong cuộc sống, thêm màu xanh vào trái đất ... Chức năng và chức năng: Một: sử dụng như một bảng tin gia đình, tin nhắn gia đình, nhắc nhở gia đình và có thể giúp trẻ học. Thứ hai: hồ sơ kinh doanh của nhân viên văn phòng, lên lịch công việc, ghi chép các mục và ghi nhớ công việc, biên bản cuộc họp, tin nhắn, v.v. Thứ ba: Là một công cụ giao tiếp hàng ngày cho người điếc và người già, người điếc chia sẻ ý tưởng của họ thông qua máy tính bảng. Bốn: Là một mô hình cho trẻ học viết và vẽ, tự do viết, vẽ, vẽ graffiti, toán học, từ nhớ và luyện viết.", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bộ 100 thẻ song ngữ Anh Việt", 180000, 250, "/View/Customer/img/products/Giaoduc/Bo_100_the_song_ngu_Anh_Viet.jpg", 
"“Dạy Trẻ Thế Giới Xung Quanh” cung cấp một chương trình về thông tin kích thích thị giác được thiết kế nhằm giúp con bạn khai thác tiềm năng tự nhiên để học bất kỳ thứ gì. Bạn sẽ thấy thật dễ dàng và vui thú ra sao khi dạy cho con bạn biết về nghệ thuật, khoa học tự nhiên. Con bạn sẽ nhận biết được sâu bọ trong vườn, biết về các quốc gia trên thế giới, khám phá được vẻ đẹp của các bức tranh của Van Gogh và nhiều thứ khác. Hãy giúp trẻ phát triển một cách đầy đủ hơn khả năng của trẻ. Hãy cho con đứng trên đôi vai của chính bạn, hãy cho trẻ xuất phát điểm từ những hiểu biết của bạn, hãy trao cho con khả năng học hỏi ngay từ khi con được sinh ra. Chúc bạn sẽ thành công với phương pháp của Glenn Doman – phương pháp đã được hầu như tất cả các bà mẹ Mỹ đã thực hành.", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đồ chơi hỗ trợ học toán", 92000, 290, "/View/Customer/img/products/Giaoduc/Do_choi_ho_tro_hoc_toan.jpg", 
"Bộ đồ chơi toán học đa chức năng 100 số - Đồ chơi gỗ thông minh cho bé. Bộ que tính 100 số gồm: que tính với 4 màu sắc khác nhau: đỏ, xanh lá cây, xanh biển và màu vàng. có các con số từ 1-100. có mặt bảng có thể viết phấn đi kèm là xóa bảng dễ dàng cho gọn vào trong. Trên mặt gồm các phép tính, so sánh lớn bé và có đồng hồ cho bé. Đây là sản phẩm quá tuyệt vời khi cho bé chơi và học", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đồ chơi ghép bảng chữ cái", 95000, 280, "/View/Customer/img/products/Giaoduc/Do_choi_ghep_bang_chu_cai.jpg", 
"SPELLING GAME là một trò chơi giáo dục mà thông qua đó bé học cách phát âm và luyện nghe, học cách ghép vần phonics của những từ cần học. Khi chơi game, các bé được nghe đọc từ để tìm lắp vào từ phù hợp. Spelling game là một trò chơi giúp bé luyện viết đúng chính tả, đánh vần tiếng anh và sẽ phát âm chuẩn xác nhờ hệ thống từ đuôi bé nhớ qua thao tác lắp ráp. SPELLING GAME mang lại nhiều hiệu quả trình trong việc học ngoại ngữ và được thế giới công nhận. Bộ spelling game này gồm: 26 từ tiếng anh và mỗi từ có 2 chữ là 52 chữ cái tiếng anh, hoàn toàn bằng gỗ đẹp với màu sắc bắt mắt, rực rỡ kích thích và thu hút bé. 28 thẻ tranh biểu thị hình ảnh và từ gợi ý cần đánh vần, là những từ gần gũi và quen thuộc với bé. Sẽ là một thiếu sót lớn nếu bé nào muốn làm quen tiếng anh hay đang học tiếng anh mà thiếu bộ spelling game này nha các mẹ!", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Bảng chữ cái phát âm thanh", 65000, 290, "/View/Customer/img/products/Giaoduc/Bang_chu_cai_phat_am_thanh.jpg", 
"Các thông số kỹ thuật của bảng chữ cái điện tử: 1.  Kích thước: 35x27.5cm. 2.  Trọng lượng: 610 gram. 3.  Sử dụng Pin: 3 quả Pin loại AAA. 4.  Chất liệu: Nhựa Mica an toàn cho bé. Khi bé ấn vào từng ô chữ của bảng chữ cái điện tử, ô chữ đó sẽ được phát âm với giọng nói chuẩn dễ nghe. Do phần âm thanh được thiết kế bởi các giảng viên lâu năm và có kinh nghiệm trong việc giảng dạy của trường Đại Học Sư Phạm Hà Nội theo ngôn ngữ chuẩn của Bộ Giáo Dục Và Đào Tạo quy định. Trên bảng còn có nút điều chỉnh âm lượng to nhỏ phù hợp với bé.", 
"OEM - Việt Nam", 5, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đồ chơi ghép mảnh thanh tra nhí", 17000, 300, "/View/Customer/img/products/Giaoduc/Do_choi_ghep_manh_thanh-tranh.jpg", 
"Bộ Xếp Hình Khổ A4 Puzzle Minh Châu (35 Mảnh Ghép). Bộ sưu tập Tranh xếp hình 35 mảnh cho bé của Minh Châu Puzzle gồm rất nhiều mẫu tranh đẹp, sắc nét, chủ đề phong phú và có kèm hình mẫu xinh xắn. Một giải pháp hiệu quả để hạn chế sự “mê mẩn” của các bé với smartphone, máy tính bảng...là tranh xếp hình (jigsaw puzzle), một trò chơi đậm tính giáo dục. Cha mẹ hãy tạo hứng thú cho bé bằng những bộ xếp hình có hình ảnh đẹp, phù hợp sở thích. Có thể khuyến khích bé bằng lời khen, một món quà nho nhỏ hoặc có thể chơi cùng bé. Trò chơi xếp hình là một loại hình giải trí lành mạnh và tinh tế, rèn luyện trí óc và tính kiên nhẫn do sự kết hợp giữa tư duy lô-gic, óc quan sát và sự tập trung. Là món quà thú vị và ý nghĩa mà cha mẹ nên dành cho con trẻ, góp phần giáo dục qua quá trình “chơi mà học”. Là đồ chơi có tính giáo dục cao, giúp phát triển tư duy và óc quan sát. Giải pháp tuyệt vời để bé luyện tập khả năng giữ bình tĩnh, kiểm soát cảm xúc của bản thân", 
"Puzzle Minh Châu - Việt Nam", 5, 1);

-- Nhập product cho category 6
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Mê cung thần kỳ Amaze", 350000, 250, "/View/Customer/img/products/Thongminh/Me_cung_than_ky_Amaze.jpg", 
"Thiết lập: Lựa chọn bàn thử thách ở phía sau bộ trò chơi. Cách chơi: Kết nối 4 điểm chỉ dẫn màu đỏ ở bên trái của trò chơi tới các vị trí được hiển thị trong sơ đồ thiết lập. Để di chuyển điểm chỉ dẫn sang trái hoặc phải, hãy sử dụng ngón tay của bạn hoặc bút Stylus kèm theo để đẩy các thanh màu đò trên thanh trượt đối diện nó. Khi bạn bắt đầu, bạn không được nhấc bút của bản khỏi con đường. Khi bạn đến thanh chắn màu đỏ, bạn phải cố gắng đẩy nó sang bên trái hoặc phải để mở đường cho bạn, tất nhiên bạn không được nhảy qua nó. Bạn phải thanh chắn đó sang trái hoặc phải nhiều lần khi giải mã mê cung. Bạn chỉ được đẩy những thanh chắn mày đỏ. Bạn không được sử dụng bút Stylus để kéo thanh trượt.", 
"Thinkfun - USA", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Cờ vua phù thủy", 2311000, 100, "/View/Customer/img/products/Thongminh/Co_vua_phu_thuy.jpg", 
"LEGO Harry Potter Bàn Cờ Vua Hogwarts (76392) là một món quà hấp dẫn và mang tính giải trí không ngừng cho bất kỳ trẻ em nào có niềm đam mê với Harry Potter hoặc chơi cờ. Bao gồm các nhân vật Harry Potter, Hermione Granger và Ron Weasley, cùng với 32 quân cờ có thể xây dựng dựa trên khung cảnh mang tính biểu tượng trong Harry Potter và Hòn đá phù thủy. Có 2 cách chơi: Chúng có thể chơi một trò chơi cờ vua vui nhộn hoặc nhập vai vào những cuộc phiêu lưu bất tận với các nhân vật trong bộ phim Harry Potter thần kỳ. Bất kỳ phù thủy hoặc pháp sư trẻ tuổi từ 10 tuổi trở lên sẽ bị mê hoặc bởi bộ cờ vua Harry Potter đầy hấp dẫn này.", 
"LEGO HARRY POTTER - Đan Mạch", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đồ chơi trí tuệ", 550000, 200, "/View/Customer/img/products/Thongminh/Me_cung_than_ky_Amaze.jpg", 
"Bao gồm 28 mảnh ghép nam châm hai màu và 200 câu đố từ tính đầy độc đáo, khiến trẻ phải vận dụng trí óc và rèn luyện tính kiên trì để tìm ra lời giải. Để chơi, hãy rút thẻ thử thách được đặt phía dưới hộp để lên trên bàn. Sau đó sắp xếp hết các mảnh ghép nam châm hai màu lên trên mặt hộp đối diện để dễ theo dõi và lựa mảnh ghép. Trẻ cần phải sắp xếp các mảnh ghép cho khớp với màu sắc trong thẻ thử thách, phải chính xác 2 đầu mảnh ghép để tái tạo lại hình ảnh trên thẻ. Bộ sản phẩm giúp: Tư duy phản biện để giải quyết vấn đề, suy luận không gian, rèn luyện não bộ và tính kiên nhẫn. Được nhập khẩu từ Mỹ, đạt các tiêu chuẩn an toàn về đồ chơi dành cho trẻ em của Mỹ và châu Âu.", 
"Educational Insights - Mỹ", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Phản chiếu qua gương", 165000, 240, "/View/Customer/img/products/Thongminh/Phan_chieu_qua_guong.jpg", 
"Thay vì thiết kế như cuốn sách vải hay những tấm thẻ kích thích thị giác thông thường sp này được thiết kế dạng in các bức ảnh với các màu cơ bản kích thích thị giác giai đoạn đầu đời cho bé như: đen, trắng, đỏ, cam, xanh da trời, xanh nõn chuối, hồng trên 1 tấm vải cứng dài và được in 2 mặt. Ngoài ra, có 1 góc trêm tấm thảm được gắn miếng nhựa như 1 chiếc gương để bé nằm, lẫy, ngồi nhìn vào thấy bóng mình in trong đó. Khi mới sinh ra bé hầu như không nhìn rõ mọi vật và chỉ nhìn rõ nhất ánh sáng, hình dạng chuyển động trong khoảng cách 20-30cm. Khoảng 1-2,5 tháng, bé có thể nhìn được bao quanh. Bé bắt đầu nhìn thấy màu nhưng chưa rõ ngoài trừ hình đen trắng.Khi bé tầm tầm từ 2,5-4 tháng, bé bắt đầu nhìn thấy được chi tiết của các vật thể. 4 tháng đến 1 tuổi thị giác của bé ngày càng hoàn thiện. Bé dần xác định được khoảng cách và nhìn thấy chiều sau của hình ả Bé càng ngày nhìn xa hơn và thị giác ngày càng hoàn chỉnh vì vậy bạn nên tập cho bé từ khi sinh ra.", 
"OEM - Việt Nam", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Giải câu đố", 185000, 290, "/View/Customer/img/products/Thongminh/Giai_cau_do.jpg", 
"Thiết kế với cấu trúc mới giúp giải nhanh; giải tốc độ. Rubik xoay trơn; không kẹt; không rít. Độ bền cao. Rèn luyện trí nhớ; sự thông minh; sáng tạo và khéo léo. Rubik là đồ chơi phù hợp với trẻ ở mọi độ tuổi để trẻ có thể chơi mọi lúc mọi nơi bởi kích cỡ và kiểu dáng nhỏ gọn, những chi tiết được xoay dễ dàng và cách chơi cũng vô cùng đơn giản. Đồ chơi Rubik có những lợi ích tiềm tàng vượt trội hơn những loại đồ chơi trí tuệ khác để bố mẹ có thể sẵn sàng mua cho con mình để phát triển trí não một cách tối đa.", 
"Art & Smart Egg Ltd - Singapore", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Xếp hình tư duy logic học", 225000, 240, "/View/Customer/img/products/Thongminh/Xep_hinh_tu_duy_logic_hoc.jpg", 
"Xếp chồng lên nhau, từng ô một! Mã màu sử dụng 18 hình màu đậm, mỗi hình trên một ô nhìn xuyên qua. Chọn một thử thách, sau đó xếp một giá gạch để tạo lại bố cục chính xác được trình bày bởi thử thách của bạn! Giới thiệu về màu sắc, hình dạng, thứ tự, hướng, v.v. Luật chơi Bước 1 Chọn một trong 100 thử thách trong hướng dẫn trò chơi. Bước 2 Chọn các ô bạn cần và xếp chồng lên nhau, từng ô một, trong ngăn hiển thị ô. Bước 3 Khi bố cục của bạn khớp chính xác với thử thách, bạn đã bẻ khóa nó!", 
"Golden Star Industry Limited - Trung Quốc", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Xếp hình nam châm", 318000, 245, "/View/Customer/img/products/Thongminh/Xep_hinh_nam_cham.jpg", 
"VÌ SAO BỘ LẮP GHÉP NAM CHÂM TỪ TÍNH ĐƯỢC YÊU THÍCH ĐẾN NHƯ VẬY!!! Kích thích phát triển tư duy hình học và không gian, đồ chơi sử dụng lực từ tính của các thanh nam châm giúp bé có thể xây dựng được bất cứ hình khối nào mà bé tưởng tượng. Khám phá và phát triển sự khéo léo của bé, bé sẽ kiến tạo được nhiều mô hình, mô hình càng phức tạp. Mẹ có thể dạy bé tại nhà qua việc xếp thành con số, con chữ, học đếm, Việc vừa học vừa chơi giúp bé hào hứng khi học bài và nhớ lâu. Sản phẩm bao gồm nam châm từ tính và thanh nhựa ABS an toàn tuyệt đối, không gây độc hại cho trẻ.", 
"OEM - Việt Nam", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Đèn pin chiếu hình thông minh", 30000, 300, "/View/Customer/img/products/Thongminh/Den_pin_chieu_hinh_thong_minh.jpg", 
"Đèn Pin Chiếu Bóng Loại 80 Hình Chiếu Đồ Chơi Cho Bé Loại Có Hộp. Chi tiết sản phẩm: Đèn pin chiếu hình cho bé 80 hình động vật, giao thông, số ngộ nghĩnh sắc nét. Kích thước: 11.5*3.5*3.2cm. Màu sắc: 2 màu xanh, hồng, tím. Dùng pin (đã có sẵn trong đèn, khi sử dụng chỉ cần rút tấm nhựa ra ). Có sẵn 10 thẻ x 8 hinh tổng cộng là 80 hình chiếu. Loại thứ 2 có 3 thẻ x 8 hình là 24 hình chiếu. Chất liệu: nhựa ABS", 
"OEM - Việt Nam", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Rubik", 114000, 200, "/View/Customer/img/products/Thongminh/Rubik.png", 
"Rubik là đồ chơi phù hợp với trẻ ở mọi độ tuổi để trẻ có thể chơi mọi lúc mọi nơi bởi kích cỡ và kiểu dáng nhỏ gọn, những chi tiết được xoay dễ dàng và cách chơi cũng vô cùng đơn giản. Đồ chơi Rubik có những lợi ích tiềm tàng vượt trội hơn những loại đồ chơi trí tuệ khác để bố mẹ có thể sẵn sàng mua cho con mình để phát triển trí não một cách tối đa. Thiết kế với cấu trúc mới giúp giải nhanh, giải tốc độ. Rubik xoay trơn, không kẹt, không rít. Độ bền cao. Chất liệu nhựa ABS an toàn, không độc hại. Rèn luyện trí nhớ, sự thông minh, sáng tạo và khéo léo.", 
"Rubik’s - Mỹ", 6, 1);
INSERT INTO Product (name, price, quantity, image, description, manufacturer, catID, status)  VALUES 
("Lắp ráp mô hình", 162000, 200, "/View/Customer/img/products/Thongminh/Lap_rap_mo_hinh_3D.jpg", 
"Xếp hình Lego chó Babu Snoopy lắp ráp nanoblocks nano block đồ chơi cho bé. * CHI TIẾT SẢN PHẨM Số hiệu:MAGIC BLOCK. Kích thước nhân vật và vỏ hộp: Vui lòng Xem trên ảnh. Chất liệu: Nhựa ABS an toàn cho da. Độ tuổi phù hợp: Từ 6 và 14 tuổi trở lên. Loại xếp hình: Le go Nanoblock, Mini. Có hướng dẫn màu chi tiết. Thiết kế: đơn giản bé có thể tự lắp ráp thành mô hình . *Chức năng của sản phẩm: Dùng làm quà tặng, đồ chơi cho bé trai và đồ chơi cho bé gái đều được giúp bé phát triển trí tuê tư duy logic. Món quà ý nghĩa cho bạn trẻ yêu xếp hình – trang trí góc học tập, phòng ngủ. bàn làm việc (sau khi sản phẩm được lắp hoàn thiện).", 
"Lezi - Trung Quốc", 6, 1);

CREATE TABLE CART(
	id int primary key auto_increment,
    cusid int references Account(id)
);
    
CREATE TABLE CARTITEM(
 	id int auto_increment primary key,
    quantity int,
    cartid int references CART(id),
    pid int references Product(id)
);

CREATE TABLE Account(
	id INT primary key auto_increment,
    name char(50),
    username char(20) unique,
	password char(20) ,
	email char(50),
	image char(255),
	phone char(11),
	type int,
    address char(255),
    status int
    );
    
INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Lê Tú", "tule10", "123456", "tule123@gmail.com", "/View/Admin/img/profile/A1.jpg", "0398475637", 0, "221, Phạm Văn Đồng, Hiệp Bình Chánh, TP. Thủ Đức, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Hoàng Nguyễn", "hoang12", "123456789", "iamhoang@gmail.com", "/View/Admin/img/profile/A2.jpg", "09845715421", 0, "26 Ung Văn Khiêm, Phường 25, Bình Thạnh, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Vân Trần", "tranthivan", "123456", "thivan24@gmail.com", "/View/Customer/img/profile/A1.jpg", "0398475637", 1, "221, Phạm Văn Đồng, Hiệp Bình Chánh, Thủ Đức", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Thuận Nguyễn", "thuan1012", "123456", "vanthuan2004@gmail.com", "/View/Customer/img/profile/A2.jpg", "0372516481", 1, "An Lạc 1, Mỹ Hoà, Phù Mỹ, Bình Định", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Nguyễn Sang", "sang1508", "123456", "sang1508@gmail.com", "/View/Customer/img/profile/A3.jpg", "0394512684", 1, "08, đường 10, tổ 5, ấp 4A, Bình Mỹ, Củ Chi, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Quan Huy", "huyphan09", "123456", "huyphan0909@gmail.com", "/View/Customer/img/profile/A4.jpg", "03845126412", 1, "31, tổ 1, ấp Mỹ Thuận, Mỹ Phú, Châu Phú, An Giang", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Nam Giang", "giangnam18", "123456", "nam01234@gmail.com", "/View/Customer/img/profile/A5.jpg", "09875412654", 1, "Tổ 4, Khối 3, Thị trấn Bồng Sơn, H Hoài Nhơn, Bình Định", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Thanh Dưỡng", "thanhduongcute17", "123456", "thanhduong2710@gmail.com", "/View/Customer/img/profile/A6.jpg", "0845164512", 1, "K3 Khu Phố Long Châu, Thị trấn La Hai, H Đồng Xuân, Phú Yên", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Minh Anh Lê", "minhle89", "123456", "leminh89@gmail.com", "/View/Customer/img/profile/A7.jpg", "0754615421", 1, "Số nhà 208, ấp 1, xã Lộc Thuận, Lộc Ninh, Bình Phước", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Lê Anh Tú", "tule1000", "123456", "tule123@gmail.com", "/View/Customer/img/profile/A8.jpg", "0354897542", 1, "Tổ 7, Thôn Ninh Thuận, Xã Hàm Chính, H Hàm Thuận Bắc, Bình Thuận", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Tiến Đặng", "tiendang0000", "123456", "danghuutien1111@gmail.com", "/View/Customer/img/profile/A9.jpg", "0354879412", 1, "Xóm 1, Thôn 2, Xã Lộc An, H Bảo Lâm, Lâm Đồng", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Minh Thư", "thu1234", "123456", "minhthu123@gmail.com", "/View/Customer/img/profile/A10.jpg", "0526484512", 1, "184/36, Phạm Văn Đồng, Thống Nhất, TP Pleiku, Gia Lai", 0);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Phan Lê", "phanlelephan", "123456", "phanle0123@gmail.com", "/View/Customer/img/profile/A111.jpg", "0325461579", 1, "252, Phạm Văn Đồng, Hiệp Bình Chánh, TP. Thủ Đức, TP. Hồ Chí Minh", 1);
    
INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Minh Quang", "quangminh1234", "123456", "minhquang1705@gmail.com", "/View/Customer/img/profile/A12.jpg", "0978451364", 0, "Tổ 4, Khối 3, Thị trấn Bồng Sơn, H Hoài Nhơn, Bình Định", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Cẩm Vân", "vancam00", "123456", "camvan1245@gmail.com", "/View/Customer/img/profile/A13.jpg", "01258794512", 0, "6c/7, Ấp 6, Phạm Văn Hai, H Bình Chánh, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Lê Thị Tư", "tuletu", "123456", "thule1786254@gmail.com", "/View/Customer/img/profile/A14.jpg", "0879451654", 1, "Tổ 1, An Thới, Tân An Thạnh, Huyện Bình Tân, Vĩnh Long", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Huyền Trần", "huyencool", "123456", "tranthuhuyen142@gmail.com", "/View/Customer/img/profile/A15.jpg", "0988754612", 1, "32/29 Lý Chính Thắng , Tổ 3 , Phường Chi Lăng , Thành Phố Pleiku , Tỉnh Gia Lai", 0);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Alex Nguyễn", "alex", "123456", "alex56789@gmail.com", "/View/Customer/img/profile/A16.jpg", "0394512684", 1, "157/21, đường 09, khu phố 8, Linh Tây, TP. Thủ Đức, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Minh Cute", "minhqq", "123456", "minhcuteisme@gmail.com", "/View/Customer/img/profile/A17.jpg", "0359784512", 1, "314, Hồng Lĩnh, Đập Đá, H An Nhơn, Bình Định", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Như Quỳnh", "quynhnhu101", "123456", "quynhle35642@gmail.com", "/View/Customer/img/profile/A18.jpg", "0887952145", 1, "64, Bến Chương Dương, Phường Phước Lộc, TX LaGi, Bình Thuận", 0);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Diệu Hiền", "hiendieu", "123456", "dieuhien1010@gmail.com", "/View/Customer/img/profile/A19.jpg", "0398784512", 1, "Tổ 7, Thôn Ninh Thuận, Xã Hàm Chính, H Hàm Thuận Bắc, Bình Thuận", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Trần Tú Anh", "anhtudeptrai", "123456", "tratuanh17256@gmail.com", "/View/Customer/img/profile/A20.jpg", "0375461542", 1, "Tổ 7, Thôn Ninh Thuận, Xã Hàm Chính, H Hàm Thuận Bắc, Bình Thuận", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Phạm Hoàng Nguyên", "nguyenpham", "123456", "nguyen1998@gmail.com", "/View/Customer/img/profile/A21.jpg", "0358794512", 1, "Tổ 7, Thôn Ninh Thuận, Xã Hàm Chính, H Hàm Thuận Bắc, Bình Thuận", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Văn Tuấn", "vantuan5555", "123456", "tuan1735@gmail.com", "/View/Customer/img/profile/A22.jpg", "0398784512", 1, "Thị trấn La Hai, Huyện Đồng Xuân, Tỉnh Phú Yên, K3 Khu Phố Long Châu, Thị trấn La Hai, H Đồng Xuân, Phú Yên", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Sarah Trần", "sarahtran", "123456", "trankieumy142@gmail.com", "/View/Customer/img/profile/A23.jpg", "0398784512", 1, "5/41, Đường 30/4, Phường 2, TP Sóc Trăng, Sóc Trăng", 0);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Trung", "iamtrung", "123456", "trunglephan@gmail.com", "/View/Customer/img/profile/A24.jpg", "0784516254", 1, "Số 801, tổ 5, Ấp Lình Huỳnh, Xã Lình Huỳnh, H Hòn Đất, Kiên Giang", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Tuấn Trần", "tuan18", "123456", "tuantran1998@gmail.com", "/View/Customer/img/profile/A25.jpg", "0897584512", 1, "6c/7, Ấp 6, Phạm Văn Hai, H Bình Chánh, TP. Hồ Chí Minh", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Edward", "edwardhi", "123456", "edward1@gmail.com", "/View/Customer/img/profile/A26.jpg", "0987845125", 1, "5/41, Đường 30/4, Phường 2, TP Sóc Trăng, Sóc Trăng", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Kiều Giáp", "giapkieu1703", "123456", "giapkieu1703@gmail.com", "/View/Customer/img/profile/A27.jpg", "0897845125", 1, "Tổ 8, Ấp 1, Xã Xuân Tây, H Cẩm Mỹ, Đồng Nai", 1);

INSERT INTO Account(name, username, password, email, image, phone, type, address, status) 
VALUES("Nga Nguyễn", "ngalyly", "123456", "ngalyly1010@gmail.com", "/View/Customer/img/profile/A28.jpg", "0987845142", 1, "64, Bến Chương Dương, Phường Phước Lộc, TX LaGi, Bình Thuận", 1);

    
-- Tạo CART 1 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(1);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 1, 1);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 1, 11);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 1, 21);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 1, 3);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 1, 4);

-- Tạo CART 2 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(2);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 2, 15);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 2, 14);

-- Tạo CART 3 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(3);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 3, 42);

-- Tạo CART 4 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(4);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(5, 4, 44);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 4, 45);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 4, 46);

-- Tạo CART 5 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(5);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(5, 5, 52);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 5, 60);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 5, 24);

-- Tạo CART 6 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(6);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 6, 14);

-- Tạo CART 7 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(7);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 7, 1);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 7, 11);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 7, 21);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 7, 31);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 7, 32);

-- Tạo CART 8 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(8);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 8, 40);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 8, 41);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 8, 42);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 8, 43);

-- Tạo CART 9 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(9);

-- Tạo CART 10 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(10);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 10, 14);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 10, 21);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 10, 22);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 10, 32);

-- Tạo CART 11 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(11);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 11, 12);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 11, 23);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 11, 20);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 11, 30);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 11, 40);

-- Tạo CART 12 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(12);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 12, 40);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 12, 41);

-- Tạo CART 13 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(13);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 13, 51);

-- Tạo CART 14 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(14);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(5, 14, 36);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 14, 20);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 14, 18);

-- Tạo CART 15 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(15);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(5, 15, 15);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(2, 15, 60);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 15, 24);

-- Tạo CART 16 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(16);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 16, 60);

-- Tạo CART 17 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(17);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 17, 16);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 17, 25);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 17, 45);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 17, 31);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 17, 32);

-- Tạo CART 18 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(18);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 18, 30);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 18, 41);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 18, 32);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 18, 33);

-- Tạo CART 9 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(9);

-- Tạo CART 20 và các CARTITEM 
INSERT INTO CART (cusid) VALUES(20);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 20, 15);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 20, 60);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(4, 20, 14);
INSERT INTO CARTITEM (quantity, cartid, pid) VALUES(1, 20, 22);

CREATE TABLE MYORDER(
    id int primary key auto_increment ,
    dateOrder DATE,
    total double,
    name CHAR(100),
    email CHAR(100),
	phone CHAR(11),
    address CHAR(100),
    cusid INT REFERENCES Account(id)
    );
   
CREATE TABLE ORDERITEM(
	id int auto_increment primary key,
    amount  int,
    price double,
    productid int references Product(id),
    orderid int references MYORDER(id)
    );

-- -- -- -- -- -- -- -- -- -- -- 
INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-1-10", 1604000, "Lê Tú", "tule123@gmail.com", "0398475637", "221, Phạm Văn Đồng, Hiệp Bình Chánh, TP. Thủ Đức, TP. Hồ Chí Minh", 1 );
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(3, 300000, 1, 1);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 426000, 11, 1);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 139000, 3, 1);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-1-15", 1642000, "Hoàng Nguyễn", "iamhoang@gmail.com", "09845715421", "26 Ung Văn Khiêm, Phường 25, Bình Thạnh, TP. Hồ Chí Minh", 2);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 636000, 12, 2);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 81000, 43, 2);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 238000, 32, 2);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(3, 17000, 52, 2);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-1-17", 863000, "Thuận Nguyễn", "vanthuan2004@gmail.com", "0372516481", "An Lạc 1, Mỹ Hoà, Phù Mỹ, Bình Định", 4);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 49000, 45, 3);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 30000, 60, 3);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 95000, 50, 3);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 330000, 35, 3);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(5, 62000, 22, 3);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-2-3", 1355000, "Nguyễn Sang", "sang1508@gmail.com", "0394512684", "08, đường 10, tổ 5, ấp 4A, Bình Mỹ, Củ Chi, TP. Hồ Chí Minh", 5);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 300000, 1, 4);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 300000, 17, 4);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 199000, 23, 4);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(4, 70000, 36, 4);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(3, 92000, 49, 4);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-3-10", 1060000, "Nam Giang", "nam01234@gmail.com", "09875412654", "Tổ 4, Khối 3, Thị trấn Bồng Sơn, H Hoài Nhơn, Bình Định", 7);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 900000, 10, 5);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 100000, 14, 5);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 60000, 25, 5);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-3-28", 1090000, "Thanh Dưỡng", "thanhduong2710@gmail.com", "0845164512", "K3 Khu Phố Long Châu, Thị trấn La Hai, H Đồng Xuân, Phú Yên", 8);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 375000, 8, 6);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 90000, 29, 6);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 250000, 37, 6);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-4-13", 615000, "Lê Tú", "tule123@gmail.com", "0354897542", "Tổ 7, Thôn Ninh Thuận, Xã Hàm Chính, H Hàm Thuận Bắc, Bình Thuận", 10);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(3, 150000, 19, 7);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 165000, 42, 7);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-4-15", 891000, "Tiến Đặng", "danghuutien1111@gmail.com", "0354879412", "Xóm 1, Thôn 2, Xã Lộc An, H Bảo Lâm, Lâm Đồng", 11);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 550000, 55, 8);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 162000, 62, 8);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 49000, 26, 8);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 130000, 41, 8);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-5-10", 835000, "Phan Lê", "phanle0123@gmail.com", "0325461579", "252, Phạm Văn Đồng, Hiệp Bình Chánh, TP. Thủ Đức, TP. Hồ Chí Minh", 13);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 165000, 56, 9);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 300000, 33, 9);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(5, 14000, 44, 9);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-5-30", 530000, "Minh Quang", "minhquang1705@gmail.com", "0978451364", "Tổ 4, Khối 3, Thị trấn Bồng Sơn, H Hoài Nhơn, Bình Định", 14);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 180000, 48, 10);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 85000, 30, 10);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-6-3", 1178000, "Lê Thị Tư", "thule1786254@gmail.com", "0879451654", "Tổ 1, An Thới, Tân An Thạnh, Huyện Bình Tân, Vĩnh Long", 16);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 500000, 5, 11);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 375000, 8, 11);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 229000, 16, 11);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 20000, 28, 11);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 54000, 46, 11);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-8-7", 1315000, "Huyền Trần", "tranthuhuyen142@gmail.com", "0988754612", "32/29 Lý Chính Thắng , Tổ 3 , Phường Chi Lăng , Thành Phố Pleiku , Tỉnh Gia Lai", 17);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 849000, 7, 12);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 350000, 53, 12);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 30000, 60, 12);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 86000, 47, 12);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-9-25", 1511000, "Edward", "edward1@gmail.com", "0987845125", "5/41, Đường 30/4, Phường 2, TP Sóc Trăng, Sóc Trăng", 28);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 190000, 9, 13);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 75000, 27, 13);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(3, 225000, 58, 13);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 114000, 61, 13);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 382000, 34, 13);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-11-6", 499000, "Kiều Giáp", "giapkieu1703@gmail.com", "0897845125", "Tổ 8, Ấp 1, Xã Xuân Tây, H Cẩm Mỹ, Đồng Nai", 29);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 20000, 28, 14);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 270000, 39, 14);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 209000, 31, 14);

INSERT INTO MYORDER (dateOrder, total, name, email, phone, address, cusid) 
VALUES ("2022-12-30", 862000, "Nga Nguyễn", "ngalyly1010@gmail.com", "0987845142", "64, Bến Chương Dương, Phường Phước Lộc, TX LaGi, Bình Thuận", 30);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(2, 92000, 49, 15);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 90000, 29, 15);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 270000, 39, 15);
INSERT INTO ORDERITEM (amount, price, productid, orderid) VALUES(1, 318000, 59, 15);


