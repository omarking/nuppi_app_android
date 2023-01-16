/*
 Navicat Premium Data Transfer

 Source Server         : Nuupi
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : nuupi

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 16/01/2023 14:12:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria`  (
  `idCategoria` int(0) NOT NULL AUTO_INCREMENT,
  `desCategoria` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusCategoria` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idCategoria`) USING BTREE,
  UNIQUE INDEX `desCategoria`(`desCategoria`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES (1, 'MUEBLES', '1');
INSERT INTO `categoria` VALUES (2, 'ELECTRÓNICOS', '1');
INSERT INTO `categoria` VALUES (3, 'ALIMENTOS Y BEBIDAS', '1');
INSERT INTO `categoria` VALUES (4, 'ROPA', '1');
INSERT INTO `categoria` VALUES (5, 'ZAPATOS', '1');
INSERT INTO `categoria` VALUES (6, 'JUGUETES Y JUEGOS', '1');
INSERT INTO `categoria` VALUES (7, 'LIBROS', '1');
INSERT INTO `categoria` VALUES (8, 'DEPORTES', '1');
INSERT INTO `categoria` VALUES (9, 'MÓVILES', '1');
INSERT INTO `categoria` VALUES (10, 'Dulces', '1');

-- ----------------------------
-- Table structure for detaproductocomen
-- ----------------------------
DROP TABLE IF EXISTS `detaproductocomen`;
CREATE TABLE `detaproductocomen`  (
  `idDetalleProComen` int(0) NOT NULL AUTO_INCREMENT,
  `comentario` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `comentariocliente` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `idUsuario` int(0) NOT NULL,
  `idProducto` int(0) NOT NULL,
  `fecha` date NULL DEFAULT NULL,
  `estatus` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT '1',
  `estrellas` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalleProComen`) USING BTREE,
  INDEX `idUsuario`(`idUsuario`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE,
  CONSTRAINT `detaproductocomen_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `detaproductocomen_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detaproductocomen
-- ----------------------------
INSERT INTO `detaproductocomen` VALUES (1, 'El producto es de muy buena calidad, le doy 5 estrellas', NULL, 39, 34, '2021-02-14', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (2, 'Muy buen producto, me ha funcionado bien', NULL, 40, 35, '2021-02-15', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (3, 'El producto es de una excelente calidad', NULL, 41, 36, '2021-02-17', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (7, 'El producto es muy bueno, te dan lo que ofrecen', NULL, 83, 46, '2021-04-17', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (8, 'Es un producto de excelente calidad.', NULL, 83, 48, '2021-04-17', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (9, 'Es una laptop chida', NULL, 83, 51, '2021-04-17', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (10, 'Es muy buen producto', NULL, 83, 50, '2021-04-17', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (11, 'Es una laptop de muy buena calidad', NULL, 49, 43, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (12, 'Me gustó mucho la laptop', NULL, 49, 43, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (13, 'El producto es bueno', NULL, 83, 48, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (14, 'Son unos audífonos excelentes', NULL, 83, 52, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (15, 'Es un excelente producto', NULL, 83, 50, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (16, 'Lo recomiendo 100%', NULL, 83, 48, '2021-04-18', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (17, 'El producto es muy bueno', NULL, 83, 51, '2021-04-19', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (18, NULL, 'El producto es muy bueno, te dan lo que ofrecen', 83, 46, '2021-04-20', '1', 4);
INSERT INTO `detaproductocomen` VALUES (19, NULL, 'El producto es muy bueno, te dan lo que ofrecen', 83, 34, '2021-04-20', '1', 4);
INSERT INTO `detaproductocomen` VALUES (20, 'Es una televisión muy buena', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (21, 'Me gusta', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (22, 'Es de buena calidad', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (23, 'Esta increíble', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (24, 'Es de buena calidad', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (25, 'Es HD ?', NULL, 83, 34, '2021-04-25', '1', NULL);
INSERT INTO `detaproductocomen` VALUES (26, 'Muy buen producto\n', NULL, 100, 50, '2021-06-30', '1', NULL);

-- ----------------------------
-- Table structure for devolucion
-- ----------------------------
DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE `devolucion`  (
  `iddevolucion` int(0) NOT NULL AUTO_INCREMENT,
  `FolioVenta` int(0) NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `urlFormatoDevolucion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `fechaDevolucion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `statusDevolucion` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `motivoDevolucion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iddevolucion`) USING BTREE,
  INDEX `fkdevolucionventa_idx`(`FolioVenta`) USING BTREE,
  CONSTRAINT `fkdevolucionventa` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devolucion
-- ----------------------------

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS `direccion`;
CREATE TABLE `direccion`  (
  `idDireccion` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `codigoPostalUsuario` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `municipio` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `colonia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `callePrincipal` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `numeroExterior` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `calle1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `calle2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `referencia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `statusDireccion` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idDireccion`) USING BTREE,
  INDEX `direccion_usuario_idx`(`idUsuario`) USING BTREE,
  CONSTRAINT `direccion_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of direccion
-- ----------------------------
INSERT INTO `direccion` VALUES (2, 133, '54385', 'Mexico', 'Chapa de mota', 'Dhalle', 'Ojo de agua', 's/n', 'Calle 11', 'Calle 12', 'A 100', '1');
INSERT INTO `direccion` VALUES (3, 135, '54685', 'Mexico', 'Jilotepec', 'Enrique molina', 'La paz', 's/n', 'Calle 11', 'Calle 12', 'Sin referencia', '1');
INSERT INTO `direccion` VALUES (4, 141, '54385', 'Mexico', 'Chapa de mota', 'Dhalle', 'Ojo de agua', 's/n', '', '', '', '1');
INSERT INTO `direccion` VALUES (5, 152, '54385', 'Mexico', 'Chapa de mota', 'Dhalle', 'Ojo de agua', 'S/n', 'Calle 11', 'Calle 12', 'A 200 metros de la casa de materiales marberc', '1');
INSERT INTO `direccion` VALUES (6, 152, '62800', 'Morelos', 'Tetela del volcan ', 'Pueblo tetela del volcan', 'Bugambilia', 's/n', 'Calle 1', 'Calle 2', 'En el local numero 10 dl mercado municipal', '1');
INSERT INTO `direccion` VALUES (7, 153, '54285', 'MEXICO', 'CHAPA DE MOTA', 'DONGU', 'SANTA ELENA - SANTA MARIA', 'S/N', 'RIO', 'LAS FUNENTES', 'CERCA DEL RIO', '1');
INSERT INTO `direccion` VALUES (8, 154, '54240', 'Mexico', 'Jilotepec', 'Deni', 'El puente', 's/n', 'Andres Molina Enriquez', 'La Magisterial de los Maestros', 'A 500 metros de la delegacion', '1');
INSERT INTO `direccion` VALUES (9, 154, '54380', 'Mexico', 'Chapa', 'Los limones', 'El puente', 's/n', 'Andres Molina Enriquez', 'La Magisterial de los Maestros', 'A 500 metros de la delegacion', '1');

-- ----------------------------
-- Table structure for empresadelogistica
-- ----------------------------
DROP TABLE IF EXISTS `empresadelogistica`;
CREATE TABLE `empresadelogistica`  (
  `idempresaDeLogistica` int(0) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `direccionEmpresa` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `numeroTelefono` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nombreResponsable` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rfcEmpresa` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusEmpresaLogistica` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idempresaDeLogistica`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of empresadelogistica
-- ----------------------------

-- ----------------------------
-- Table structure for imgproducto
-- ----------------------------
DROP TABLE IF EXISTS `imgproducto`;
CREATE TABLE `imgproducto`  (
  `idImgProducto` int(0) NOT NULL AUTO_INCREMENT,
  `idProducto` int(0) NOT NULL,
  `img1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idImgProducto`) USING BTREE,
  INDEX `idProducto`(`idProducto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of imgproducto
-- ----------------------------
INSERT INTO `imgproducto` VALUES (1, 34, 'img/16px.png', 'img/32px.png', 'img/64px.png', 'img/1024px.png');
INSERT INTO `imgproducto` VALUES (2, 35, 'img/16px.png', 'img/32px.png', 'img/64px.png', 'img/1024px.png');
INSERT INTO `imgproducto` VALUES (3, 36, 'img/16px.png', 'img/32px.png', 'img/64px.png', 'img/1024px.png');
INSERT INTO `imgproducto` VALUES (4, 37, 'img/16px.png', 'img/32px.png', 'img/64px.png', 'img/1024px.png');
INSERT INTO `imgproducto` VALUES (6, 48, 'http://192.168.1.72:3000/public/products/imagen2.jpg-1618104655045.jpg', 'http://192.168.1.72:3000/public/products/imagen3.jpg-1618104655049.jpg', 'http://192.168.1.72:3000/public/products/imagen4.jpg-1618104655052.jpg', 'http://192.168.1.72:3000/public/products/laptopdell_front.jpg-1618104655053.jpg');
INSERT INTO `imgproducto` VALUES (7, 50, 'http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187343133.jpg', 'http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187343574.jpg', 'http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187344023.jpg', 'http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187344355.jpg');
INSERT INTO `imgproducto` VALUES (8, 51, 'http://192.168.1.72:3000/public/products/IMG_20210412_165812.jpg-1618286669835.jpg', 'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188880958.png', 'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188881306.png', 'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188881654.png');
INSERT INTO `imgproducto` VALUES (9, 52, 'http://192.168.1.72:3000/public/products/IMG_20210411_205658.png-1618193057478.png', 'http://192.168.1.72:3000/public/products/IMG_20210411_205715.png-1618193057864.png', 'null', 'http://192.168.1.72:3000/public/products/images (3).jpeg-1618193058781.jpeg');
INSERT INTO `imgproducto` VALUES (10, 43, 'http://192.168.1.72:3000/public/products/images (3).jpeg-1618266179788.jpeg', 'http://192.168.1.72:3000/public/products/IMG_20210412_165811.jpg-1618266180349.jpg', 'http://192.168.1.72:3000/public/products/images (1).jpeg-1618266185391.jpeg', 'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618266185433.png');
INSERT INTO `imgproducto` VALUES (11, 0, '1', '2', '3', '4');
INSERT INTO `imgproducto` VALUES (12, 0, '1', '2', '3', '4');
INSERT INTO `imgproducto` VALUES (13, 34, 'img/iphone.png', 'img/iphone.png', 'img/iphone.png', 'img/iphone.png');
INSERT INTO `imgproducto` VALUES (14, 77, 'img/productos/lancerfondo.png', 'img/productos/fondolostbell.png', 'img/productos/fondosaber.png', 'img/productos/fondoshiwld.png');
INSERT INTO `imgproducto` VALUES (15, 79, 'img/productos/fondoarcher.png', 'img/productos/fondosaber.png', 'img/productos/fondoberserker.png', 'img/productos/fondocaster.png');
INSERT INTO `imgproducto` VALUES (16, 80, 'img/1522340200222.jpeg', 'img/1522340200222.jpeg', 'img/1522340200222.jpeg', 'img/1522340200222.jpeg');

-- ----------------------------
-- Table structure for livestreaming
-- ----------------------------
DROP TABLE IF EXISTS `livestreaming`;
CREATE TABLE `livestreaming`  (
  `idlivestreaming` int(0) NOT NULL AUTO_INCREMENT,
  `idPromocion` int(0) NOT NULL,
  `urlVideo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fechaLiveStream` datetime(0) NOT NULL,
  `urlRecursos` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idlivestreaming`) USING BTREE,
  INDEX `fklivestreamingpromocion_idx`(`idPromocion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of livestreaming
-- ----------------------------

-- ----------------------------
-- Table structure for logisticaventaentrega
-- ----------------------------
DROP TABLE IF EXISTS `logisticaventaentrega`;
CREATE TABLE `logisticaventaentrega`  (
  `idlogisticaVentaEntrega` int(0) NOT NULL,
  `FolioVenta` int(0) NOT NULL,
  `idEmpresaDeLogistica` int(0) NOT NULL,
  `fechaEnvio` datetime(0) NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `fechaRecepcionPaquete` datetime(0) NULL DEFAULT NULL,
  `rutaDeSeguimiento` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `latitud` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `longitud` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idlogisticaVentaEntrega`) USING BTREE,
  INDEX `fkLogisticaVenta_idx`(`FolioVenta`) USING BTREE,
  INDEX `fkLogisticaEmpresa_idx`(`idEmpresaDeLogistica`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of logisticaventaentrega
-- ----------------------------

-- ----------------------------
-- Table structure for marca
-- ----------------------------
DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca`  (
  `idMarca` int(0) NOT NULL AUTO_INCREMENT,
  `desMarca` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusMarca` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idMarca`) USING BTREE,
  UNIQUE INDEX `desMarca`(`desMarca`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of marca
-- ----------------------------
INSERT INTO `marca` VALUES (6, 'COCA - COLA', '1');
INSERT INTO `marca` VALUES (7, 'SALANDENS', '1');
INSERT INTO `marca` VALUES (8, 'WRANGLER', '1');
INSERT INTO `marca` VALUES (9, 'FLEXI', '1');
INSERT INTO `marca` VALUES (10, 'ADIDAS', '1');
INSERT INTO `marca` VALUES (11, 'HP', '1');
INSERT INTO `marca` VALUES (12, 'SONY', '0');
INSERT INTO `marca` VALUES (13, 'Apple', '1');
INSERT INTO `marca` VALUES (14, 'Toshiba', '0');
INSERT INTO `marca` VALUES (15, 'Samsung', '1');
INSERT INTO `marca` VALUES (16, 'Whirpool', '1');
INSERT INTO `marca` VALUES (17, 'HUAWEI', '1');
INSERT INTO `marca` VALUES (18, 'Nuppi', '1');

-- ----------------------------
-- Table structure for membresia
-- ----------------------------
DROP TABLE IF EXISTS `membresia`;
CREATE TABLE `membresia`  (
  `idmembresia` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fechaActivacion` datetime(0) NOT NULL,
  `fechaVencimiento` datetime(0) NOT NULL,
  `precio` float(8, 2) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idmembresia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of membresia
-- ----------------------------

-- ----------------------------
-- Table structure for metodopago
-- ----------------------------
DROP TABLE IF EXISTS `metodopago`;
CREATE TABLE `metodopago`  (
  `idMetodoPago` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `numTarjeta` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expYear` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `expMonth` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `codigoSeguridad` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusMetodoPago` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idMetodoPago`) USING BTREE,
  INDEX `metodoPago_user_idx`(`idUsuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of metodopago
-- ----------------------------
INSERT INTO `metodopago` VALUES (5, 135, '5579100214615245', '23', '06', '956', '1');
INSERT INTO `metodopago` VALUES (6, 135, '4169160457181528', '24', '08', '686', '1');
INSERT INTO `metodopago` VALUES (7, 141, '5579100214615245', '23', '06', '956', '1');
INSERT INTO `metodopago` VALUES (8, 135, '4075595716483764', '25', '11', '123', '1');
INSERT INTO `metodopago` VALUES (9, 141, '4075595716483764', '25', '11', '123', '1');
INSERT INTO `metodopago` VALUES (10, 152, '4075595716483764', '25', '11', '123', '1');

-- ----------------------------
-- Table structure for notificacion
-- ----------------------------
DROP TABLE IF EXISTS `notificacion`;
CREATE TABLE `notificacion`  (
  `idnotificacion` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `tipo_notification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `body` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idnotificacion`) USING BTREE,
  INDEX `fknotificationusuario_idx`(`idUsuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notificacion
-- ----------------------------

-- ----------------------------
-- Table structure for paginapago
-- ----------------------------
DROP TABLE IF EXISTS `paginapago`;
CREATE TABLE `paginapago`  (
  `idpaginaPago` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `observacion` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `linkPago` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `statusPaginaPago` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpaginaPago`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paginapago
-- ----------------------------
INSERT INTO `paginapago` VALUES (1, 'Mercado Pago', NULL, 'https://www.mercadopago.com.mx', '1');
INSERT INTO `paginapago` VALUES (2, 'PayPal', NULL, 'https://www.paypal.com.mx', '1');
INSERT INTO `paginapago` VALUES (3, 'Efectivo', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pedido
-- ----------------------------
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido`  (
  `idPedido` int(0) NOT NULL AUTO_INCREMENT,
  `codPedido` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `pedidoUser` int(0) NULL DEFAULT NULL,
  `urlImagen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `statusPedido` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPedido`) USING BTREE,
  INDEX `userpedido`(`pedidoUser`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pedido
-- ----------------------------
INSERT INTO `pedido` VALUES (1, '135161221117', 135, 'img/135117161221.jpeg', '1');
INSERT INTO `pedido` VALUES (2, '135161221122', 135, 'img/135122161221.jpeg', '0');
INSERT INTO `pedido` VALUES (3, '1522002222340', 152, 'img/1522340200222.jpeg', '1');

-- ----------------------------
-- Table structure for permiso
-- ----------------------------
DROP TABLE IF EXISTS `permiso`;
CREATE TABLE `permiso`  (
  `idPermiso` int(0) NOT NULL AUTO_INCREMENT,
  `desPermiso` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusPermiso` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idPermiso`) USING BTREE,
  UNIQUE INDEX `desPermiso`(`desPermiso`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permiso
-- ----------------------------
INSERT INTO `permiso` VALUES (1, 'TOTAL', '1');
INSERT INTO `permiso` VALUES (2, 'El usuario tiene permisos de comprar y vender productos', '1');
INSERT INTO `permiso` VALUES (3, 'SUPERUSUARIO', '1');

-- ----------------------------
-- Table structure for preferenciasbusquedas
-- ----------------------------
DROP TABLE IF EXISTS `preferenciasbusquedas`;
CREATE TABLE `preferenciasbusquedas`  (
  `idpreferenciasbusquedas` int(0) NOT NULL AUTO_INCREMENT,
  `ultimasBusquedas` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idpreferenciasbusquedas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of preferenciasbusquedas
-- ----------------------------

-- ----------------------------
-- Table structure for preferenciasiniciales
-- ----------------------------
DROP TABLE IF EXISTS `preferenciasiniciales`;
CREATE TABLE `preferenciasiniciales`  (
  `idpreferenciasiniciales` int(0) NOT NULL AUTO_INCREMENT,
  `pasatiempo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `deporte` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `instrumentoFavorito` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `comidaFavorita` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpreferenciasiniciales`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of preferenciasiniciales
-- ----------------------------

-- ----------------------------
-- Table structure for producto
-- ----------------------------
DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto`  (
  `idProducto` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idCategoria` int(0) NOT NULL,
  `idMarca` int(0) NOT NULL,
  `nombreProducto` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `desProducto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `precioUnitarioProducto` float(8, 2) NOT NULL DEFAULT 0.00,
  `imagenProducto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `fechaAlojadoProducto` date NOT NULL,
  `stockRealProducto` float(8, 2) NOT NULL,
  `statusProducto` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `urlVideo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `urlDocumento` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE,
  INDEX `pm`(`idMarca`) USING BTREE,
  INDEX `pc`(`idCategoria`) USING BTREE,
  INDEX `pu`(`idUsuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of producto
-- ----------------------------
INSERT INTO `producto` VALUES (34, 39, 1, 6, 'Pantalla plana', 'Televisión inteligente', 5000.00, 'http://192.168.1.72:3000/public/products/image-1616629033631.jpg', '2021-01-30', 16.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (35, 40, 2, 15, 'Laptops', 'Laptop con memoria SD de 250GB', 150.00, 'img/LAPTOP.png', '2021-01-25', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (36, 41, 2, 13, 'iPHONE 6', 'Celular iPhone 6 de la marca Apple', 10500.00, 'http://192.168.1.72:3000/public/products/iphone6.png-1616630640228.png', '2021-01-15', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (37, 42, 2, 13, 'Refrigerador', 'Refrigerador para el hogar de la marca Whirpool', 11500.00, 'http://192.168.1.72:3000/public/products/refrigerador.jpg-1616629124042.jpg', '2021-01-10', 1.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (41, 49, 0, 15, 'Celular Android', 'Celular con sistema operativo Android', 4500.00, 'http://192.168.1.72:3000/public/products/celular.jpeg-1617156335396.jpeg', '2021-03-30', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (42, 49, 0, 0, 'Celular Xiaomi', 'Celular con sistema operativo Android', 4500.00, 'http://192.168.1.72:3000/public/products/celular.jpeg-1617207150442.jpeg', '2021-03-31', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (43, 83, 0, 11, 'Laptop', 'Laptop dell', 2000.00, 'http://192.168.1.72:3000/public/products/8c4def80-07c2-4103-a5b7-420b8aa8f1301183123800.jpg-1617473309605.jpg', '2021-04-03', 0.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (44, 83, 0, 12, 'Adaptador de cargador', 'Adaptador genérico de cargador para móvil', 100.00, 'http://192.168.1.72:3000/public/products/fea1196d-fa29-4f20-a436-8c6301d08293511012252.jpg-1617559487416.jpg', '2021-04-04', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (45, 49, 2, 11, 'Laptop Dell', 'Laptop Dell con 8gb de ram, 2.6 Ghz', 4200.00, 'http://192.168.1.72:3000/public/products/IMG-20210310-WA0006.jpeg-1617769363690.jpeg', '2021-04-06', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (46, 49, 2, 14, 'Laptop Dell', 'Laptop Dell usado', 4200.00, 'http://192.168.1.72:3000/public/products/IMG-20210310-WA0006.jpeg-1617769651360.jpeg', '2021-04-06', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (47, 49, 1, 7, 'Lentes', 'Lentes para cuidar la vista de la luz de los aparatos electrónicos', 2000.00, 'http://192.168.1.72:3000/public/products/IMG-20201023-WA0004.jpg-1617769805550.jpg', '2021-04-06', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (48, 49, 2, 12, 'Laptop Dell', 'Laptop Dell nuevo', 4200.00, 'http://192.168.1.72:3000/public/products/IMG-20210310-WA0004.jpeg-1617939165921.jpeg', '2021-04-06', 0.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (49, 49, 1, 8, 'Lentes', 'Lentes de protección a la luz azul', 2000.00, 'http://192.168.1.72:3000/public/products/IMG-20201023-WA0003.jpg-1617770359567.jpg', '2021-04-06', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (50, 49, 2, 11, 'Laptop HP', 'Laptop HP de ultima generación', 3500.00, 'http://192.168.1.72:3000/public/products/laptop_hp.jpg-1617843523662.jpg', '2021-04-07', 17.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (51, 49, 2, 11, 'Laptop HP', 'Laptop HP i7', 5200.00, 'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188017803.png', '2021-04-11', 0.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (52, 49, 0, 0, 'Audífonos SONY', 'Audífonos sony de diadema', 500.00, 'http://192.168.1.72:3000/public/products/IMG_20210411_205351.jpg-1618192986090.jpg', '2021-04-11', 15.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (55, 100, 0, 0, 'Estuche de lentes', 'Estuche', 50.00, 'http://192.168.1.72:3000/public/products/image_picker2281895957813068809.jpg-1625784021658.jpg', '2021-07-08', 2.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (59, 98, 0, 0, 'Lentes de descanso 3', 'Lentes con protección', 100.00, 'http://192.168.1.72:3000/public/products/20210708_211852.jpg-1625797421084.jpg', '2021-07-08', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (60, 98, 0, 15, 'Teclado inalambrico', 'Alcance de 10 m', 200.00, 'http://192.168.1.72:3000/public/products/20210708_213831.jpg-1625798666026.jpg', '2021-07-08', 25.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (61, 98, 1, 15, 'Estuche de lentes', 'Estuche protector de lentes', 100.00, 'http://192.168.1.72:3000/public/products/20210705_194205.jpg-1626147705933.jpg', '2021-07-12', 2.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (62, 98, 1, 11, 'Libreta', 'Libreta para tomar notas increibles', 20.00, 'http://192.168.1.72:3000/public/products/IMG-20210712-WA0002.jpg-1626148475427.jpg', '2021-07-12', 6.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (63, 100, 1, 16, 'Escritorio', 'Escritorio de madera', 10.00, 'http://192.168.1.72:3000/public/products/IMG-20210801-WA0000.jpg-1627940462926.jpg', '2021-08-02', 18.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (64, 113, 7, 7, 'Libreta TNM', 'Libreta para tomar notas', 5.00, 'http://192.168.1.72:3000/public/products/20210804_215845.jpg-1628132473251.jpg', '2021-08-04', 18.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (65, 114, 2, 11, 'Impresora ', 'Impresora multifuncional con cartuchos recargables', 1500.00, 'http://192.168.1.72:3000/public/products/20210808_200922.jpg-1628471590386.jpg', '2021-08-08', 10.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (66, 40, 8, 6, 'Manguera', 'Manguera para carro', 998.00, 'http://192.168.1.72:3000/public/products/image-1616627584744.jpg', '2021-03-06', 6.00, '1', NULL, NULL);
INSERT INTO `producto` VALUES (77, 133, 10, 18, 'Caramelo prueba', 'Caramelo prueba', 120.00, 'img/productos/lancerfondo.png', '2022-02-20', 0.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (79, 133, 10, 18, 'Caramelo 2', 'Prueba 2', 100.00, 'img/productos/fondoarcher.png', '2022-02-20', 5.00, '0', NULL, NULL);
INSERT INTO `producto` VALUES (80, 133, 10, 18, 'Prueba', 'Pedido', 120.00, 'img/1522340200222.jpeg', '2022-03-03', 0.00, '0', NULL, NULL);

-- ----------------------------
-- Table structure for productocarrito
-- ----------------------------
DROP TABLE IF EXISTS `productocarrito`;
CREATE TABLE `productocarrito`  (
  `idproductocarrito` int(0) NOT NULL AUTO_INCREMENT,
  `idProducto` int(0) NOT NULL,
  `idUsuario` int(0) NOT NULL,
  `cantidadProducto` int(0) NOT NULL,
  `statusProductoCarrito` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subtotal` float NULL DEFAULT NULL,
  `vendido` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idproductocarrito`) USING BTREE,
  INDEX `fkproducto_idx`(`idProducto`) USING BTREE,
  INDEX `fkusuario_idx`(`idUsuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productocarrito
-- ----------------------------
INSERT INTO `productocarrito` VALUES (127, 63, 83, 1, '1', NULL, '1');
INSERT INTO `productocarrito` VALUES (131, 55, 83, 1, '0', NULL, '1');
INSERT INTO `productocarrito` VALUES (132, 63, 83, 1, '1', NULL, '1');
INSERT INTO `productocarrito` VALUES (133, 55, 83, 1, '1', NULL, '1');
INSERT INTO `productocarrito` VALUES (134, 52, 98, 1, '0', NULL, '1');
INSERT INTO `productocarrito` VALUES (135, 48, 98, 1, '0', NULL, '1');
INSERT INTO `productocarrito` VALUES (136, 63, 98, 0, '0', NULL, '0');
INSERT INTO `productocarrito` VALUES (137, 55, 98, 1, '0', NULL, '1');
INSERT INTO `productocarrito` VALUES (138, 52, 98, 0, '0', NULL, '0');
INSERT INTO `productocarrito` VALUES (139, 65, 98, 0, '0', NULL, '0');
INSERT INTO `productocarrito` VALUES (140, 43, 98, 0, '0', NULL, '0');
INSERT INTO `productocarrito` VALUES (141, 50, 98, 1, '1', NULL, '0');
INSERT INTO `productocarrito` VALUES (142, 63, 98, 1, '1', NULL, '0');
INSERT INTO `productocarrito` VALUES (143, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (144, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (145, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (146, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (147, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (148, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (149, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (150, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (151, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (152, 34, 140, 1, '1', 100, NULL);
INSERT INTO `productocarrito` VALUES (153, 37, 140, 1, '1', 11500, NULL);
INSERT INTO `productocarrito` VALUES (154, 37, 140, 1, '1', 11500, NULL);
INSERT INTO `productocarrito` VALUES (155, 37, 140, 1, '1', 11500, NULL);
INSERT INTO `productocarrito` VALUES (156, 34, 140, 1, '1', 0.5, NULL);
INSERT INTO `productocarrito` VALUES (157, 34, 140, 1, '1', 0.5, NULL);
INSERT INTO `productocarrito` VALUES (158, 34, 140, 1, '1', 0.5, NULL);
INSERT INTO `productocarrito` VALUES (159, 34, 140, 1, '1', 0.5, NULL);
INSERT INTO `productocarrito` VALUES (160, 34, 140, 1, '1', 0.5, NULL);
INSERT INTO `productocarrito` VALUES (161, 66, 140, 1, '1', 50, '1');
INSERT INTO `productocarrito` VALUES (162, 43, 135, 1, '1', 2000, '1');
INSERT INTO `productocarrito` VALUES (163, 37, 135, 1, '1', 11500, '1');
INSERT INTO `productocarrito` VALUES (164, 48, 135, 1, '1', 4200, '1');
INSERT INTO `productocarrito` VALUES (165, 34, 135, 1, '1', 0.5, '1');
INSERT INTO `productocarrito` VALUES (166, 51, 135, 1, '1', 5200, '1');
INSERT INTO `productocarrito` VALUES (167, 43, 135, 1, '1', 2000, '1');
INSERT INTO `productocarrito` VALUES (168, 52, 141, 1, '1', 500, '1');
INSERT INTO `productocarrito` VALUES (169, 60, 141, 1, '1', 200, '1');
INSERT INTO `productocarrito` VALUES (170, 50, 141, 1, '1', 3500, '1');
INSERT INTO `productocarrito` VALUES (183, 52, 135, 1, '1', 500, '1');
INSERT INTO `productocarrito` VALUES (184, 60, 135, 1, '1', 200, '1');
INSERT INTO `productocarrito` VALUES (185, 50, 135, 2, '1', 7000, '1');
INSERT INTO `productocarrito` VALUES (189, 52, 141, 1, '1', 500, '1');
INSERT INTO `productocarrito` VALUES (190, 60, 141, 1, '1', 200, '1');
INSERT INTO `productocarrito` VALUES (191, 50, 141, 2, '1', 7000, '1');
INSERT INTO `productocarrito` VALUES (192, 34, 135, 1, '1', 0.5, '1');
INSERT INTO `productocarrito` VALUES (193, 52, 135, 1, '1', 500, '1');
INSERT INTO `productocarrito` VALUES (194, 37, 135, 1, '1', 11500, '1');
INSERT INTO `productocarrito` VALUES (195, 37, 152, 1, '1', 11500, '1');
INSERT INTO `productocarrito` VALUES (196, 50, 152, 1, '1', 3500, '1');
INSERT INTO `productocarrito` VALUES (197, 52, 152, 7, '1', 3500, '1');
INSERT INTO `productocarrito` VALUES (198, 63, 152, 2, '1', 20, '1');
INSERT INTO `productocarrito` VALUES (199, 60, 152, 2, '1', 400, '1');
INSERT INTO `productocarrito` VALUES (200, 50, 152, 2, '1', 7000, '1');
INSERT INTO `productocarrito` VALUES (201, 34, 152, 1, '1', 5000, '1');
INSERT INTO `productocarrito` VALUES (202, 50, 152, 1, '1', 3500, '1');
INSERT INTO `productocarrito` VALUES (203, 34, 152, 3, '1', 15000, '1');
INSERT INTO `productocarrito` VALUES (204, 34, 135, 3, '1', 15000, '1');
INSERT INTO `productocarrito` VALUES (205, 34, 152, 1, '1', 5000, '1');
INSERT INTO `productocarrito` VALUES (206, 50, 152, 1, '1', 3500, '1');
INSERT INTO `productocarrito` VALUES (207, 37, 152, 1, '1', 11500, '1');
INSERT INTO `productocarrito` VALUES (208, 66, 156, 1, '1', 998, '1');
INSERT INTO `productocarrito` VALUES (209, 64, 157, 1, '1', 5, '1');
INSERT INTO `productocarrito` VALUES (210, 51, 152, 1, '1', 5200, '1');
INSERT INTO `productocarrito` VALUES (211, 48, 152, 1, '1', 4200, '1');

-- ----------------------------
-- Table structure for productocarritoventa
-- ----------------------------
DROP TABLE IF EXISTS `productocarritoventa`;
CREATE TABLE `productocarritoventa`  (
  `idproductocarritoventa` int(0) NOT NULL AUTO_INCREMENT,
  `idproductocarrito` int(0) NOT NULL,
  `FolioVenta` int(0) NOT NULL,
  PRIMARY KEY (`idproductocarritoventa`) USING BTREE,
  INDEX `fkpcvproductocarrito_idx`(`idproductocarrito`) USING BTREE,
  INDEX `fkpcvventa_idx`(`FolioVenta`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productocarritoventa
-- ----------------------------
INSERT INTO `productocarritoventa` VALUES (2, 127, 164);
INSERT INTO `productocarritoventa` VALUES (3, 131, 168);
INSERT INTO `productocarritoventa` VALUES (4, 132, 169);
INSERT INTO `productocarritoventa` VALUES (5, 133, 169);
INSERT INTO `productocarritoventa` VALUES (6, 134, 170);
INSERT INTO `productocarritoventa` VALUES (7, 135, 170);
INSERT INTO `productocarritoventa` VALUES (8, 137, 171);
INSERT INTO `productocarritoventa` VALUES (9, 161, 171);
INSERT INTO `productocarritoventa` VALUES (10, 162, 172);
INSERT INTO `productocarritoventa` VALUES (11, 163, 172);
INSERT INTO `productocarritoventa` VALUES (12, 164, 172);
INSERT INTO `productocarritoventa` VALUES (13, 165, 173);
INSERT INTO `productocarritoventa` VALUES (14, 166, 173);
INSERT INTO `productocarritoventa` VALUES (15, 167, 173);
INSERT INTO `productocarritoventa` VALUES (16, 168, 174);
INSERT INTO `productocarritoventa` VALUES (17, 169, 174);
INSERT INTO `productocarritoventa` VALUES (18, 170, 174);
INSERT INTO `productocarritoventa` VALUES (31, 183, 179);
INSERT INTO `productocarritoventa` VALUES (32, 184, 179);
INSERT INTO `productocarritoventa` VALUES (33, 185, 179);
INSERT INTO `productocarritoventa` VALUES (37, 189, 181);
INSERT INTO `productocarritoventa` VALUES (38, 190, 181);
INSERT INTO `productocarritoventa` VALUES (39, 191, 181);
INSERT INTO `productocarritoventa` VALUES (40, 192, 182);
INSERT INTO `productocarritoventa` VALUES (41, 193, 182);
INSERT INTO `productocarritoventa` VALUES (42, 194, 182);
INSERT INTO `productocarritoventa` VALUES (43, 195, 183);
INSERT INTO `productocarritoventa` VALUES (44, 196, 183);
INSERT INTO `productocarritoventa` VALUES (45, 197, 184);
INSERT INTO `productocarritoventa` VALUES (46, 198, 184);
INSERT INTO `productocarritoventa` VALUES (47, 199, 184);
INSERT INTO `productocarritoventa` VALUES (48, 201, 185);
INSERT INTO `productocarritoventa` VALUES (49, 202, 185);
INSERT INTO `productocarritoventa` VALUES (50, 203, 186);
INSERT INTO `productocarritoventa` VALUES (51, 204, 187);
INSERT INTO `productocarritoventa` VALUES (52, 205, 188);
INSERT INTO `productocarritoventa` VALUES (53, 206, 188);
INSERT INTO `productocarritoventa` VALUES (54, 207, 189);
INSERT INTO `productocarritoventa` VALUES (55, 208, 190);
INSERT INTO `productocarritoventa` VALUES (56, 209, 191);
INSERT INTO `productocarritoventa` VALUES (57, 210, 192);
INSERT INTO `productocarritoventa` VALUES (58, 211, 192);

-- ----------------------------
-- Table structure for promocion
-- ----------------------------
DROP TABLE IF EXISTS `promocion`;
CREATE TABLE `promocion`  (
  `idpromocion` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `porcentaje` float(8, 2) NOT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `statusPromocion` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpromocion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of promocion
-- ----------------------------

-- ----------------------------
-- Table structure for promocionproducto
-- ----------------------------
DROP TABLE IF EXISTS `promocionproducto`;
CREATE TABLE `promocionproducto`  (
  `idpromocionproducto` int(0) NOT NULL AUTO_INCREMENT,
  `idPromocion` int(0) NOT NULL,
  `idProducto` int(0) NOT NULL,
  PRIMARY KEY (`idpromocionproducto`) USING BTREE,
  INDEX `fkpromproducto_idx`(`idProducto`) USING BTREE,
  INDEX `fkprompromocion_idx`(`idPromocion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of promocionproducto
-- ----------------------------

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol`  (
  `idRole` int(0) NOT NULL AUTO_INCREMENT,
  `desRole` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `statusRole` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idRole`) USING BTREE,
  UNIQUE INDEX `desRole`(`desRole`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES (1, 'ADMIN', '1');
INSERT INTO `rol` VALUES (2, 'VENDEDOR', '1');
INSERT INTO `rol` VALUES (3, 'CLIENTE', '1');

-- ----------------------------
-- Table structure for rolpermiso
-- ----------------------------
DROP TABLE IF EXISTS `rolpermiso`;
CREATE TABLE `rolpermiso`  (
  `idRolPermisoUsuario` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idRol` int(0) NOT NULL,
  `idPermiso` int(0) NOT NULL,
  PRIMARY KEY (`idRolPermisoUsuario`) USING BTREE,
  INDEX `rpu`(`idUsuario`) USING BTREE,
  INDEX `rpp`(`idPermiso`) USING BTREE,
  INDEX `rpr`(`idRol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rolpermiso
-- ----------------------------
INSERT INTO `rolpermiso` VALUES (66, 173, 3, 3);
INSERT INTO `rolpermiso` VALUES (67, 174, 3, 3);
INSERT INTO `rolpermiso` VALUES (68, 174, 2, 2);
INSERT INTO `rolpermiso` VALUES (69, 175, 3, 3);
INSERT INTO `rolpermiso` VALUES (70, 175, 1, 1);
INSERT INTO `rolpermiso` VALUES (71, 176, 3, 3);
INSERT INTO `rolpermiso` VALUES (72, 177, 3, 3);
INSERT INTO `rolpermiso` VALUES (73, 178, 3, 3);
INSERT INTO `rolpermiso` VALUES (74, 179, 3, 3);
INSERT INTO `rolpermiso` VALUES (75, 180, 3, 3);
INSERT INTO `rolpermiso` VALUES (76, 181, 3, 3);
INSERT INTO `rolpermiso` VALUES (77, 182, 3, 3);
INSERT INTO `rolpermiso` VALUES (78, 183, 3, 3);
INSERT INTO `rolpermiso` VALUES (79, 184, 3, 3);
INSERT INTO `rolpermiso` VALUES (80, 185, 3, 3);
INSERT INTO `rolpermiso` VALUES (81, 186, 3, 3);
INSERT INTO `rolpermiso` VALUES (82, 187, 3, 3);
INSERT INTO `rolpermiso` VALUES (83, 188, 3, 3);
INSERT INTO `rolpermiso` VALUES (84, 189, 3, 3);
INSERT INTO `rolpermiso` VALUES (85, 190, 3, 3);
INSERT INTO `rolpermiso` VALUES (86, 191, 3, 3);
INSERT INTO `rolpermiso` VALUES (87, 192, 3, 3);
INSERT INTO `rolpermiso` VALUES (88, 193, 3, 3);

-- ----------------------------
-- Table structure for tarjetacodeway
-- ----------------------------
DROP TABLE IF EXISTS `tarjetacodeway`;
CREATE TABLE `tarjetacodeway`  (
  `idtarjetacodeway` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `numTarjeta` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_german2_ci NOT NULL,
  `fechaVencimiento` datetime(0) NOT NULL,
  `cvc` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_german2_ci NOT NULL,
  `saldo` float(8, 2) NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_german2_ci NULL DEFAULT NULL,
  `statusTarjetaCodeway` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_german2_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idtarjetacodeway`) USING BTREE,
  INDEX `fktarjetausuario_idx`(`idUsuario`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_german2_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tarjetacodeway
-- ----------------------------

-- ----------------------------
-- Table structure for temporada
-- ----------------------------
DROP TABLE IF EXISTS `temporada`;
CREATE TABLE `temporada`  (
  `idtemporada` int(0) NOT NULL AUTO_INCREMENT,
  `idPromocion` int(0) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fechaInicio` datetime(0) NOT NULL,
  `fechaTermino` datetime(0) NOT NULL,
  PRIMARY KEY (`idtemporada`) USING BTREE,
  INDEX `fktemporadapromocion_idx`(`idPromocion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of temporada
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `idUsuario` int(0) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `apellido1Usuario` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `emailUsuario` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `contraUsuario` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `confirmaContraUsuario` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `apellido2Usuario` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `imagenUsuario` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `telefonoUsuario` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `fechaRegistroUsuario` datetime(0) NOT NULL,
  `statusUsuario` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `rfeUsuario` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `fechaNacimiento` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `codeActive` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `clienidpaypal` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `pk_mercadopago` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `accessTokenMpago` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `tokenFCM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (39, 'Elliot', 'Marco', 'eheibel0@gmail.com', 'koZRvaw5X', 'koZRvaw5X', 'Cervantes', 'img/', '9241167570', '2013-11-24 17:15:10', '0', 'HUCA970125', '1997-01-25', '0378-1420', '783c:b4a6:cd25:ff2:6e06:735a:c21c:f997/16', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (40, 'Alwy', 'Habbi', 'afaro12@gmail.com', '9Uibwmu21nhD', '9Uibwmu21nhD', 'Faro', '<br />\r\n<b>Notice</b>:  Undefined variable: foto in <b>C:laragonwwwpruebasperfilUsuarioactualizarUser.php</b> on line <b>148</b><br />\r\n', '146178169', '2013-11-24 17:15:10', '0', 'HUES960221P66', '1969-12-11', '58668-2841', 'd8d9:2b60:f429:d0cc:c4a4:c154:de90:b284/52', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (41, 'Colline', 'Northrop', 'cgother2@gmail.com', 'jHpAtd7ZQTzU', 'jHpAtd7ZQTzU', 'Gother', 'data:image/pngQmCC', '4851533273', '2013-11-24 17:15:10', '0', 'HUES960221P67', '1968-08-07', '66915-450', '8ea0:5657:51eb:fd70:7db1:616f:3e81:d86/13', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (42, 'Dur', 'Townsend', 'ddoody3@gmail.com', 'HQtqtdsm', 'HQtqtdsm', 'Doody', 'data:image/png', '3104382059', '2013-11-24 17:15:10', '0', 'HUES960221P68', '1998-03-07', '43269-854', 'a401:e72d:db18:57e6:5190:b56:a3f4:d280/99', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (43, 'Celesta', 'Goldin', 'cwidger4@gmail.com', 'sTxq81L', 'sTxq81L', 'Widger', 'data:image/png', '8826226271', '2013-11-24 17:15:10', '1', 'HUES960221P69', '2019-02-12', '24909-146', '7c1e:88d1:b6b9:7b6:584e:6b15:68a7:bad9/114', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (44, 'Mychal', 'Jandourek', 'margue5@gmail.com', 'Z81qWj', 'Z81qWj', 'Argue', 'data:image/png;', '9609475606', '2013-11-24 17:15:10', '0', 'HUES960221P50', '2014-11-05', '0025-1530', '972e:92e0:55c5:f5a4:1053:d8b5:9323:94e7/10', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (45, 'Garv', 'Brisson', 'gtampen6@gmail.com', '3oAYWxVDD87', '3oAYWxVDD87', 'Tampen', 'data:image/png', '1137266693', '2013-11-24 17:15:10', '1', 'HUES960221P51', '2010-01-12', '50184-1020', '9624:e6cb:1db3:51a7:8120:eb30:254:e04d/65', NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (47, 'Jose', 'undefined', 'jose@gmail.com', 'undefined', 'undefined', NULL, NULL, NULL, '2021-03-13 21:52:30', '0', NULL, NULL, 'undefined', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (48, 'Andres', 'Jimenez', 'andres@gmail.com', '12345678', '12345678', NULL, NULL, NULL, '2021-03-13 21:55:10', '0', NULL, NULL, '1564', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (49, 'Sadhia', 'Olivares', 'sadhia@gmail.com', 'olivares', 'olivares', NULL, NULL, NULL, '2021-03-14 22:51:51', '0', NULL, NULL, '78945', NULL, 'TEST-3aa335c4-d833-47aa-b31b-638832e27e2a', 'TEST-610754876220495-072005-da22f948a8a3819f5a1169a0bde2d205-794041051', NULL);
INSERT INTO `usuario` VALUES (50, 'Dani', 'Rodriguez', 'dani@gmail.com', 'dany123', 'dany123', NULL, NULL, NULL, '2021-03-18 17:54:47', '0', NULL, NULL, '1234', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (83, 'José Andrés', 'Jiménez', 'cheche1430@gmail.com', 'josejc', 'josejc', NULL, NULL, NULL, '2021-03-24 10:29:54', '1', NULL, NULL, 'TF6zDi0R4wBVEmPgflnv', NULL, 'public key 2', 'acccess token', 'c9TpBgdvTeOTyeTpG0WPf7:APA91bHqtTVceV9iwf_Usd3MS80M2wIze-dkygTIIJLF6BMRZWifUA-iUOv1VoelmG1xfQyzSX4OshBJK6wtCedyyTsJv4qeySTSTTSk8axxbCIAY0ey0bHr94dWgHmMS1Ubmkl4FjmA');
INSERT INTO `usuario` VALUES (85, 'Rosa', 'Jimenez', 'Rossy@gmail.com', NULL, NULL, 'Cervantes', NULL, NULL, '2021-05-05 20:55:32', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (91, 'CodeWay', 'Soluciones', 'codeway.corp@gmail.com', 'VLt3Pp7JT', 'VLt3Pp7JT', 'Integrales', 'https://lh3.googleusercontent.com/a-/AOh14GgQYdFUimhiCGFXp_ryRfCmd72eVybmyr28KO47=s96-c', NULL, '2021-05-10 17:42:41', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (98, 'José Andrés', 'Jiménez', 'cheche3064@gmail.com', 'todoestuyo', 'todoestuyo', 'Cervantes', 'https://lh3.googleusercontent.com/a-/AOh14GgV-IpwgLyjQe5ti78ly_YrCSMe258TSpK9S5Lx-g=s96-c', NULL, '2021-05-10 22:17:10', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'c9TpBgdvTeOTyeTpG0WPf7:APA91bHqtTVceV9iwf_Usd3MS80M2wIze-dkygTIIJLF6BMRZWifUA-iUOv1VoelmG1xfQyzSX4OshBJK6wtCedyyTsJv4qeySTSTTSk8axxbCIAY0ey0bHr94dWgHmMS1Ubmkl4FjmA');
INSERT INTO `usuario` VALUES (100, 'José Andrés', 'Jiménez', 'andresjimenez.isc@gmail.com', 'todoestuyo30', 'todoestuyo30', 'Cervantes', 'https://lh3.googleusercontent.com/a-/AOh14Ggwp3JDMCJHUigoFVqKQr9auLvUQUeQqHHrM_Rv=s96-c', NULL, '2021-05-23 08:49:08', '1', NULL, NULL, NULL, NULL, 'TEST-3aa335c4-d833-47aa-b31b-638832e27e2a', 'TEST-610754876220495-072005-da22f948a8a3819f5a1169a0bde2d205-794041051', 'token nuevo');
INSERT INTO `usuario` VALUES (113, 'Pedro', 'Quimi', 'quimipedro@yahoo.com', '12345', '12345', NULL, NULL, NULL, '2021-08-02 17:33:48', '1', NULL, NULL, '4L6T4P', NULL, 'APP_USR-b8fe6696-3e9e-428c-a0bd-031e30a4191c', 'APP_USR-7227608592043059-080500-c94e6917ad7e12b3236c5067db04641d-101376251', 'eE0Ralp9QaOz6wew2O1Cur:APA91bGdXUfvoaUWSz7GzbCOLK4vCXC1_8mxGYCJU6cfaF479rkShvMDKUVc8czj3Of8tlavXDeadWkNaPQ-aHKwNF9kmB3JIEEeOMZ7yreKyrIBL6UDXI7P1coASwGWuIUQVvAYyjdS');
INSERT INTO `usuario` VALUES (114, 'Sherlyn', 'Francisco', 'sherlynfranciscojimenez@gmail.com', 'sherlyn', 'sherlyn', NULL, NULL, NULL, '2021-08-08 18:10:15', '1', NULL, NULL, 'FZFTA4', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (115, 'Eliu Emir', 'Francisco', 'eliuemirfranciscojimenez@gmail.com', 'eliuemir', 'eliuemir', NULL, NULL, NULL, '2021-08-26 11:24:29', '0', NULL, NULL, 'LITNR4', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (116, 'Rosendo', 'Jiménez', 'chend@gmail.com', 'onepiece', 'onepiece', 'Cervantes', NULL, 'null', '2021-03-07 00:07:56', '0', 'null', '1998-01-30', '111000', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (133, 'Bernardo', 'Perez', 'berna.perez.bp58@gmail.com', '12345678', '12345678', NULL, 'img/perfilUsuario/bernardo.png', '5532686680', '2021-11-17 18:00:04', '1', NULL, '1998-01-13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (135, 'Juan', 'Lopez', 'juan.lopez@gmail.com', '12345789', '12345789', NULL, '', '5618139294', '2021-11-22 16:39:31', '1', NULL, '1998-02-19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (139, 'Fernando', 'Osornio', 'fer.osornio@gmail.com', '12345678', '12345678', NULL, '', '5545876957', '2021-11-29 16:49:16', '0', NULL, '1998-06-13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (140, 'Naomi', 'Mendez', 'nao.mend@gmail.com', '12345678', '12345678', NULL, '', '5562010635', '2021-11-30 17:04:19', '1', NULL, '1997-09-18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (141, 'Bernardo', 'Mendoza', 'berd.pendragon@gmail.com', '12345678', '12345678', NULL, NULL, '7296244309', '2022-01-04 14:42:20', '1', NULL, '1998-01-13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (152, 'Bernardo', 'Perez', 'odanobu1598@gmail.com', '11111111', '11111111', NULL, NULL, '5532686680', '2022-02-09 16:32:01', '1', NULL, '1998-12-01', '1lb0m8x9i4', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (153, 'Julio', 'Regalado', 'julio.regalado@gmail.com', '12345678', '12345678', NULL, NULL, '558436012589', '2022-02-22 18:14:58', '0', NULL, '1998-07-01', '', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (154, 'Luis', 'Garcia', 'luis.g@gmail.com', '12345678', '12345678', NULL, '', '5532686680', '2022-02-22 18:16:25', '1', NULL, '1992-07-22', '', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (156, 'Ivan', 'Rivas', 'ihalo94@gmail.com', 'login300', 'login300', NULL, NULL, '5535297808', '2022-03-03 02:05:02', '1', NULL, '1999-01-02', 'fwqnaou93x', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (157, 'Bernardo', 'Perez', 'perezmendozabernardo108@gmail.com', 'berd1234', 'berd1234', NULL, NULL, '5545876957', '2022-03-03 02:25:28', '1', NULL, '1995-01-13', 'smhfdn57ea', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (158, 'Yorely', 'Martinez', 'yorely1200@gmail.com', 'Y121200gm', 'Y121200gm', NULL, NULL, '5525103132', '2021-03-03 02:25:28', '1', NULL, '2000-12-12', 'skdioewhfei', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (159, 'Ferndando', 'Martinez', 'yorely1200@gmail.com', 'Y121200gm', 'Y121200gm', NULL, NULL, '5525103132', '2021-03-03 02:25:28', '1', NULL, '2000-12-12', 'skdioewhfei', NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (160, 'Nina', 'Damian', 'correodeNina@gmail.com', NULL, NULL, NULL, NULL, NULL, '2022-11-08 00:00:00', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (161, 'Nina', 'Martinez', 'yorely1200@gmail.com', NULL, NULL, NULL, NULL, NULL, '2022-11-08 00:00:00', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (162, 'YOR', 'MILPITA', 'yor@gmail.com', 'Y121200gm', 'Y121200gm', 'DAMIAN', NULL, '5525103132', '2022-11-09 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (163, 'DAMIAN', 'MILPITA', 'damian@gmail.com', 'Y121200gm', 'Y121200gm', 'DAMIAN', NULL, '5525103132', '2022-11-09 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (164, 'LUPITA', 'MILPITA', 'lupita@gmail.com', 'Y121200gm', 'Y121200gm', 'DAMIAN', NULL, '5525103132', '2022-11-09 00:00:00', '0', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (165, 'GUADALUPE', 'JUARES', 'guadalais@gmail.com', 'Y121200gm', 'Y121200gm', 'MICHOACAN', NULL, '5525087476', '2022-11-10 00:00:00', '1', NULL, '2004-11-29', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (166, 'Lourdes', 'Valles', 'lou@gmail.com', 'lou', 'lou', 'Lagunas', NULL, '5524857384', '2023-01-03 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (167, 'Juanita', 'Lagunas', 'pochita@gmail.com', '$2a$08$pOdt1BiWxlNpwr/a1Y279OSwLPIsLtORNca7TBfJ9QHzgUjkG4vde', 'pochita', 'Lagunas', NULL, '5524857334', '2023-01-09 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (168, 'Layra', 'Gutiérrez ', 'lay@gmail.com', '$2a$08$W54iDVwRdorVZObFnKh22O7xVJP7jsZa.EL17dHw551hVoa5KqRhy', '$2a$08$W54iDVwRdorVZObFnKh22O7xVJP7jsZa.EL17dHw551hVoa5KqRhy', 'Domínguez ', NULL, '5531976527', '2023-01-09 00:00:00', '1', NULL, '1996-0-9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (169, 'Morgan', 'Sanchez', 'morgan@gmail.com', '$2a$08$HV4ASPCLNzVaa7bipChiVeImXP.ZxKeTiF6f8q418SLjARCnBLIlm', '$2a$08$HV4ASPCLNzVaa7bipChiVeImXP.ZxKeTiF6f8q418SLjARCnBLIlm', 'Lozano', NULL, '557329482', '2023-01-09 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (170, 'Kattia', 'Mondaca ', 'katia@gmail.com', '$2a$08$Z.TQ7zDOmNEMrsY7u6nrn.VXN9h36Akk/fydz7F6SQiI0m2nWrKn2', '$2a$08$Z.TQ7zDOmNEMrsY7u6nrn.VXN9h36Akk/fydz7F6SQiI0m2nWrKn2', 'López ', 'https://aniyuki.com/wp-content/uploads/2021/05/aniyuki-nezuko-46-777x1024.jpg', '5590673085', '2023-01-09 00:00:00', '1', NULL, '2002-0-9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (171, 'Josefina ', 'Damián ', 'jos@gmail.com', '$2a$08$4H4Lx9QBehdbeLGWG0VY1er8xf.cZp5qDeibemXhBT1/MguJO5U6K', '$2a$08$4H4Lx9QBehdbeLGWG0VY1er8xf.cZp5qDeibemXhBT1/MguJO5U6K', 'Mejía ', NULL, '557643705', '2023-01-10 00:00:00', '1', NULL, '1981-4-2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (174, 'Julieta', 'Moncada', 'julieta@gmail.com', '$2a$08$mlX5bUkwCOlWXE9UcCh3DOTZN.LY3nmK6OWuUVeSiqzwVBxsEx5NO', 'julieta', 'Juarez', NULL, '5573627465', '2023-01-10 00:00:00', '1', NULL, '2000-12-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (175, 'Jul', 'Mon', 'jun@gmail.com', '$2a$08$zhbI8KjLO64j26ofTTbFbeeRMOl07kT9mpFg/QolLgRC9eD2F7ev.', '$2a$08$zhbI8KjLO64j26ofTTbFbeeRMOl07kT9mpFg/QolLgRC9eD2F7ev.', 'Blue', NULL, '5573627465', '2023-01-11 00:00:00', '1', NULL, '2000-15-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (176, 'Esmeralda', 'Catellano', 'esme@gmail.com', '$2a$08$7q4wsw/aZkiMduEppL29reMk0aMaZdpVGPHsAool7/sR5NHfH1wAS', '$2a$08$7q4wsw/aZkiMduEppL29reMk0aMaZdpVGPHsAool7/sR5NHfH1wAS', 'Torres', NULL, '5582948576', '2023-01-11 00:00:00', '1', NULL, '2000-0-11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (177, 'Sofia', 'Zarza', 'sofia@gmail.com', '$2a$08$nfjG9H5QvB.v5JKE6S30quha25vAzr5b7yu74H4rd11QHzxfEh1aq', '$2a$08$nfjG9H5QvB.v5JKE6S30quha25vAzr5b7yu74H4rd11QHzxfEh1aq', 'Vilchis', NULL, '5582948602', '2023-01-12 00:00:00', '1', NULL, '2012-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (178, 'Angel', 'Ramirez', 'angel@gmail.com', '$2a$08$.Q4r4wGDD8JFwSRnmGkaIukQgBR9hmDWF8kQf2Lj4OL.3aj4kcKkO', '$2a$08$.Q4r4wGDD8JFwSRnmGkaIukQgBR9hmDWF8kQf2Lj4OL.3aj4kcKkO', 'Sanabria', NULL, '5583745673', '2023-01-12 00:00:00', '1', NULL, '2001-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (179, 'Gonzalo', 'Mendoza', 'gonzalo@gmail.com', '$2a$08$raFW42.FzPJDjY0XBmpLV.47dhdJ20DL1cBXhGT3LgBx0w5GsJkmq', '$2a$08$raFW42.FzPJDjY0XBmpLV.47dhdJ20DL1cBXhGT3LgBx0w5GsJkmq', 'Maldonado', NULL, '5583758328', '2023-01-12 00:00:00', '1', NULL, '2000-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (180, 'Jesus', 'Lagunas', 'jesus@gmail.com', '$2a$08$3IO0XpBtR0uIjH3nSzWzZOUs1tvGu92azKAlxNzHQRVXIzs8qtOY2', '$2a$08$3IO0XpBtR0uIjH3nSzWzZOUs1tvGu92azKAlxNzHQRVXIzs8qtOY2', 'Laguna', NULL, '5583748596', '2023-01-12 00:00:00', '1', NULL, '2013-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (181, 'Juanito', 'Juarez', 'ju@gmail.com', '$2a$08$/sKxIUnli/WtykKklv0LGe/Dg9cpCbZu.JlmtjnCeYqMYdunsd0l6', '$2a$08$/sKxIUnli/WtykKklv0LGe/Dg9cpCbZu.JlmtjnCeYqMYdunsd0l6', 'Sanchez', NULL, '5573849502', '2023-01-12 00:00:00', '1', NULL, '2003-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (182, 'Gabriel', 'Vasquez', 'gabriel@gmail.com', '$2a$08$Zxgxvzn9wR15/f6zwt4rdevUaLMHoaGxSQ2z34031OSZLGAaIVUrq', '$2a$08$Zxgxvzn9wR15/f6zwt4rdevUaLMHoaGxSQ2z34031OSZLGAaIVUrq', 'Lopez', NULL, '5573894723', '2023-01-12 00:00:00', '1', NULL, '1977-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (183, 'Julian', 'Sanabria', 'julian@gmail.com', '$2a$08$h9u7/BXEOpCqe8kjgyuce.l5IvbyrLwGt/9GElTISPK.nyf1n.Hci', '$2a$08$h9u7/BXEOpCqe8kjgyuce.l5IvbyrLwGt/9GElTISPK.nyf1n.Hci', 'Dominguez', NULL, '5573748483', '2023-01-12 00:00:00', '1', NULL, '2004-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (184, 'Katia', 'jajdhi', 'katia@gmail.com', '$2a$08$y/bt/R603bquxORQUC1hVOtl0ANIS6uviAy9H.eVIyE0wfLC1e5eO', '$2a$08$y/bt/R603bquxORQUC1hVOtl0ANIS6uviAy9H.eVIyE0wfLC1e5eO', 'osjdoe', NULL, '73847493283', '2023-01-12 00:00:00', '1', NULL, '2013-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (185, 'Nubia', 'bcbwief', 'nubia@gmail.com', '$2a$08$zrcs.sS0YxUDNaS2TJ//neH05k06gnlBNkvfU7r2NLgvzp0rP5hcy', '$2a$08$zrcs.sS0YxUDNaS2TJ//neH05k06gnlBNkvfU7r2NLgvzp0rP5hcy', 'iaowhd', NULL, '5573829485', '2023-01-12 00:00:00', '1', NULL, '2001-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (186, 'Fulanita', 'Gomez', 'fulanita@gmail.com', '$2a$08$pigB6/BqFoRA.bEwOmAbx.aFHyAr6viDMaVCTosmKthOVujpFeUC.', '$2a$08$pigB6/BqFoRA.bEwOmAbx.aFHyAr6viDMaVCTosmKthOVujpFeUC.', 'Sanchez', NULL, '55738948374', '2023-01-12 00:00:00', '1', NULL, '1959-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (187, 'Jesus', 'Miranda', 'jesus@gmail.com', '$2a$08$BebjHa2wT4FlWuTDIitRn.XAXEULbYpF/LW.MYL3soHn3Y60Fcr.6', '$2a$08$BebjHa2wT4FlWuTDIitRn.XAXEULbYpF/LW.MYL3soHn3Y60Fcr.6', 'Gomez', NULL, '55738849284', '2023-01-12 00:00:00', '1', NULL, '2000-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (188, 'Jose', 'Gomez', 'jose@gmail.com', '$2a$08$HeBb7qw7ru9Sd976LhkEE.XFbufyBeg1gElm1GbfU2cbPzBxjGr4C', '$2a$08$HeBb7qw7ru9Sd976LhkEE.XFbufyBeg1gElm1GbfU2cbPzBxjGr4C', 'Sanchez', NULL, '5538495038', '2023-01-12 00:00:00', '1', NULL, '2006-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (189, 'Jose Luis', 'Gomez', 'josel@gmail.com', '$2a$08$dNUI5FSB5JkC7hhVPUvyJ./hjQDccff3wFrBrEMRwRtT/aFeRGVKC', '$2a$08$dNUI5FSB5JkC7hhVPUvyJ./hjQDccff3wFrBrEMRwRtT/aFeRGVKC', 'Peralta', NULL, '5573889485', '2023-01-12 00:00:00', '1', NULL, '1998-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (190, 'Carla', 'Damian', 'carla@gmail.com', '$2a$08$RKtthPWDjg/L/mkYoZNPEeIz1x1KcVddYq8CU.sPV1HHqVv4peWg.', '$2a$08$RKtthPWDjg/L/mkYoZNPEeIz1x1KcVddYq8CU.sPV1HHqVv4peWg.', 'Mejia', NULL, '557382903', '2023-01-12 00:00:00', '1', NULL, '2009-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (191, 'Yamilet', 'Martinez', 'yami@gmail.com', '$2a$08$MhNKMvRPYBpBiLvE5//7YedCVKxiIOMf5DWQlSIN8rNVNTfnYRM6y', '$2a$08$MhNKMvRPYBpBiLvE5//7YedCVKxiIOMf5DWQlSIN8rNVNTfnYRM6y', 'Garcia', NULL, '5583747576', '2023-01-12 00:00:00', '1', NULL, '2004-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (192, 'Hania', 'Sanchez', 'hania@gmail.com', '$2a$08$5q2VXBdKz.roWkXy7gu9qeTsJ1ZviLVOAxWqCSVqrJglUhdMLjTlC', '$2a$08$5q2VXBdKz.roWkXy7gu9qeTsJ1ZviLVOAxWqCSVqrJglUhdMLjTlC', 'Escalona', NULL, '5573894756', '2023-01-12 00:00:00', '1', NULL, '2012-0-12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usuario` VALUES (193, 'Jasmin', 'Sanchez', 'jasmim@gmail.com', '$2a$08$ZAvRbKT1IS2Y/Lwqwc29sOevdONtC24WlQoSU5i0eAydh3zErtrIG', '$2a$08$ZAvRbKT1IS2Y/Lwqwc29sOevdONtC24WlQoSU5i0eAydh3zErtrIG', 'Dominguez', NULL, '6657385734', '2023-01-12 00:00:00', '1', NULL, '2003-0-12', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for usuariomembresia
-- ----------------------------
DROP TABLE IF EXISTS `usuariomembresia`;
CREATE TABLE `usuariomembresia`  (
  `idusuariomembresia` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idMembresia` int(0) NOT NULL,
  PRIMARY KEY (`idusuariomembresia`) USING BTREE,
  INDEX `fkumusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkummembresia_idx`(`idMembresia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuariomembresia
-- ----------------------------

-- ----------------------------
-- Table structure for usuariopreferencias
-- ----------------------------
DROP TABLE IF EXISTS `usuariopreferencias`;
CREATE TABLE `usuariopreferencias`  (
  `idusuariopreferencias` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idPreferenciasBusquedas` int(0) NOT NULL,
  PRIMARY KEY (`idusuariopreferencias`) USING BTREE,
  INDEX `fkprefusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkprefbusquedas_idx`(`idPreferenciasBusquedas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuariopreferencias
-- ----------------------------

-- ----------------------------
-- Table structure for usuariopreferenciasiniciales
-- ----------------------------
DROP TABLE IF EXISTS `usuariopreferenciasiniciales`;
CREATE TABLE `usuariopreferenciasiniciales`  (
  `idusuariopreferenciasiniciales` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idpreferenciasiniciales` int(0) NOT NULL,
  PRIMARY KEY (`idusuariopreferenciasiniciales`) USING BTREE,
  INDEX `fkupiusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkupipreferenciasiniciales_idx`(`idpreferenciasiniciales`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuariopreferenciasiniciales
-- ----------------------------

-- ----------------------------
-- Table structure for venta
-- ----------------------------
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta`  (
  `FolioVenta` int(0) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(0) NOT NULL,
  `idpaginaPago` int(0) NOT NULL,
  `claveTransaccion` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `paypalDatos` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  `fechaVenta` datetime(0) NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `totalVendido` float(8, 2) NOT NULL,
  `direccionEntrega` varchar(255) CHARACTER SET utf16 COLLATE utf16_bin NULL DEFAULT NULL,
  `statusVenta` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`FolioVenta`) USING BTREE,
  INDEX `fkusuario_idx`(`idUsuario`) USING BTREE,
  INDEX `fkventapaginapago_idx`(`idpaginaPago`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of venta
-- ----------------------------
INSERT INTO `venta` VALUES (164, 83, 1, '7364982748', 'Vacio', '2021-08-23 21:25:01', 'cheche1430@gmail.com', 200.00, 'Calle Anteros 603', '0');
INSERT INTO `venta` VALUES (168, 83, 1, '1240140036', 'Vacio', '2021-08-24 09:33:47', 'test_user_91638065@testuser.com', 50.00, 'Calle Anteros 603', '0');
INSERT INTO `venta` VALUES (169, 83, 1, '9182828374', 'Vacio', '2021-08-24 12:32:36', 'cheche1430@gmail.com', 60.00, 'Calle Anteros 603', '1');
INSERT INTO `venta` VALUES (170, 98, 1, '1240147420', 'Vacio', '2021-08-24 13:28:48', 'test_user_91638065@testuser.com', 4700.00, 'Calle Anteros 603', '1');
INSERT INTO `venta` VALUES (171, 98, 1, '1240199649', 'Vacio', '2021-08-25 11:55:32', 'test_user_91638065@testuser.com', 50.00, 'Calle Anteros 603', '1');
INSERT INTO `venta` VALUES (172, 135, 2, '07G62443210392602', '', '2022-01-17 20:20:33', 'juan.lopez@gmail.com', 17700.00, '', '1');
INSERT INTO `venta` VALUES (173, 135, 1, '1245692729', '', '2022-01-27 14:54:35', 'juan.lopez@gmail.com', 7200.50, '', '1');
INSERT INTO `venta` VALUES (174, 141, 1, '1245756679', '', '2022-01-31 14:47:25', 'berd.pendragon@gmail.com', 4200.00, '', '1');
INSERT INTO `venta` VALUES (179, 135, 3, '5414464', '', '2022-01-31 17:41:38', 'juan.lopez@gmail.com', 7700.00, '', '1');
INSERT INTO `venta` VALUES (181, 141, 3, '60948396', '', '2022-01-31 17:49:58', 'berd.pendragon@gmail.com', 7700.00, '', '1');
INSERT INTO `venta` VALUES (182, 135, 1, '1245823806', '', '2022-02-03 16:18:14', 'juan.lopez@gmail.com', 12000.50, '', '1');
INSERT INTO `venta` VALUES (183, 152, 1, '1246034644', '', '2022-02-13 15:18:25', 'odanobu1598@gmail.com', 15000.00, '5', '1');
INSERT INTO `venta` VALUES (184, 152, 2, '4YS905193C011551Y', '', '2022-02-13 16:29:31', 'odanobu1598@gmail.com', 3920.00, '', '1');
INSERT INTO `venta` VALUES (185, 152, 3, '', '', '2022-02-22 16:29:46', 'odanobu1598@gmail.com', 8500.00, 'Bugambilia, s/n, En el local numero 10 dl mercado municipal, Tetela del volcan , 62800, Morelos', '0');
INSERT INTO `venta` VALUES (186, 152, 3, '', '', '2022-02-22 16:35:17', 'odanobu1598@gmail.com', 15000.00, 'Bugambilia, s/n, En el local numero 10 dl mercado municipal, Tetela del volcan , 62800, Morelos', '1');
INSERT INTO `venta` VALUES (187, 135, 3, '', '', '2022-02-22 16:58:39', 'juan.lopez@gmail.com', 15000.00, 'La paz, s/n, Sin referencia, Jilotepec, 54685, Mexico', '1');
INSERT INTO `venta` VALUES (188, 152, 3, '', '', '2022-02-23 14:35:35', 'odanobu1598@gmail.com', 8500.00, 'Bugambilia, s/n, En el local numero 10 dl mercado municipal, Tetela del volcan , 62800, Morelos', '1');
INSERT INTO `venta` VALUES (189, 152, 3, '', '', '2022-03-02 23:36:04', 'odanobu1598@gmail.com', 11500.00, 'Bugambilia, s/n, En el local numero 10 dl mercado municipal, Tetela del volcan , 62800, Morelos', '1');
INSERT INTO `venta` VALUES (190, 156, 3, '', '', '2022-03-03 02:10:36', 'ihalo94@gmail.com', 998.00, ', , , , , ', '1');
INSERT INTO `venta` VALUES (191, 157, 3, '', '', '2022-03-03 02:26:35', 'perezmendozabernardo108@gmail.com', 5.00, ', , , , , ', '1');
INSERT INTO `venta` VALUES (192, 152, 3, '', '', '2022-04-05 21:26:31', 'odanobu1598@gmail.com', 9400.00, '', '1');

-- ----------------------------
-- Procedure structure for agregarrolpermisousuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregarrolpermisousuario`;
delimiter ;;
CREATE PROCEDURE `agregarrolpermisousuario`(`Pmail` VARCHAR(245))
BEGIN
INSERT rolpermiso VALUES(DEFAULT,(SELECT usuario.idUsuario from usuario where usuario.emailUsuario = Pmail),4,2);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for busEmailpedido
-- ----------------------------
DROP PROCEDURE IF EXISTS `busEmailpedido`;
delimiter ;;
CREATE PROCEDURE `busEmailpedido`(`Pidpedido` INT)
BEGIN
SELECT
	usuario.emailUsuario as email
FROM
	pedido
	INNER JOIN
	usuario
	ON 
		pedido.pedidoUser = usuario.idUsuario
		where idPedido = Pidpedido;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for elipedido
-- ----------------------------
DROP PROCEDURE IF EXISTS `elipedido`;
delimiter ;;
CREATE PROCEDURE `elipedido`(`Pidpedido` INT)
BEGIN
UPDATE pedido SET statusPedido = "0" where idPedido = Pidpedido;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertUsuarioDomicilio
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertUsuarioDomicilio`;
delimiter ;;
CREATE PROCEDURE `InsertUsuarioDomicilio`(`Pcod` INT, `Pcp` VARCHAR(10), `Pestado` VARCHAR(255), `Pmunicipio` VARCHAR(255), `Pcolonia` VARCHAR(255), `Pcalleprincipal` VARCHAR(255), `Pnumeroext` VARCHAR(10), `Pcalle1` VARCHAR(255), `Pcalle2` VARCHAR(255), `Preferencia` VARCHAR(255))
BEGIN
INSERT direccion VALUES(DEFAULT,Pcod,Pcp,
												Pestado,Pmunicipio,Pcolonia,Pcalleprincipal,Pnumeroext,Pcalle1,Pcalle2,Preferencia,'1');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MosPedidos
-- ----------------------------
DROP PROCEDURE IF EXISTS `MosPedidos`;
delimiter ;;
CREATE PROCEDURE `MosPedidos`()
BEGIN
SELECT
	venta.FolioVenta as "folio", 
	venta.fechaVenta as "fechaV", 
	venta.totalVendido as "total", 
	venta.statusVenta as "estadoV", 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) as "nombre", 
	usuario.emailUsuario as "email"
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MosPedidosEnv
-- ----------------------------
DROP PROCEDURE IF EXISTS `MosPedidosEnv`;
delimiter ;;
CREATE PROCEDURE `MosPedidosEnv`()
BEGIN
SELECT
	venta.FolioVenta as "folio", 
	venta.fechaVenta as "fechaV", 
	venta.totalVendido as "total", 
	venta.statusVenta as "estadoV", 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) as "nombre", 
	usuario.emailUsuario as "email"
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
		where venta.statusVenta = 1;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for MosPedidosPen
-- ----------------------------
DROP PROCEDURE IF EXISTS `MosPedidosPen`;
delimiter ;;
CREATE PROCEDURE `MosPedidosPen`()
BEGIN
SELECT
	venta.FolioVenta as "folio", 
	venta.fechaVenta as "fechaV", 
	venta.totalVendido as "total", 
	venta.statusVenta as "estadoV", 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) as "nombre", 
	usuario.emailUsuario as "email"
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
		where venta.statusVenta = 0;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActDatFalUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActDatFalUsu`;
delimiter ;;
CREATE PROCEDURE `psActDatFalUsu`(`PidUAct` INT)
BEGIN
	SELECT
	usuario.idUsuario,
	usuario.nombreUsuario,
	usuario.apellido1Usuario,
	usuario.apellido2Usuario,	
	usuario.contraUsuario,
	usuario.confirmaContraUsuario,	
	usuario.direccionUsuario,
	usuario.codigoPostalUsuario,
	usuario.telefonoUsuario,
	usuario.rfeUsuario,
	usuario.fechaNacimiento
	FROM
	usuario
	WHERE usuario.idUsuario = PidUAct;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsActualizarAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsActualizarAdmin`;
delimiter ;;
CREATE PROCEDURE `PsActualizarAdmin`(`idUser` INT(11), `Pnombre` VARCHAR(200), `Papellido` VARCHAR(150), `Pfoto` VARCHAR(255), `Pmail` VARCHAR(245), `Ptelefono` VARCHAR(15), `PfechaN` DATE, `Pstatus` VARCHAR(1))
BEGIN
UPDATE 
usuario 
SET 
usuario.nombreUsuario = Pnombre, 
usuario.apellido1Usuario = Papellido, 
usuario.emailUsuario = Pmail,
usuario.imagenUsuario = Pfoto, 
usuario.telefonoUsuario = Ptelefono, 
usuario.fechaNacimiento = PfechaN,
usuario.statusUsuario = Pstatus
where 
usuario.idUsuario = idUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsActualizarDireccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsActualizarDireccion`;
delimiter ;;
CREATE PROCEDURE `PsActualizarDireccion`(`Pid` INT(11), `Pdirecto` INT, `Pestado` VARCHAR(255), `Pmunicipio` VARCHAR(255), `Pcolonia` VARCHAR(255), `Pcp` VARCHAR(10), `Pcalle` VARCHAR(255), `PnumeroE` VARCHAR(10), `Pcalle1` VARCHAR(255), `Pcalle2` VARCHAR(255), `Preferencia` VARCHAR(255))
BEGIN
UPDATE direccion SET direccion.estado = Pestado, direccion.municipio = Pmunicipio, direccion.colonia = Pcolonia,
										 direccion.codigoPostalUsuario = Pcp, direccion.callePrincipal = Pcalle, direccion.numeroExterior = PnumeroE,
										 direccion.calle1 = Pcalle1, direccion.calle2 = Pcalle2, direccion.referencia = Preferencia
										 where direccion.idUsuario = Pid and direccion.idDireccion = Pdirecto; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsActualizarimgprincipal
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsActualizarimgprincipal`;
delimiter ;;
CREATE PROCEDURE `PsActualizarimgprincipal`(`pIdProducto` INT, `img1` VARCHAR(255))
UPDATE producto SET producto.imagenProducto = img1
  WHERE producto.idProducto = pIdProducto
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActualizarImgsProd
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActualizarImgsProd`;
delimiter ;;
CREATE PROCEDURE `psActualizarImgsProd`(`pIdProducto` INT, `img1` VARCHAR(150), `img2` VARCHAR(150), `img3` VARCHAR(150), `img4` VARCHAR(150))
BEGIN
  UPDATE imgproducto SET imgproducto.img1 = img1,
  imgproducto.img2 = img2,
  imgproducto.img3 = img3,
  imgproducto.img4 = img4
  WHERE imgproducto.idProducto =pIdProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActualizarProdcuto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActualizarProdcuto`;
delimiter ;;
CREATE PROCEDURE `psActualizarProdcuto`(`PnombreActP` VARCHAR(150), `PdescripActP` VARCHAR(255), `PprecioUActP` FLOAT(8,2), `PimagenActP` VARCHAR(255), `PstockActP` FLOAT(8,2), `PidProductoActP` INT, `PstatusP` VARCHAR(1))
BEGIN 	
	UPDATE producto SET producto.nombreProducto = PnombreActP,
	 producto.desProducto = PdescripActP,
	 producto.precioUnitarioProducto = PprecioUActP,
	 producto.imagenProducto = PimagenActP,
	 producto.stockRealProducto = PstockActP,
	 producto.statusProducto = PstatusP
	WHERE  producto.idProducto = PidProductoActP;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsActualizarUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsActualizarUsuario`;
delimiter ;;
CREATE PROCEDURE `PsActualizarUsuario`(`idUser` INT(11), `Pnombre` VARCHAR(200), `Papellido` VARCHAR(150), `Pfoto` VARCHAR(255), `Pmail` VARCHAR(245), `Ptelefono` VARCHAR(15), `PfechaN` DATE)
BEGIN
UPDATE usuario SET usuario.nombreUsuario = Pnombre, usuario.apellido1Usuario = Papellido, usuario.emailUsuario = Pmail,
									 usuario.imagenUsuario = Pfoto, usuario.telefonoUsuario = Ptelefono, usuario.fechaNacimiento = PfechaN 
									 where usuario.idUsuario = idUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsActualizarVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsActualizarVenta`;
delimiter ;;
CREATE PROCEDURE `PsActualizarVenta`(`Pfolio` INT, `PclaveT` VARCHAR(250))
BEGIN
	UPDATE venta SET claveTransaccion = PclaveT, statusVenta = '1' where FolioVenta = Pfolio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psActuImgs
-- ----------------------------
DROP PROCEDURE IF EXISTS `psActuImgs`;
delimiter ;;
CREATE PROCEDURE `psActuImgs`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psBusIdProduCU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psBusIdProduCU`;
delimiter ;;
CREATE PROCEDURE `psBusIdProduCU`(`PidProUmC` INT)
BEGIN 
	SELECT producto.idUsuario FROM producto
	WHERE producto.idProducto = PidProUmC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsBusquedaPedido
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsBusquedaPedido`;
delimiter ;;
CREATE PROCEDURE `PsBusquedaPedido`(`Pcodigo` VARCHAR(150))
begin 
IF Pcodigo = '' THEN
select "vacio" as "aviso";
else
SELECT
	"lleno" as "aviso",
	pedido.idPedido as "cod", 
	pedido.codPedido as "codpedido", 
	usuario.nombreUsuario as "nombre", 
	usuario.apellido1Usuario as "apellido", 
	usuario.emailUsuario as "email", 
	usuario.telefonoUsuario as "telefono", 
	pedido.urlImagen as "imagen"
FROM
	pedido
	INNER JOIN
	usuario
	ON 
		pedido.pedidoUser = usuario.idUsuario
where codPedido LIKE CONCAT('%',Pcodigo,'%');
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsbusquedaPedidos
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsbusquedaPedidos`;
delimiter ;;
CREATE PROCEDURE `PsbusquedaPedidos`(`PcodVenta` INT)
BEGIN

SELECT
	venta.FolioVenta AS folioV, 
	venta.fechaVenta AS fechaV, 
	venta.correo AS correo, 
	venta.claveTransaccion AS claveT, 
	venta.totalVendido AS totalV, 
	venta.direccionEntrega AS direccionE, 
	venta.statusVenta AS statusV, 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS nombre
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
where venta.FolioVenta LIKE CONCAT('%',PcodVenta,'%');

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsBusquedaProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsBusquedaProductos`;
delimiter ;;
CREATE PROCEDURE `PsBusquedaProductos`(`Pproducto` VARCHAR(150))
begin
if Pproducto = '' then
	select "vacio" as "aviso";
	ELSE
	SELECT
	"lleno" as "aviso",
	producto.idProducto AS codigo, 
	producto.nombreProducto AS producto, 
	producto.desProducto AS descripcion, 
	producto.precioUnitarioProducto AS precio, 
	producto.imagenProducto AS foto, 
	producto.stockRealProducto AS stock
FROM
	producto where nombreProducto LIKE CONCAT('%',Pproducto,'%') OR idProducto LIKE CONCAT('%',Pproducto,'%') AND statusProducto = '1';
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psCateAct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psCateAct`;
delimiter ;;
CREATE PROCEDURE `psCateAct`()
BEGIN		
	SELECT categoria.idCategoria,categoria.desCategoria FROM categoria WHERE categoria.statusCategoria = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PSclaveActiv
-- ----------------------------
DROP PROCEDURE IF EXISTS `PSclaveActiv`;
delimiter ;;
CREATE PROCEDURE `PSclaveActiv`(`Piduser` INT)
BEGIN
select usuario.emailUsuario as email,
			 usuario.codeActive as clave
			 FROM 
			 usuario
			 where idUsuario = Piduser;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psConsultaUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psConsultaUsuario`;
delimiter ;;
CREATE PROCEDURE `psConsultaUsuario`(`PdesContra` VARCHAR(16), `PdesEmail` VARCHAR(245))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
								
IF EXISTS(SELECT usuario.emailUsuario, usuario.contraUsuario  FROM usuario WHERE usuario.contraUsuario = PdesContra AND usuario.emailUsuario = PdesEmail) THEN 
		SELECT "Datos Correcto"  AS "Mensaje";		
ELSE			
			SELECT "Datos incorrectos" AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psDateActual
-- ----------------------------
DROP PROCEDURE IF EXISTS `psDateActual`;
delimiter ;;
CREATE PROCEDURE `psDateActual`()
BEGIN 
SELECT CURDATE();
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psDatFalUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psDatFalUsu`;
delimiter ;;
CREATE PROCEDURE `psDatFalUsu`(`Pape2U` VARCHAR(200), `PdirecU` VARCHAR(150), `PcpU` VARCHAR(5), `Ptelefono` VARCHAR(55), `PRFC` VARCHAR(13), `PfeNa` DATE, `PidU` INT)
BEGIN
	UPDATE usuario SET 
	usuario.apellido2Usuario = Pape2U, 
	usuario.direccionUsuario = PdirecU,
	usuario.codigoPostalUsuario = PcpU,
	usuario.telefonoUsuario = Ptelefono,
	usuario.rfeUsuario = PRFC,
	usuario.fechaNacimiento = PfeNa
	WHERE usuario.idUsuario = PidU;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PseliminarAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `PseliminarAdmin`;
delimiter ;;
CREATE PROCEDURE `PseliminarAdmin`(`Pcod` INT)
BEGIN
UPDATE usuario set 
usuario.statusUsuario = '0'
where
usuario.idUsuario = Pcod;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsEliPC
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsEliPC`;
delimiter ;;
CREATE PROCEDURE `PsEliPC`(`PCarrito` INT, `PProducto` INT, `PCantidad` INT)
BEGIN
UPDATE producto SET stockRealProducto = (stockRealProducto + PCantidad) where idProducto = PProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEliProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEliProduct`;
delimiter ;;
CREATE PROCEDURE `psEliProduct`(`Pidrod` INT)
BEGIN 
	UPDATE producto SET stockRealProducto = '0', producto.statusProducto ='0' WHERE producto.idProducto=Pidrod;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEliProductoCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEliProductoCarrito`;
delimiter ;;
CREATE PROCEDURE `psEliProductoCarrito`(`pIdProductoCarrito` INT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0", cantidadProducto=0 WHERE productocarrito.idproductocarrito=pIdProductoCarrito;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsEliVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsEliVenta`;
delimiter ;;
CREATE PROCEDURE `PsEliVenta`(`Pfolio` INT)
BEGIN
UPDATE venta SET statusVenta = '0' where FolioVenta = Pfolio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psEmailConfirm
-- ----------------------------
DROP PROCEDURE IF EXISTS `psEmailConfirm`;
delimiter ;;
CREATE PROCEDURE `psEmailConfirm`(`Pcodi` VARCHAR(20), `Pemail` VARCHAR(245))
BEGIN
IF EXISTS((SELECT usuario.idUsuario from usuario where (usuario.codeActive = Pcodi) AND (usuario.emailUsuario = Pemail)))THEN
SELECT "1" as estado;
UPDATE usuario SET usuario.statusUsuario = '1' WHERE (usuario.codeActive = Pcodi) AND (usuario.emailUsuario = Pemail);
ELSE
SELECT "0" as estado;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFeActD
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFeActD`;
delimiter ;;
CREATE PROCEDURE `psFeActD`()
BEGIN
select CURDATE();
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFiltroCorreo
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFiltroCorreo`;
delimiter ;;
CREATE PROCEDURE `psFiltroCorreo`(`Pemail` VARCHAR(245))
BEGIN
	SELECT * FROM usuario WHERE usuario.emailUsuario = Pemail;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psFiltroEmail
-- ----------------------------
DROP PROCEDURE IF EXISTS `psFiltroEmail`;
delimiter ;;
CREATE PROCEDURE `psFiltroEmail`(IN `Pemail` VARCHAR(245))
  NO SQL 
SELECT * FROM usuario
WHERE usuario.emailUsuario = Pemail
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psImagenUsuarioPerfil
-- ----------------------------
DROP PROCEDURE IF EXISTS `psImagenUsuarioPerfil`;
delimiter ;;
CREATE PROCEDURE `psImagenUsuarioPerfil`(`PdiUser` INT)
BEGIN 
	SELECT usuario.imagenUsuario FROM usuario WHERE usuario.idUsuario = PdiUser AND usuario.statusUsuario='1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psIMpagoData
-- ----------------------------
DROP PROCEDURE IF EXISTS `psIMpagoData`;
delimiter ;;
CREATE PROCEDURE `psIMpagoData`(`pIdUsuario` INT, `pKmercadopago` VARCHAR(255), `pAccessTokenMpago` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.pk_mercadopago= pKmercadopago,
usuario.accessTokenMpago = pAccessTokenMpago
WHERE usuario.idUsuario=pIdUsuario;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsCarrito`;
delimiter ;;
CREATE PROCEDURE `psInsCarrito`(`PFolioVenta` INT, `PidProducto` INT, `PprecioUnitario` FLOAT, `PcantidadProducto` FLOAT)
BEGIN 
		INSERT INTO carrito
		VALUES (
		null,
		PFolioVenta,
		PidProducto,
		PprecioUnitario,
		PcantidadProducto,
		'1');
		UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadProducto WHERE producto.idProducto=PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsCarritoVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsCarritoVenta`;
delimiter ;;
CREATE PROCEDURE `psInsCarritoVenta`(`PIdCarrito` INT, `PFolioVenta` INT)
BEGIN
  INSERT INTO carritoventa
  (idCarrito, FolioVenta)
  VALUES (PIdCarrito,PFolioVenta);
  
  SELECT last_insert_id() AS idCarritoVenta;
  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsClienIdU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsClienIdU`;
delimiter ;;
CREATE PROCEDURE `psInsClienIdU`(`PidUsuaCpay` INT, `PclienId` VARCHAR(255))
BEGIN
	UPDATE usuario SET usuario.clienidpaypal = PclienId WHERE usuario.idUsuario = PidUsuaCpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInserImgs
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInserImgs`;
delimiter ;;
CREATE PROCEDURE `psInserImgs`(`PidPro` INT, `Pimg1` VARCHAR(255), `Pimg2` VARCHAR(255), `Pimg3` VARCHAR(255), `Pimg4` VARCHAR(255))
BEGIN
	INSERT imgproducto VALUES(DEFAULT,PidPro,Pimg1,Pimg2,Pimg3,Pimg4);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsInsertarUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsInsertarUsuario`;
delimiter ;;
CREATE PROCEDURE `PsInsertarUsuario`(`Pnombre` VARCHAR(200), `Papellido` VARCHAR(150), `Pemail` VARCHAR(245), `Ptelefono` VARCHAR(15), `Pcontraseña` VARCHAR(16), `Pcontraseña2` VARCHAR(15), `PfechaN` DATE, `Pcodigo` VARCHAR(21), `Pstado` VARCHAR(1))
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SELECT "A ocurrido un error" As "mensaje";
	ROLLBACK;
	END;
IF EXISTS(SELECT usuario.emailUsuario from usuario where usuario.emailUsuario = Pemail) THEN
	SELECT  "0" as estado;
	ROLLBACK;
ELSE
	INSERT usuario VALUES(DEFAULT,
											Pnombre,
											PapellidO,
											Pemail,
											Pcontraseña,
											Pcontraseña2,
											NULL,
											NULL,
											Ptelefono,
											NOW(),
											Pstado,
											NULL,
											PfechaN,
											Pcodigo,
											NULL,
											NULL,
											NULL,
											NULL);
	COMMIT;
	SELECT "Se registro con exito!" as "estado";
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psinsertcarritofolio
-- ----------------------------
DROP PROCEDURE IF EXISTS `psinsertcarritofolio`;
delimiter ;;
CREATE PROCEDURE `psinsertcarritofolio`(`Pidproductocarrito` INT, `Pfolioventa` INT)
BEGIN
insert  productocarritoventa values(DEFAULT,
																		Pidproductocarrito,
																		Pfolioventa);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psinsertcarritoproducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psinsertcarritoproducto`;
delimiter ;;
CREATE PROCEDURE `psinsertcarritoproducto`(`PidProducto` INT, `PidUsuario` INT, `PcantProd` INT, `Psubt` FLOAT)
begin
insert productocarrito VALUES(DEFAULT,
															PidProducto,
															PidUsuario,
															PcantProd,
															'1',
															Psubt,
															'1');
UPDATE producto set stockRealProducto = stockRealProducto - PcantProd where producto.idProducto = PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertCarritoUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertCarritoUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertCarritoUsuario`(`spIdUsuario` INT, `spPrecioUnitario` FLOAT, `spCantidadProducto` FLOAT, `spStatusCarrito` VARCHAR(1))
BEGIN

IF EXISTS (SELECT*FROM carrito WHERE idUsuario=spIdUsuario)
THEN
  SELECT "El carrito ya existe" AS Mensaje;
ELSE
INSERT INTO carrito (idUsuario, precioUnitario,cantidadProducto,statusCarrito)
VALUES(spIdUsuario,spPrecioUnitario,spCantidadProducto,spStatusCarrito);
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertCategoria`;
delimiter ;;
CREATE PROCEDURE `psInsertCategoria`(`PdesCategoria` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
									
IF EXISTS(SELECT categoria.desCategoria FROM categoria WHERE categoria.desCategoria = PdesCategoria) THEN 
		SELECT CONCAT('Categoría  Ya Existente: ', PdesCategoria)  AS "Mensaje";		
ROLLBACK;
ELSE

			INSERT categoria VALUES(
												DEFAULT,
												UPPER(PdesCategoria),
												'1');
			COMMIT;
			SELECT CONCAT('Categoría insertada con éxito!!!: ',  PdesCategoria)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertComenCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertComenCliente`;
delimiter ;;
CREATE PROCEDURE `psInsertComenCliente`(`PComentarioCliente` TEXT, `Pestrellas` INT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
INSERT detaproductocomen (comentariocliente,estrellas, idUsuario, idProducto, fecha)
					VALUES (PComentarioCliente, Pestrellas, PidUsuario, PidProducto, NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertComenUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertComenUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertComenUsuario`(`PComentario` TEXT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
	INSERT detaproductocomen (comentario, idUsuario, idProducto, fecha)
					VALUES (PComentario, PidUsuario, PidProducto, NOW());
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsInsertDomicilioFolio
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsInsertDomicilioFolio`;
delimiter ;;
CREATE PROCEDURE `PsInsertDomicilioFolio`(`Pfolio` INT, `Pdomicilio` VARCHAR(255))
BEGIN
UPDATE venta SET direccionEntrega = Pdomicilio WHERE FolioVenta = Pfolio;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertFormaPago
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertFormaPago`;
delimiter ;;
CREATE PROCEDURE `psInsertFormaPago`(`PdesFormaPago` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 	
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;			
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT formapago.desFormaPago FROM formapago WHERE formapago.desFormaPago = PdesFormaPago) THEN 
		SELECT CONCAT('Forma de Pago ya existente : ',  PdesFormaPago)  AS "Mensaje";
ROLLBACK;
ELSE

			INSERT formapago VALUES(
												DEFAULT,
												UPPER(PdesFormaPago),
												'1');	
			COMMIT;
			SELECT CONCAT('Forma de Pago insertada con éxito!!!: ',  PdesFormaPago)  AS "Aviso";
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertMarca`;
delimiter ;;
CREATE PROCEDURE `psInsertMarca`(`PdesMarca` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
										
IF EXISTS(SELECT marca.desMarca FROM marca WHERE marca.desMarca = PdesMarca) THEN 
		SELECT CONCAT('Marca ya existente : ',  PdesMarca)  AS "Mensaje";
		ROLLBACK;
ELSE

			INSERT marca VALUES(
												DEFAULT,
												UPPER(PdesMarca),
												'1');			
			COMMIT;
			SELECT CONCAT('Marca insertada con éxito!!!: ',  PdesMarca)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsInsertPedido
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsInsertPedido`;
delimiter ;;
CREATE PROCEDURE `PsInsertPedido`(`PisUser` INT(11), `PcodigoPedido` VARCHAR(20), `PurlImagen` VARCHAR(255))
BEGIN
insert pedido values(DEFAULT,PcodigoPedido,PisUser,PurlImagen,'1');
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertPermisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertPermisos`;
delimiter ;;
CREATE PROCEDURE `psInsertPermisos`(`PdesPermiso` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT permiso.desPermiso FROM permiso  WHERE permiso.desPermiso = PdesPermiso) THEN 
		SELECT CONCAT('Permiso Ya Existente: ',PdesPermiso) AS "Mensaje";
	ROLLBACK;		
ELSE

			INSERT permiso VALUES(
												DEFAULT,
												UPPER(PdesPermiso),
												'1');
			COMMIT;
			SELECT CONCAT('Permiso insertado con exito!!!',PdesPermiso) AS "Aviso";
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertProducto`;
delimiter ;;
CREATE PROCEDURE `psInsertProducto`(`PnombrePro` VARCHAR(200), `PdesPro` VARCHAR(200), `PpreuniPro` DOUBLE, `PcanPro` DOUBLE, `PimagePro` VARCHAR(240), `PidMarcaPro` INT, `PidCategoriaPro` INT, `PidUsuarioPro` INT)
BEGIN
	INSERT producto (
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.stockRealProducto,
	producto.imagenProducto,
	producto.idMarca,
	producto.idCategoria,
	producto.idUsuario,
	producto.fechaAlojadoProducto,
	producto.statusProducto)
	VALUES(
	DEFAULT,
	PnombrePro,
	PdesPro,
	PpreuniPro,
	PcanPro,
	PimagePro,
	PidMarcaPro,
	PidCategoriaPro,
	PidUsuarioPro,
	NOW(),
	'1'
	);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertProductoCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertProductoCarrito`;
delimiter ;;
CREATE PROCEDURE `psInsertProductoCarrito`(`spIdProducto` INT, `spIdCarrito` INT, `spCantidadProducto` INT)
BEGIN

IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idCarrito = spIdCarrito))
THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idCarrito,cantidadProducto, statusProductoCarrito)
VALUES(spIdProducto,spIdCarrito,spCantidadProducto,"1");

END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsInsertProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsInsertProductos`;
delimiter ;;
CREATE PROCEDURE `PsInsertProductos`(`Pproducto` VARCHAR(150), `Pcategoria` INT, `Pmarca` INT, `Pdescripcion` VARCHAR(255), `Pprecio` FLOAT(8,2), `Pstock` FLOAT(8,2), `Pfoto` VARCHAR(255))
BEGIN
INSERT producto VALUES(DEFAULT,133,Pcategoria,Pmarca,Pproducto,Pdescripcion,Pprecio,Pfoto,NOW(),Pstock,1,null,null);
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRegistroDireccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRegistroDireccion`;
delimiter ;;
CREATE PROCEDURE `psInsertRegistroDireccion`(psIdUsuario INT, psEstado VARCHAR(255), psMunicipio VARCHAR(255), psColonia VARCHAR(255), psCodigoP VARCHAR(10), psCallePrincipal VARCHAR(255), psNumeroExterior VARCHAR(10), psCalleUno VARCHAR(255), psCalleDos VARCHAR(255), psReferencias VARCHAR(255))
BEGIN
	
			INSERT direccion (idDireccion,idUsuario,estado,municipio,colonia,codigoPostalUsuario,callePrincipal,numeroExterior,calle1,calle2,referencia,statusDireccion) 
														VALUES(
														DEFAULT,
														psIdUsuario,
														psEstado,
														psMunicipio,
														psColonia,
														psCodigoP, 
														psCallePrincipal, 
														psNumeroExterior,
														psCalleUno,
														psCalleDos,
														psReferencias,
														"1");
												
			COMMIT;
			SELECT  "1" as estado;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ')  AS "Aviso";
			
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRegistroUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRegistroUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertRegistroUsuario`(psnombreUsuario VARCHAR(200), psapellido1Usuario VARCHAR(150), psapellido2Usuario VARCHAR(150), pstelefonoUsuario VARCHAR(15), psPemailUsu VARCHAR(245), pscontraUsuario VARCHAR(245),psconfirmaContraUsuario VARCHAR(245), psfechaNacimiento VARCHAR(10))
BEGIN

	SET AUTOCOMMIT=0;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = psPemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', psPemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE	

			INSERT usuario (idUsuario,nombreUsuario,apellido1Usuario,apellido2Usuario, telefonoUsuario, emailUsuario, contraUsuario, confirmaContraUsuario, fechaNacimiento,fechaRegistroUsuario, statusUsuario) 
														VALUES(
														DEFAULT,
														psnombreUsuario,
														psapellido1Usuario,
														psapellido2Usuario,
														pstelefonoUsuario,
														psPemailUsu,
														pscontraUsuario,
														pscontraUsuario,
														psfechaNacimiento,
														CURRENT_DATE,
														"1");
												
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', psPemailUsu)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRoles
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRoles`;
delimiter ;;
CREATE PROCEDURE `psInsertRoles`(`PdesRol` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
	
IF EXISTS(SELECT rol.desRole FROM rol WHERE  rol.desRole = PdesRol) THEN 
		SELECT CONCAT('Rol Ya Existente: ', PdesRol) AS "Mensaje";
	ROLLBACK;
ELSE

			INSERT rol VALUES(
												DEFAULT,
												UPPER(PdesRol),
												'1');
			COMMIT;
			SELECT CONCAT('Rol insertado con exito!!! ', PdesRol) AS "Aviso";			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertRolPermisoMovil
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertRolPermisoMovil`;
delimiter ;;
CREATE PROCEDURE `psInsertRolPermisoMovil`(`idUsuario` INT)
BEGIN
    INSERT INTO rolpermiso(
        rolpermiso.idRolPermisoUsuario,
        rolpermiso.idUsuario,
        rolPermiso.idRol,
        rolpermiso.idPermiso
    )VALUES(
    DEFAULT,
    idUsuario,
    2,
    2
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsInsertTarjeta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsInsertTarjeta`;
delimiter ;;
CREATE PROCEDURE `PsInsertTarjeta`(`PidUsuario` INT, `PnumTarjeta` VARCHAR(16), `Pexpyear` VARCHAR(2), `Pmonth` VARCHAR(2), `PcodigoSeguridad` VARCHAR(3))
begin
insert metodopago values(DEFAULT, PidUsuario, PnumTarjeta, Pexpyear, Pmonth, PcodigoSeguridad, '1');
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertTokenFCM
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertTokenFCM`;
delimiter ;;
CREATE PROCEDURE `psInsertTokenFCM`(`pIdUsuario` INT, `pTokenFCM` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.tokenFCM= pTokenFCM
WHERE usuario.idUsuario=pIdUsuario;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuario`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuario`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PfotoUsu` VARCHAR(245), `PdireccionUsu` VARCHAR(255), `PcodigoPostalUsu` VARCHAR(5), `PtelefonoUsu` VARCHAR(15), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PrfcUsu` VARCHAR(13))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT  "0" as estado;
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE			
			INSERT usuario VALUES(
														DEFAULT,
														PnombreUsu,
														Pape1Usu,
														Pape2Usu,
														PemailUsu,
														PfotoUsu,
														PdireccionUsu,
														PcodigoPostalUsu,
														PtelefonoUsu,
														PcontraUsu,
														PConfircontraUsu,
														NOW(),
														'1',
														PrfcUsu);
			COMMIT;
			SELECT  "1" as estado;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuariov1
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuariov1`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuariov1`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PcodeEmail` VARCHAR(21))
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								emailUsuario,
								contraUsuario,
								confirmaContraUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								PemailUsu,
								PcontraUsu,
								PConfircontraUsu,
								NOW(),
								'0',
								PcodeEmail	
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertUsuariov2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertUsuariov2`;
delimiter ;;
CREATE PROCEDURE `psInsertUsuariov2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200), `Pape2Usu` VARCHAR(200), `PemailUsu` VARCHAR(200), `PcontraUsu` VARCHAR(200), `PurlPhoto` VARCHAR(245))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                                apellido2Usuario,
								emailUsuario,
                                contraUsuario,
                                confirmaContraUsuario,
                                imagenUsuario,
								fechaRegistroUsuario,
								statusUsuario)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                                Pape2Usu,
								PemailUsu,
                                PcontraUsu,
                                PcontraUsu,
                                PurlPhoto,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsertv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsertv2`;
delimiter ;;
CREATE PROCEDURE `psInsertv2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200), `Pape2Usu` VARCHAR(200), `PemailUsu` VARCHAR(200))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                                apellido2Usuario,
								emailUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                                Pape2Usu,
								PemailUsu,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsinsertVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsinsertVenta`;
delimiter ;;
CREATE PROCEDURE `PsinsertVenta`(`Piduser` INT, `PidpaginaPago` INT, `PclaveTransaccion` VARCHAR(255), `Pcorreo` VARCHAR(255), `Ptotalventa` FLOAT)
BEGIN
INSERT venta VALUES(DEFAULT,
										Piduser,
										PidpaginaPago,
										PclaveTransaccion,
										'',
										NOW(),
										Pcorreo,
										Ptotalventa,
										'',
										'1');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsinsertVentaEffec
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsinsertVentaEffec`;
delimiter ;;
CREATE PROCEDURE `PsinsertVentaEffec`(`Piduser` INT, `PidpaginaPago` INT, `PclaveTransaccion` VARCHAR(255), `Pcorreo` VARCHAR(255), `Ptotalventa` FLOAT)
BEGIN
INSERT venta VALUES(DEFAULT,
										Piduser,
										PidpaginaPago,
										PclaveTransaccion,
										'',
										NOW(),
										Pcorreo,
										Ptotalventa,
										'',
										'0');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsProductoCarritov2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsProductoCarritov2`;
delimiter ;;
CREATE PROCEDURE `psInsProductoCarritov2`(`spIdProducto` INT, `spIdUsuario` INT, `spCantidadProducto` INT)
BEGIN
   IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idUsuario=spIdUsuario AND vendido="0"))
  THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idUsuario,cantidadProducto, statusProductoCarrito,vendido)
VALUES(spIdProducto,spIdUsuario,spCantidadProducto,"1","0");

END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsProductoCarritoVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsProductoCarritoVenta`;
delimiter ;;
CREATE PROCEDURE `psInsProductoCarritoVenta`(`PIdProductoCarrito` INT, `PFolioVenta` INT)
BEGIN

INSERT INTO productocarritoventa
(
 idproductocarrito,
 FolioVenta
) VALUES(
 PIdProductoCarrito,
 PFolioVenta
);

UPDATE productocarrito
SET vendido ="1"
WHERE idproductocarrito=PIdProductoCarrito;

SELECT LAST_INSERT_ID() as idProductoCarrito;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVenta`;
delimiter ;;
CREATE PROCEDURE `psInsVenta`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN 

	INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVentav2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVentav2`;
delimiter ;;
CREATE PROCEDURE `psInsVentav2`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN

INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psInsVentav3
-- ----------------------------
DROP PROCEDURE IF EXISTS `psInsVentav3`;
delimiter ;;
CREATE PROCEDURE `psInsVentav3`(`PIdUsuario` INT, `PIdPaginaPago` INT, `PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT, `PDireccionEntrega` VARCHAR(250))
BEGIN

INSERT INTO venta (
        idUsuario,
        idpaginaPago,
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
        direccionEntrega,
		statusVenta) 
	VALUES (
    PIdUsuario,
    PIdPaginaPago,
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
    PDireccionEntrega,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psLoginUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psLoginUser`;
delimiter ;;
CREATE PROCEDURE `psLoginUser`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN 
	SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psLoginUserv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psLoginUserv2`;
delimiter ;;
CREATE PROCEDURE `psLoginUserv2`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN

   IF EXISTS(SELECT usuario.idUsuario,
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario),
				usuario.emailUsuario ,
				usuario.contraUsuario 
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1") THEN
   SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1";
   ELSE
      SELECT CONCAT('Debes activar tu cuenta para poder ingresar!!!: ')  AS "Nombre";
   END IF;
   
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psLoginUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psLoginUsuario`;
delimiter ;;
CREATE PROCEDURE `psLoginUsuario`(`PemailUsu` VARCHAR(245),`Pcontra` VARCHAR(16))
BEGIN
	
	IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu AND usuario.confirmaContraUsuario = Pcontra) THEN
   
		 SELECT 
		 usuario.idUsuario AS 'No.',
		 CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario, " ",
					usuario.apellido2Usuario) AS 'Nombre',
					usuario.emailUsuario AS 'Email',
					usuario.contraUsuario AS 'Contra',
					IF(usuario.statusUsuario = '1','Activo','Inactivo') AS 'Estatus del Cliente'
					FROM usuario WHERE usuario.emailUsuario = PemailUsu AND usuario.confirmaContraUsuario = Pcontra;
   ELSE
				SELECT CONCAT('DATOS INCORRECTOS')  AS "Mensaje";
END IF;   
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMarcaAct
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMarcaAct`;
delimiter ;;
CREATE PROCEDURE `psMarcaAct`()
BEGIN	
	SELECT marca.idMarca,marca.desMarca FROM marca WHERE marca.statusMarca = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProducto`;
delimiter ;;
CREATE PROCEDURE `psMosActProducto`(`PidPro` INT, `PidUsu` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	marca.idMarca,
	marca.desMarca,
	categoria.idCategoria,
	categoria.desCategoria,
	producto.idUsuario
	FROM
	producto
	INNER JOIN marca ON marca.idMarca = producto.idMarca
	INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
	WHERE  producto.idProducto = PidPro  AND producto.idUsuario = PidUsu ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProImg
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProImg`;
delimiter ;;
CREATE PROCEDURE `psMosActProImg`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4,
	imgproducto.idImgProducto,
	producto.idUsuario,
	producto.statusProducto,
	producto.stockRealProducto
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActProImg4
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActProImg4`;
delimiter ;;
CREATE PROCEDURE `psMosActProImg4`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4	
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosActuImgsc
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosActuImgsc`;
delimiter ;;
CREATE PROCEDURE `psMosActuImgsc`(`PidProImg` INT)
BEGIN

		SELECT
		imgproducto.idProducto,
		imgproducto.img1,
		imgproducto.img2,
		imgproducto.img3,
		imgproducto.img4,
		producto.nombreProducto,		
		producto.imagenProducto
		FROM
		producto
		INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
		WHERE  producto.idProducto = PidProImg;	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosCarritoByIdUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosCarritoByIdUser`;
delimiter ;;
CREATE PROCEDURE `psMosCarritoByIdUser`(`pIdUser` INT)
BEGIN
  SELECT idCarrito FROM storecode.carrito
  WHERE carrito.idUsuario=pIdUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsmosCategoria
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsmosCategoria`;
delimiter ;;
CREATE PROCEDURE `PsmosCategoria`()
BEGIN
SELECT
	categoria.idCategoria as codigo, 
	categoria.desCategoria as descripcion, 
	categoria.statusCategoria stado
FROM
	categoria
	where categoria.statusCategoria = "1";
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosCliidU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosCliidU`;
delimiter ;;
CREATE PROCEDURE `psMosCliidU`(`PidMosUsuaConpay` INT)
BEGIN
	SELECT usuario.clienidpaypal  FROM usuario WHERE usuario.idUsuario= PidMosUsuaConpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComenCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComenCliente`;
delimiter ;;
CREATE PROCEDURE `psMosComenCliente`(`PidProducto` INT)
BEGIN
SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentariocliente AS comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentariocliente IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComenProdu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComenProdu`;
delimiter ;;
CREATE PROCEDURE `psMosComenProdu`(`PidProducto` INT)
BEGIN
	SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentario IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComentarioImagen
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComentarioImagen`;
delimiter ;;
CREATE PROCEDURE `psMosComentarioImagen`(`PidProducto` INT)
BEGIN
	SELECT	
	usuario.imagenUsuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosComentarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosComentarios`;
delimiter ;;
CREATE PROCEDURE `psMosComentarios`(`PidProducto` INT)
BEGIN
	SELECT
	usuario.emailUsuario AS usuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosDireccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosDireccion`;
delimiter ;;
CREATE PROCEDURE `PsMosDireccion`(`PidUser` INT)
BEGIN
SELECT
	direccion.idDireccion as iddirecto,
	direccion.callePrincipal as principal, 
	direccion.numeroExterior as nexterior,
	direccion.referencia as referencia,
	direccion.municipio as municipio,
	direccion.codigoPostalUsuario as cp, 
	direccion.estado as estado
FROM
	direccion
	where direccion.idUsuario = PidUser;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosIDpCPAl
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosIDpCPAl`;
delimiter ;;
CREATE PROCEDURE `psMosIDpCPAl`(`idProMPaL` INT)
BEGIN 
	SELECT
	usuario.clienidpaypal
	FROM
	usuario
	INNER JOIN producto ON usuario.idUsuario = producto.idUsuario
	WHERE producto.idProducto = idProMPaL;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosIdUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosIdUser`;
delimiter ;;
CREATE PROCEDURE `psMosIdUser`(`Pemail` VARCHAR(200))
BEGIN
  SELECT idUsuario FROM usuario WHERE usuario.emailUsuario=Pemail;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosItemsByFolioVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosItemsByFolioVenta`;
delimiter ;;
CREATE PROCEDURE `psMosItemsByFolioVenta`(`pFolioVenta` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto, producto.precioUnitarioProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM venta 

INNER JOIN productocarritoventa ON venta.FolioVenta= productocarritoventa.FolioVenta
INNER JOIN productocarrito ON productocarritoventa.idproductocarrito = productocarrito.idproductocarrito 
INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0

WHERE venta.FolioVenta= pFolioVenta;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsmosMarca
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsmosMarca`;
delimiter ;;
CREATE PROCEDURE `PsmosMarca`()
BEGIN
SELECT
	marca.desMarca as descripcion, 
	marca.idMarca as codigo, 
	marca.statusMarca as stado
FROM
	marca
	where marca.statusMarca = "1";
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosNomCliente
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosNomCliente`;
delimiter ;;
CREATE PROCEDURE `psMosNomCliente`(`PidVenta` INT)
SELECT venta.correo AS 'Cliente' FROM Venta WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosPedido
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosPedido`;
delimiter ;;
CREATE PROCEDURE `PsMosPedido`()
BEGIN
SELECT
	venta.FolioVenta AS folioV, 
	venta.fechaVenta AS fechaV, 
	venta.correo AS correo, 
	venta.claveTransaccion AS claveT, 
	venta.totalVendido AS totalV, 
	venta.direccionEntrega AS direccionE, 
	venta.statusVenta AS statusV, 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS nombre
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosPersonalizado
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosPersonalizado`;
delimiter ;;
CREATE PROCEDURE `psMosPersonalizado`()
BEGIN
SELECT
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) as nombre, 
	usuario.emailUsuario as email, 
	pedido.codPedido as codpedido, 
	pedido.idPedido as idpedido, 
	pedido.urlImagen as foto, 
	pedido.statusPedido as stado, 
	usuario.telefonoUsuario as telefono
FROM
	pedido
	INNER JOIN
	usuario
	ON 
		pedido.pedidoUser = usuario.idUsuario;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdaUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdaUsuario`;
delimiter ;;
CREATE PROCEDURE `psMosProdaUsuario`(`PidUsuario` INT)
BEGIN 
			SELECT
			producto.idProducto,
			producto.nombreProducto ,
			producto.desProducto ,
			producto.precioUnitarioProducto ,
			producto.imagenProducto ,
			IF(producto.stockRealProducto = '0', 'Agotado',producto.stockRealProducto) AS 'stockRealProducto',						
			IF(producto.statusProducto = '1', 'Activo','Inactivo') AS 'statusProducto',
			marca.desMarca AS 'idMarca',
			categoria.desCategoria AS 'idCategoria',
            producto.idUsuario
			FROM producto
			INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria 
			INNER JOIN marca ON marca.idMarca = producto.idMarca
			WHERE producto.idUsuario = PidUsuario AND producto.statusProducto = 1 AND producto.stockRealProducto > 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdImgAgregar
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdImgAgregar`;
delimiter ;;
CREATE PROCEDURE `psMosProdImgAgregar`(`PidUsuarioAI` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	producto.idUsuario
	FROM
	producto
	INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
	WHERE producto.idUsuario = PidUsuarioAI AND producto.statusProducto = '1' AND imgproducto.idImgProducto = '' AND producto.stockRealProducto >0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCard
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCard`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCard`(`spIdUsuario` INT)
BEGIN
  SELECT productocarrito.idproductocarrito, producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
  FROM productocarrito
  INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
  WHERE productocarrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1" AND productocarrito.vendido= "0"
  ORDER BY producto.idUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCarrito`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCarrito`(`spIdUsuario` INT)
BEGIN

SELECT producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdInCarritoGroupByVendedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdInCarritoGroupByVendedor`;
delimiter ;;
CREATE PROCEDURE `psMosProdInCarritoGroupByVendedor`(`spIdUsuario` INT)
BEGIN

SELECT productocarrito.idproductocarrito, producto.idProducto, productocarrito.idCarrito, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1"
ORDER BY producto.idUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProdToUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProdToUser`;
delimiter ;;
CREATE PROCEDURE `psMosProdToUser`(`PidUsuario` INT)
BEGIN
 SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
    producto.fechaAlojadoProducto,
	producto.stockRealProducto,
    producto.statusProducto,
    producto.idMarca,
    producto.idCategoria,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario!= PidUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProducto`;
delimiter ;;
CREATE PROCEDURE `psMosProducto`()
BEGIN 
	SELECT
	producto.idProducto AS "IDPRODUCTO",
	producto.nombreProducto AS "PRODUCTO" ,
	producto.desProducto AS "DESCRIPCION",
	producto.precioUnitarioProducto AS "PRECIOUN",
	producto.imagenProducto AS "FOTO",
	producto.stockRealProducto AS "STOCK",
	producto.idUsuario AS "USER"
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoComple
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoComple`;
delimiter ;;
CREATE PROCEDURE `psMosProductoComple`(`PidPro` INT)
BEGIN 
		SELECT
		producto.idProducto AS "IDPROD",
		producto.nombreProducto AS "PRODUCTO",
		producto.desProducto AS "DESCRIPCION",
		producto.precioUnitarioProducto AS "PRECIO",
		producto.imagenProducto AS "IMAGEN",
		producto.fechaAlojadoProducto AS "FECHA",
		producto.stockRealProducto AS "STOCK",
		producto.statusProducto AS "STATUS"
		FROM 
		producto
		INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
		INNER JOIN marca ON marca.idMarca = producto.idMarca
		INNER JOIN usuario ON usuario.idUsuario = producto.idUsuario
		WHERE producto.idProducto=PidPro;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoCompleCar
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoCompleCar`;
delimiter ;;
CREATE PROCEDURE `psMosProductoCompleCar`(`PidPro` INT)
BEGIN 
		SELECT
		producto.idProducto AS "IDPROD",
		producto.nombreProducto AS "PRODUCTO",
		producto.desProducto AS "DESCRIPCION",
		producto.precioUnitarioProducto AS "PRECIO",
		producto.imagenProducto AS "IMAGEN",
		producto.fechaAlojadoProducto AS "FECHA",
		producto.stockRealProducto AS "STOCK",
		producto.statusProducto AS "STATUS"
		FROM 
		producto
		WHERE producto.idProducto=PidPro;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoCompleImg
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoCompleImg`;
delimiter ;;
CREATE PROCEDURE `psMosProductoCompleImg`(`PidProimg` INT)
BEGIN 
SELECT
	imgproducto.idProducto AS idprod, 
	imgproducto.img1 AS img1, 
	imgproducto.img2 AS img2, 
	imgproducto.img3 AS img3, 
	imgproducto.img4 AS img4
FROM
	imgproducto
	where idProducto = PidProimg;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoConUsu
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoConUsu`;
delimiter ;;
CREATE PROCEDURE `psMosProductoConUsu`(`PidUsuMosNo` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario <> PidUsuMosNo; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductoConUsuFCPSU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductoConUsuFCPSU`;
delimiter ;;
CREATE PROCEDURE `psMosProductoConUsuFCPSU`(`PidUM` INT, `PidMP` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' 
	AND producto.stockRealProducto >= 1 	
	AND producto.idUsuario = PidUM
	AND producto.idProducto <> PidMP; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProductos`;
delimiter ;;
CREATE PROCEDURE `psMosProductos`()
BEGIN 
	SELECT
	producto.idProducto AS "IDPRODUCTO",
	producto.nombreProducto AS "PRODUCTO" ,
	producto.desProducto AS "DESCRIPCION",
	producto.precioUnitarioProducto AS "PRECIOUN",
	producto.imagenProducto AS "FOTO",
	producto.stockRealProducto AS "STOCK",
	producto.statusProducto AS "STATUS",
	producto.idUsuario AS "USER"
	FROM
	producto; 
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosProIns
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosProIns`;
delimiter ;;
CREATE PROCEDURE `psMosProIns`(`PidPro` INT, `PidUsu` INT)
BEGIN 
		SELECT
		producto.idProducto,
		producto.nombreProducto,
		producto.desProducto,
		producto.idUsuario
		FROM
		producto
		WHERE producto.idProducto = PidPro AND producto.idUsuario = PidUsu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosTarjeta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosTarjeta`;
delimiter ;;
CREATE PROCEDURE `PsMosTarjeta`(`PidUser` INT(11))
BEGIN
SELECT 
	metodopago.numTarjeta as 'tarjeta', 
	metodopago.expYear as 'anio', 
	metodopago.expMonth as 'mes', 
	metodopago.codigoSeguridad as 'seguridad', 
	metodopago.statusMetodoPago as 'statusTar'
FROM
	metodopago
	where 
	metodopago.idUsuario = PidUser;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosTarjetaseg
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosTarjetaseg`;
delimiter ;;
CREATE PROCEDURE `PsMosTarjetaseg`(`PidUser` INT(11), `ptarjeta` VARCHAR(16))
BEGIN
SELECT 
	metodopago.numTarjeta as 'tarjeta', 
	metodopago.expYear as 'anio', 
	metodopago.expMonth as 'mes', 
	metodopago.codigoSeguridad as 'seguridad', 
	metodopago.statusMetodoPago as 'statusTar'
FROM
	metodopago
	where 
	metodopago.idUsuario = PidUser and metodopago.numTarjeta = ptarjeta;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicket
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicket`;
delimiter ;;
CREATE PROCEDURE `psMosTicket`(`PidVenta` INT)
SELECT
venta.correo AS 'Cliente',
producto.nombreProducto AS 'Producto',
carrito.precioUnitario AS 'Precio Unitario',
carrito.cantidadProducto AS 'Cantidad de Productos',
venta.totalVendido AS 'Total'
FROM carrito
INNER JOIN venta ON venta.FolioVenta = carrito.FolioVenta
INNER JOIN producto ON producto.idProducto = carrito.idProducto
WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketFechav
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketFechav`;
delimiter ;;
CREATE PROCEDURE `psMosTicketFechav`(`PidVF` INT)
BEGIN 
SELECT fechaVenta FROM venta WHERE FolioVenta = PidVF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketProductos
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketProductos`;
delimiter ;;
CREATE PROCEDURE `psMosTicketProductos`(`PidVenta` INT)
SELECT
	producto.nombreProducto AS 'Producto',
	carrito.precioUnitario AS 'Precio Unitario',
	carrito.cantidadProducto AS 'Cantidad de Productos'
	FROM carrito
	INNER JOIN producto ON producto.idProducto = carrito.idProducto
	WHERE carrito.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTicketUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTicketUsuario`;
delimiter ;;
CREATE PROCEDURE `psMosTicketUsuario`(`PidUsuNom` INT)
BEGIN 
			SELECT CONCAT(nombreUsuario," ",
apellido1Usuario) AS nombre
FROM usuario WHERE usuario.idUsuario = PidUsuNom;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosTotalVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosTotalVenta`;
delimiter ;;
CREATE PROCEDURE `psMosTotalVenta`(`PidVenta` INT)
SELECT venta.totalVendido AS 'Total' FROM Venta WHERE venta.FolioVenta = PidVenta
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsmostrarAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsmostrarAdmin`;
delimiter ;;
CREATE PROCEDURE `PsmostrarAdmin`(`Piduser` INT(11))
begin
select
	usuario.nombreUsuario as "nombre", 
	usuario.apellido1Usuario as "apellido", 
	usuario.emailUsuario as "email", 
	usuario.imagenUsuario as "foto", 
	usuario.telefonoUsuario as "telefono", 
	usuario.fechaNacimiento as "fechaNacimiento",
	usuario.statusUsuario as "estado"
	from
	usuario
	where
	usuario.idUsuario = Piduser;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMostrarlogin
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMostrarlogin`;
delimiter ;;
CREATE PROCEDURE `PsMostrarlogin`(`Pemail` VARCHAR(245), `Ppassword` VARCHAR(16))
BEGIN
IF EXISTS(SELECT usuario.idUsuario from usuario where usuario.emailUsuario = Pemail) THEN
SELECT
	"1" as "mensaje",
	usuario.idUsuario as "usercod", 
	usuario.nombreUsuario as "nombre",
	usuario.apellido1Usuario as "apellido",
	usuario.emailUsuario as "email",
	usuario.telefonoUsuario as "telefono",
	usuario.contraUsuario as "contraseña",	
	usuario.imagenUsuario as "foto", 
	rolpermiso.idPermiso as "permiso",
	usuario.statusUsuario as "estado"
FROM
	rolpermiso
	INNER JOIN
	usuario
	ON 
		rolpermiso.idUsuario = usuario.idUsuario
	where usuario.emailUsuario = Pemail;

ELSE
SELECT "0"as "mensaje";
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsmostrarUsuarioDomicilio
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsmostrarUsuarioDomicilio`;
delimiter ;;
CREATE PROCEDURE `PsmostrarUsuarioDomicilio`(`Piduser` INT(11), `PidDireccion` INT)
BEGIN
SELECT
	usuario.nombreUsuario as "nombre", 
	usuario.apellido1Usuario as "apellido", 
	usuario.emailUsuario as "email", 
	usuario.imagenUsuario as "foto", 
	usuario.telefonoUsuario as "telefono", 
	usuario.fechaNacimiento as "fechaNacimiento", 
	direccion.idDireccion as "iddirecto",
	direccion.codigoPostalUsuario as "cp", 
	direccion.estado as "estado", 
	direccion.municipio as "municipio", 
	direccion.colonia as "colonia", 
	direccion.callePrincipal as "calleP", 
	direccion.numeroExterior as "numeroE", 
	direccion.calle1 as "calle1", 
	direccion.calle2 as "calle2", 
	direccion.referencia as "referencia"
FROM
	usuario
	INNER JOIN
	direccion
	ON 
		usuario.idUsuario = direccion.idUsuario
		where direccion.idUsuario = Piduser and direccion.idDireccion = PidDireccion;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVendedor
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVendedor`;
delimiter ;;
CREATE PROCEDURE `psMosVendedor`(`pIdUsuario` INT)
BEGIN
SELECT idUsuario, nombreUsuario, apellido1Usuario,
emailUsuario,contraUsuario,confirmaContraUsuario,apellido2Usuario, imagenUsuario,
telefonoUsuario, statusUsuario,rfeUsuario,fechaNacimiento,codeActive, clienidpaypal,
pk_mercadopago, accessTokenMpago, tokenFCM FROM usuario
WHERE usuario.idUsuario= pIdUsuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosventa
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosventa`;
delimiter ;;
CREATE PROCEDURE `PsMosventa`(`Pfolio` INT)
begin
SELECT
	venta.FolioVenta as "folio", 
	venta.idUsuario as "coduser", 
	venta.fechaVenta as "fechaV", 
	venta.correo as "correo", 
	venta.totalVendido as "total", 
	CONCAT(usuario.nombreUsuario,' ',usuario.apellido1Usuario) as "nombre",
	usuario.telefonoUsuario as "telefono"
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
	where venta.FolioVenta = Pfolio;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVentaByUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVentaByUser`;
delimiter ;;
CREATE PROCEDURE `psMosVentaByUser`(`pIdUser` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM productocarrito 


INNER JOIN productocarritoventa ON productocarrito.idproductocarrito= productocarritoventa.idproductocarrito
INNER JOIN venta ON productocarritoventa.FolioVenta = venta.FolioVenta

INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0



WHERE productocarrito.idUsuario= pIdUser;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psMosVentaByUserv2
-- ----------------------------
DROP PROCEDURE IF EXISTS `psMosVentaByUserv2`;
delimiter ;;
CREATE PROCEDURE `psMosVentaByUserv2`(`pIdUser` INT)
BEGIN

SELECT venta.FolioVenta,venta.idUsuario,venta.idpaginaPago, venta.claveTransaccion,venta.paypalDatos, venta.fechaVenta, venta.correo, venta.totalVendido, venta.direccionEntrega
FROM venta


WHERE idUsuario= pIdUser;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosVentaCarrito
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosVentaCarrito`;
delimiter ;;
CREATE PROCEDURE `PsMosVentaCarrito`(`Pfolio` INT)
begin
SELECT
	productocarritoventa.FolioVenta as "folio", 
	productocarrito.idProducto as "codProducto", 
	producto.nombreProducto as "producto", 
	producto.desProducto AS descripcion,
	productocarrito.cantidadProducto as "cantidad", 
	producto.precioUnitarioProducto as "precio",
	productocarrito.subtotal as "subtotal",
	productocarrito.idproductocarrito as "codCarrito"
FROM
	producto
	INNER JOIN
	productocarrito
	ON 
		producto.idProducto = productocarrito.idProducto
	INNER JOIN
	venta
	INNER JOIN
	productocarritoventa
	ON 
		venta.FolioVenta = productocarritoventa.FolioVenta AND
		productocarrito.idproductocarrito = productocarritoventa.idproductocarrito
		where productocarritoventa.FolioVenta = Pfolio;
		end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Psmosventadireccion
-- ----------------------------
DROP PROCEDURE IF EXISTS `Psmosventadireccion`;
delimiter ;;
CREATE PROCEDURE `Psmosventadireccion`(`Pfolioventa` INT)
BEGIN
if((SELECT direccionEntrega from venta where FolioVenta = Pfolioventa) = NULL OR (SELECT direccionEntrega from venta where FolioVenta = Pfolioventa) = '')THEN
SELECT "vacio" as resultado;
ELSE
SELECT "Lleno" as resultado,
venta.claveTransaccion as clave FROM venta
where venta.FolioVenta = Pfolioventa;
end if;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsmosVentaPendiente
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsmosVentaPendiente`;
delimiter ;;
CREATE PROCEDURE `PsmosVentaPendiente`(`Pfolio` INT)
BEGIN
SELECT
	venta.fechaVenta AS fecha, 
	venta.totalVendido AS total, 
	usuario.nombreUsuario AS nombre, 
	usuario.apellido1Usuario AS apellido, 
	usuario.emailUsuario AS email, 
	usuario.telefonoUsuario AS telefono, 
	venta.FolioVenta AS folio
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
		WHERE venta.FolioVenta = Pfolio;
		end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosVentas
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosVentas`;
delimiter ;;
CREATE PROCEDURE `PsMosVentas`()
BEGIN
SELECT
	venta.FolioVenta AS folioV, 
	venta.fechaVenta AS fechaV, 
	venta.correo AS correo, 
	venta.claveTransaccion AS claveT, 
	venta.totalVendido AS totalV, 
	venta.direccionEntrega AS direccionE, 
	venta.statusVenta AS statusV, 
	CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS nombre
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario;
		END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsMosventaxUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsMosventaxUser`;
delimiter ;;
CREATE PROCEDURE `PsMosventaxUser`(`Puser` INT)
begin
SELECT
	venta.FolioVenta as "folio", 
	venta.idUsuario as "coduser", 
	venta.fechaVenta as "fechaV", 
	venta.correo as "correo", 
	venta.totalVendido as "total",
	venta.direccionEntrega as "direccion",
  venta.statusVenta as "estado",	
	CONCAT(usuario.nombreUsuario,' ',usuario.apellido1Usuario) as "nombre",
	usuario.telefonoUsuario as "telefono"
FROM
	venta
	INNER JOIN
	usuario
	ON 
		venta.idUsuario = usuario.idUsuario
	where venta.idUsuario = Puser;
	end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psmsuser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psmsuser`;
delimiter ;;
CREATE PROCEDURE `psmsuser`(`Pemail` VARCHAR(245))
BEGIN
select idUsuario as "usuario" from usuario where emailUsuario = Pemail;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsSelectAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsSelectAdmin`;
delimiter ;;
CREATE PROCEDURE `PsSelectAdmin`()
BEGIN
SELECT
	usuario.idUsuario as "cod", 
	CONCAT(usuario.nombreUsuario,' ',usuario.apellido1Usuario) as "user",
	usuario.nombreUsuario as "nombre", 
	usuario.apellido1Usuario as "apellido", 
	usuario.emailUsuario as "email", 
	usuario.imagenUsuario as "foto", 
	usuario.telefonoUsuario as "telefono", 
	usuario.statusUsuario as "status", 
	usuario.fechaNacimiento as "fechaN"
FROM
	rolpermiso
	INNER JOIN
	usuario
	ON 
		rolpermiso.idUsuario = usuario.idUsuario
		where 
		rolpermiso.idPermiso = 1;
	END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectClientes
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectClientes`;
delimiter ;;
CREATE PROCEDURE `psSelectClientes`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario) AS 'Nombre',
	usuario.emailUsuario AS 'Correo',
	usuario.fechaRegistroUsuario AS 'Fecha de Registro',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectClientes1
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectClientes1`;
delimiter ;;
CREATE PROCEDURE `psSelectClientes1`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario) AS 'Nombre',
	usuario.emailUsuario AS 'Correo',
	usuario.fechaRegistroUsuario AS 'Fecha de Registro',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectConCiplU
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectConCiplU`;
delimiter ;;
CREATE PROCEDURE `psSelectConCiplU`(`PidUsuaConpay` INT)
BEGIN
	SELECT COUNT(usuario.clienidpaypal)AS contador FROM usuario WHERE usuario.idUsuario= PidUsuaConpay;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectDatosUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectDatosUsuario`;
delimiter ;;
CREATE PROCEDURE `psSelectDatosUsuario`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.emailUsuario," ",
					usuario.telefonoUsuario," ",
					usuario.fechaNacimiento, " ") AS 'Datos de la cuenta',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectDireccionUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectDireccionUsuario`;
delimiter ;;
CREATE PROCEDURE `psSelectDireccionUsuario`()
BEGIN
	SELECT
		direccion.idDireccion AS "No.",
		direccion.estado AS "Estado de",
		direccion.municipio AS "Municipio de",
		direccion.colonia AS "Colonia el",
		direccion.codigoPostalUsuario AS "CP:",
		direccion.callePrincipal AS "Calle principal",
		direccion.calle1 AS "Calle 1",
		direccion.calle2 AS "Calle 2",
		direccion.referencia AS "Referencias ",
	IF(direccion.statusDireccion = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM direccion;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectNombreUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectNombreUsuario`;
delimiter ;;
CREATE PROCEDURE `psSelectNombreUsuario`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario," ",
					usuario.apellido2Usuario, " ") AS 'Nombre',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psSelectUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `psSelectUsuario`;
delimiter ;;
CREATE PROCEDURE `psSelectUsuario`()
BEGIN
	SELECT idUsuario, nombreUsuario, apellido1Usuario FROM usuario;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateDaFa
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateDaFa`;
delimiter ;;
CREATE PROCEDURE `psUpdateDaFa`(`PidUsuario` INT)
BEGIN 
SELECT usuario.idUsuario,
usuario.apellido2Usuario,
usuario.direccionUsuario,
usuario.codigoPostalUsuario,
usuario.telefonoUsuario,
usuario.rfeUsuario,
usuario.fechaNacimiento 
FROM usuario WHERE usuario.idUsuario = PidUsuario AND usuario.statusUsuario ='1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateImagenP
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateImagenP`;
delimiter ;;
CREATE PROCEDURE `psUpdateImagenP`(`PidUser` INT, `PimagenPro` VARCHAR(245))
BEGIN 
UPDATE usuario SET usuario.imagenusuario = PimagenPro
WHERE usuario.idUsuario= PidUser AND usuario.statusUsuario = '1';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateStatusUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateStatusUser`;
delimiter ;;
CREATE PROCEDURE `psUpdateStatusUser`(`pIdUser` INT)
BEGIN
    UPDATE usuario SET
    usuario.statusUsuario = 0
    WHERE idUsuario = pIdUser;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateStockProductSelled
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateStockProductSelled`;
delimiter ;;
CREATE PROCEDURE `psUpdateStockProductSelled`(`pIdProductoCarrito` INT, `pidProducto` INT, `pCantidadSelled` FLOAT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0" WHERE productocarrito.idproductocarrito=pIdProductoCarrito;

   UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadSelled WHERE producto.idProducto=PidProducto;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psUpdateUsuarioT
-- ----------------------------
DROP PROCEDURE IF EXISTS `psUpdateUsuarioT`;
delimiter ;;
CREATE PROCEDURE `psUpdateUsuarioT`(`PnombreUAct` VARCHAR(200), `Papellido1UAct` VARCHAR(150), `Papellido2UAct` VARCHAR(150), `PcontraUAct` VARCHAR(16), `PconfirmcontraUAct` VARCHAR(16), `PtelUAct` VARCHAR(15), `PrfcUAct` VARCHAR(13), `PfechaUAct` DATE, `PidUAct` INT)
BEGIN
	UPDATE usuario SET 
	usuario.nombreUsuario = PnombreUAct,
	usuario.apellido1Usuario = Papellido1UAct,
	usuario.apellido2Usuario = Papellido2UAct,
	usuario.contraUsuario = PcontraUAct,
	usuario.confirmaContraUsuario = PconfirmcontraUAct,
	usuario.telefonoUsuario = PtelUAct,
	usuario.rfeUsuario = PrfcUAct,
	usuario.fechaNacimiento = PfechaUAct
	WHERE usuario.idUsuario = PidUAct;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psValidacionActivoE
-- ----------------------------
DROP PROCEDURE IF EXISTS `psValidacionActivoE`;
delimiter ;;
CREATE PROCEDURE `psValidacionActivoE`(`Pcorreo` VARCHAR(245), `Pstatus` VARCHAR(1))
BEGIN 
SELECT * FROM usuario WHERE usuario.emailUsuario = Pcorreo AND usuario.statusUsuario = Pstatus;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsVerCarritoCompra
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsVerCarritoCompra`;
delimiter ;;
CREATE PROCEDURE `PsVerCarritoCompra`()
BEGIN
SELECT MAX(idproductocarrito) AS idcarrito FROM productocarrito;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PsVerFolioVenta
-- ----------------------------
DROP PROCEDURE IF EXISTS `PsVerFolioVenta`;
delimiter ;;
CREATE PROCEDURE `PsVerFolioVenta`()
BEGIN
SELECT MAX(FolioVenta) AS id FROM venta;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for psVerProducto
-- ----------------------------
DROP PROCEDURE IF EXISTS `psVerProducto`;
delimiter ;;
CREATE PROCEDURE `psVerProducto`()
begin
SELECT MAX(idProducto) AS id FROM producto;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for RolUserAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `RolUserAdmin`;
delimiter ;;
CREATE PROCEDURE `RolUserAdmin`(`Pcorreo` VARCHAR(245))
BEGIN
INSERT rolpermiso values(DEFAULT,(SELECT usuario.idUsuario from usuario where usuario.emailUsuario = Pcorreo),2,1);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
