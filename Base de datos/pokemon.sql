-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2022 a las 06:44:41
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`codigo`, `nombre`) VALUES
(1, 'Pueblo Aromaflor'),
(2, 'Pueblo Paleta'),
(3, 'Pueblo Inacap'),
(4, 'Estadio Duoc'),
(5, 'Pueblo Starbucks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuentro`
--

CREATE TABLE `encuentro` (
  `codigo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `fk_ciudad` int(11) NOT NULL,
  `fk_entrenador1` int(11) NOT NULL,
  `fk_entrenador2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encuentro`
--

INSERT INTO `encuentro` (`codigo`, `fecha`, `fk_ciudad`, `fk_entrenador1`, `fk_entrenador2`) VALUES
(1, '2022-04-07', 4, 2, 3),
(3, '2022-03-23', 4, 3, 2),
(4, '2022-03-16', 2, 2, 3),
(5, '2022-04-28', 1, 4, 11),
(6, '2027-03-09', 2, 3, 5),
(7, '2025-07-04', 2, 4, 3),
(8, '2022-04-09', 1, 5, 2),
(9, '2022-03-24', 3, 4, 11),
(10, '2022-06-30', 1, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE `entrenador` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `fk_ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`codigo`, `nombre`, `edad`, `fk_ciudad`) VALUES
(2, 'Ash', 10, 2),
(3, 'Danno', 23, 3),
(4, 'Rodrigo', 22, 2),
(5, 'Paulo', 25, 3),
(11, 'Michi', 18, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie_pokemon`
--

CREATE TABLE `especie_pokemon` (
  `numero` int(11) NOT NULL,
  `nombre_especie` varchar(20) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `foto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especie_pokemon`
--

INSERT INTO `especie_pokemon` (`numero`, `nombre_especie`, `tipo`, `descripcion`, `foto`) VALUES
(1, 'Bulbasaur', 'Planta', 'Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000000fc4944415478daed95bb0dc3300c44bd564ab5293582cbb4293d4256c808594123648daca184824f38317411887611e80042f207ba4752b2a7696868e88f94d578acf9f25c328f47679e2f8f58cc653c0aa01a87eba904e604b11b483161433d62ee05c18be4788ba6d9d6bc178237560e21140059d802d110f28e0b0062becf05022080b100f0dc0da098af1b0e205c0d0e2f80267b984be86a704518a03b7b316188add02d91eb6ef3740e355b6e8365aeab21d7ae9b0f2d80214e04a074a055ee10388e5063ba66ee0aa04b2ef75e9fd67c9963831284471bea37df2a3367ad01524aeeff826c8505b4f78fa881422b441e47cfa3324343433fe90d0f45fcd51e11a8330000000049454e44ae426082),
(2, 'Ivysaur', 'Planta', 'Cuando el bulbo de su espalda crece, parece no poder ponerse de pie sobre sus patas traseras.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000001254944415478daed96b10dc2301045198535527a85949429dd3202252d2525252b781dd630f9873e7c3b8990e29008c9277dd94aa2fc7777b693ddae468d1ae51145eb9b5f1b171f9d37ad0d11437b30e3ad20cc10100ae09c8bbf6e4b9cca1ed72040b4e7d6b414045f121bdf9801cd00c0b9024825cacd7db8255929440ec0e7fcbd5dac0d06400805d14af01ee0284008483980415c4e6f33158cd454414a0012f3fdb14b94c3b0f439484915cc640c22bfaeeb04a61c093107c07a0b331ae786dfda4290b9dbd100c6cc26cd315709cc2c80dc9c55e00b130835edc7649df49abd067208ee6d849a0f16a64015ed022d39cf7f08a1260a60ed0bc1e6188bcf01828c6a3adbc53f482f109c7e9fac06406b7c8e932cd90ac4667f455bfe92d5a8f1fff10407ed41bc6569d9870000000049454e44ae426082),
(3, 'Venusaur', 'Planta', 'La planta florece cuando absorbe energía solar. Ésta le obliga a ponerse en busca de la luz solar.', 0x89504e470d0a1a0a0000000d494844520000002b000000270806000000969fb1bb000002a34944415478dacd993152c3301444b91265ca5c212547a04d4949499b9292922b505252d252720d119959b35aed97e54461e2993f7662e9eb79bd5fb2939b9b715b327175db04961e9e52fafefa8d7c7c8c6b002ed47bdbdccd7039b6db6d1106f8dfd4ff032305019ce1d2e72e1dee6f8b3dc369ff4b80d703c92d67505616c0d3f946ff51b6a99464451191aa0c8bb69a872f601cb000ea8000d628545dc8314ce15095468141d1a83d438ff26e0c48de63c01694eb9bcf9d0bea0bcbfb6c0a14986d1f410fb08057a15dc1136c01dcb04a947f0c705b85f472f89daaf2dec21250659941ab5f72d06e6502685359f1f8665fcf16438a0c4931087b150b0047cbbb6c090007cbf37a65734224c5310706b35608fcceb01ca7001790111c0f06752b2b74809ef38c504129e0ee703f872e02d60a58e1683640df611edd3dbd4e918f1f3ff745b0d20e5a036dd03e07728d78fab24a021003f13985d6739a437311f83ad04849fd1ee71458e1544d3ed6dc6b54b683394007acca3ad0a58bee55b9f2679458cf01f0e1e37d0e068ff2319c8b08b8d9291a003305433e1f3f3f53f5a348155e419d30212c57f7d26de75baea03a9f6256e168298ef1f19d0217b72d82c4b18344f4803ae808d6cdc585cfd4872d5f6a00a217167d9c4ddcf25b0da8503d902e470fa8bb50523355d5bf068293f6b4e176bdb0395c61ad865d825c6a0be5f27eb3db8717626173875e603778cb22d18531ac533b7f3f1416bec2a66050b0e54b073b4c59069ddf520556a7a5c8b3b8587c0678a4eadf0f186fefddc0d373a96cd1fc19cd0002347dce0cd82f3e13b829aca7d25de06eb5dae8dbf129cfb43310576a0b30b7e3e0419da22d4f9efc92d80b979f05e8d6156aad299ea1bf72331c22809ceb8095bc84aa6bffe448cd1f478e1b2e12c7d7fae7c8d07f717e00cb2fe9d4eabb78300000000049454e44ae426082),
(4, 'Charmander', 'Fuego', 'Prefiere los sitios calientes. Dicen que cuando llueve sale vapor de la punta de su cola.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000000ef4944415478daed96c10dc2300c453b062b3046566084acc20a1c1981153206578e8c906bd0b7e4608590ba25a602e54b961044ff3f2726ed340d0d0dfdb9928561521aa7ab77a9170419c5d39e4a694ceb7a40e460590a635b0054c338872fd8315d389bce183fd7c58e003082e4f74d80f819c04bf797834b3bef33c08c71dfee8b8e3503d66700e59973d765bd3b8699415d7607d4821b009a7fca3a905b38e660e7aa1079d74caee2783f53211c43298fa5dc2973000e973bc19f4dc2d131752d206438035884134008810010825990f380c26f56e1b5c7719e836f8557812084f315bdd55bcf66e14343bfaf07174eac52bb6f36480000000049454e44ae426082),
(5, 'Charmeleon', 'Fuego', 'Cuando balancea su ardiente cola, eleva la temperatura a niveles muy altos.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000011d4944415478daed96cd11823010852dc3162cc163ae94c1d1166cc5232578a5048fb4c235fa02c9246f36514308a3c3ceecc0f0f7be7dbb010e873df6f8c3d09b8a8f9746d78088895401d08f464942e6d8d8a95521269157024204184fee9a9210da178f3c7caa1e00855d0884914aa9f80ccc00ab89275ae05c889c2b0b90b03805983f70bee81b17827b7321824a3b7536db63db6a84154746e6e113a7f2060f61c5d91971592e75c117e1ca19825a125c9f0de10b61dfe670bfba6329b82500a6f7482bea5e48c3cd2443586106c812effbde0120036b6700248b4910d9d5038286cb3982ea25ab1960c9bb405c5e7e5b7845f0bcacf1450c5a633fcda5fafead335a5a29489a993abf629181ad0780a0c1dde46f7833f13d7e379e7bb431f4526a10640000000049454e44ae426082),
(6, 'Charizard', 'Fuego', 'Escupe fuego tan caliente que funde las rocas. Causa incendios forestales sin querer.', 0x89504e470d0a1a0a0000000d494844520000002c0000002708060000007443aac2000000097048597300000e7400000e74016b24b3d6000000206348524d00007a25000080830000f9ff000080e9000075300000ea6000003a980000176f925fc5460000045d4944415478dacc582190e336147df21cc8c1146d8ab650701dd45d241f0b4c59bda80ef2d1b00dccb114ae515c1497edc1401b750f6503052fa8bbcc651ba602473a49969de472d7e6cf649271c6f2fbefbfffbe2ce0bc43d817bc73062b7efbb906dac3b9536c81f6ce9cdd5a9073074bfef864e03c5f49043d67037a5fd3a9da75f1ddd81d948686c5620800621f60b18a631768316703ccd9e0fb009f758065d76cbc5d025f2b09322a9600000bb8ab02e2442918d7bc03d875976e3144865775c1022dc46208b118a2a142cdb1631283b2023aeb008312e4870200c85e86fb4962bb89d4532d34d084dc7e0400f8d72f90fa3ba4723b6026f8030687cdaeb0c1066989a228da1f7efb1169baad6efc02fa68a94876f76a58b2231f26c13e3d5e48b04acb0dd220a36289a7c70b057a15c758c5b12b019365d9745af3350d8ec692ab9baa7213db35f4d8254264b5c69c0300f2a8ab92f6af5f5ad7148b61edba772c5847796b312a968a695d5a5b7f82202d11a425fceb17c5bcb5a60afd7f17c30781b517eb2709186308f1d6c92c008c39c7d69f00007ea2cf0080e72c451e75db9856f7eb8def1d0ace952d00ace218334a0d8bd343070b009f79e5a9bd304290968d4c02203ba08d2ea1ac488f34ddc2bfbf3758703d40827649c18ecfbc873f47b7288a02fd2431e4b1cf02bdb672a7e916ca05c2078369d9447ae45117195ec11873b2fbe9f777eab32b319144d99ab6abe8dafcd4343c2a96f875bea89278ffdef84fb263279a475de4515725d4799a2ab03a489767db0d281377355d0decd3e305d67c8328ead432b7a69f517e5d3a2d96d538ee65134a7dcf28359eeb35b9837ffd62801d73ae58db652ea4ffeaf27095759f0dea2cebd2d0c13a352cc7a8fe700974baed29ebb27669cd1bafb434406b89ee053da3d4d927b5b2ca0ca53e1963986e7be09d7f70452f31e6dcf05cc618669462cd37008028ea3841cb09778044844c50122699ee2709de689e57659e484109104230ddf6d034cd0090a228c41a6f1165775595c20f06700934484bf59b3186a2288403b4222e4839f2080037fbc6b3d8fe62358440882a079b5d6d9a55e07660e5ef28bbabc9abc5aa84de0fbaaf076959d3715be70a596efffe1e8410ccd900747a879b9b1bd361fefecbb9401a7e501350675a07a14b4cc615bdc49a6f70452f8f1acd447a2d21446d156db0ab3846104e9c0b6478c58cd21a2097f5b9c0aef9a6f602b16f2f611b3d69f2dfa668f27209dade8748b0bd5ffc9af4bed9b9c48c5204e104cf9a0d3d738e6c125660c287caa2c28746a60793a1faf493043fbe1b39257bcac94f8de1f10ea41de134431e750da7d087cc9873fb758b1cb5f939f455cbde4bcc284538cd104e33e70d3a587b5fd2b2cff8e6676b62ce06aaa375b675d65671ac2490a65ba7031c126f4e052b6521279d36540c37d12570454f28eb49e76042200802e479aeb69f2d8c35baca312c9f2a0971e49a4ed0c7003ed5d688e3d35a9135df18f23956c3fff96135634c0821d4f7b18785ff4766e2140cff0e0059739a0cb69d1b480000000049454e44ae426082),
(7, 'Squirtle', 'Agua', 'Escupe fuego tan caliente que funde las rocas. Causa incendios forestales sin querer.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000001034944415478daed95b10d8330104519252d23a46405ca8c40cb185e8111b282cb9429b34246a075f4910e7d1f8e04d816cd7de9241087ffbb33679ac6643299f629a838fa4e9e793f4d617ccd6bec5838957fce9c17e200d41f904d1ee5960340745d17fc70d320913972eee3700a2059b5be87c1c7b52b88e4c8b39c0e4466a8024a55e8fa76856053b92ed27ede73de5b984002a10172a760f335c3880dbcf7110077a1c4082e105c956eaf86a802204612efe723cc5fb75ccb340800a244eb93a71a4c25c49c47523a50da3c0241f50806e069a809b08c228cb80bbc3df816aa560f0039d5b8130c5213a0d147ae6c43ee799f3d21e8ca550045fffb2693e912fd00c32dee1ffc017d2f0000000049454e44ae426082),
(8, 'Wartortle', 'Agua', 'Se oculta en el agua para cazar a sus presas. Al nadar rápidamente, mueve sus orejas para nivelarse.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000001474944415478daed963d0ec2300c857b1d8ec0d8b52323232357606464edc8c8117205c68e5ca147e81af4acbeca092ed09f50865ab22821b23f3f3ba459b6da6a7f6e7ed1e48fbaf14b420c01981dd4dfee953f9caa4f103e9552df00c86f70eceddb33561d090acff3dc1b81bae4e5ed33e05885243912d0a108d71114df7baa0f928f8190e03a393d4eae143201b8ff4d9b6c002bb90560040eaa26640fe8b0e422fffe2ac1f48cb87361ce07134faa9eadc0ba734e00b0c6e0c762230097c3d6c7c33b6900350092628d46001a2162652601c443880a61d282b60d84d02a6888a1d207c9f949c9e94cac879210f05900d06b7de6b5576e1700601f016205a6fc3d0753ddd465e7acd8528000492e2754ceea51b59c8856153cb30529aeef60e8a842fc0c8854ef0ec1e4c76ab00d2901ac6bf565109778730a8ee952af6e49267eb5d57e6a4f8cccbde9753470880000000049454e44ae426082),
(9, 'Blastoise', 'Agua', 'Un brutal Pokémon con reactores de agua en su caparazón. Éstos son usados para rápidos placajes.', 0x89504e470d0a1a0a0000000d4948445200000022000000260806000000a1d649d4000002294944415478dac5983172c2301045b952ca94b494942929b902a5cbb49439465a9794297d8d5cc199d5e46bbe7f7665c976ccceec00b2a57d7cef2e128743d9c65f7faa8dc7e371ecfbc75361120440046657b004016398c7fd9c7c2f981c1c76ebdeb34a067239bfd4c044f78c2dca661883b05706998149e376dd516f64ab8601045c5511980c000879941375edb516262d82a40584e70cc01080c61a663caf4d957e9c4c8471d008821d204b14c9200ca340188b2010580ba019e2d4f519c683e231c078200cd3da285d08385f3bbf5db3520a63200c03efaea7f6c7527283b0e0fcc8902f0ac340b5205510fab8d418e6dfd4e0fc68816982d0fc78bddcdd809a431e083f2a8340dfa902d06f0b10bbc66dba4611053298922a29880534f764c7b82d6255c1c90a651824ea3b80f140d242700f62ae6abe1eb734972122a54aaa64255a4100618e60d17c0f8641266a407e4e4e4d540028442d88755517046a0cc39081bcca417017e0fb33bfe72fe655550862008071764e39103b03e8b806e7cffc7be36dace6b66e7f3aa30200c20b8ecffaa3b7f484e0062fa9a14a7c74a7e864d0b6abb785cc1500e35eb785122882352093fec281158c4b18f77bfd641584c2a8a38aa04c54c254108755202cb102984395a8016e0ac2ea2077b8af943a31e6af8261086d7cec5e276688a520933ec26a44a73c4047108b15b1ce0baf3cb74eb6145b402c3a3447f905b85dffd6306345e0ad07ab4d608293ffd3fe81da5d8139758af6039205af89ad20cd880000000049454e44ae426082),
(10, 'Caterpie', 'Bicho', 'Sus cortas patas están recubiertas de ventosas que le permiten subir incansable por muros y cuestas.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000000cc4944415478daed95b10d8330104559c765ca946e3d424ad660154a4648cb0894598111d25ef44f3aeb83d2a4b8438aee4b5fd834ffd9fe866148a552a9df2597863fef450842c8e100b2b7d21d05a1001c8c79ad350440e6ad691882f134e37d288085c2efbda8bd21649a9bda822ddcfa4063bfd5c30cc100afd519609c6e3d1863db1104c3189faea70f048c0e1800ccb7404bba8d6ebb7168bf9957ef0da0100880b9170cb72e0ff76bd9212cdc8ee2d405dfef021fc1b73e844060bb615a79f8dff2b2e0542af51ffa00982c00f7bc5375980000000049454e44ae426082),
(11, 'Metapod', 'Bicho', 'Este Pokémon es vulnerable al ataque cuando su concha es blanda, dejando expuesto su frágil cuerpo.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000008b4944415478daed96cb0dc0200c43592dd7aed45558a93351a552a2f03916a7aafca488a31d03815208213fa185c20bd7eb780a6dc085d3c5cf8a353089a7195061f416b8a8ae8a1942a5e0915be7062285aefb780e508771125b99d89944273a1a08ddb7ed3760d53dfc16c41211ec1c18b7023e884c3463107d661cfb531cd3c8f80fa47e460821af7003b0c6136c65f6d0ef0000000049454e44ae426082),
(25, 'Pikachu', 'Electrico', 'Cuando varios de estos Pokémon se juntan, su energía puede causar fuertes tormentas.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000000e74944415478daed96b10dc23010453d0a6dca8ce01518819296115881923223d0523202abd01e3ac3a1e36c6319dd39cd7de94b9192f8fdfc9c9c84e072b9fa056faf038f31f604500fdb13001ef7196ecba416222df66341e02678e39efe00e763d60050336409d708001440c2118626b804abc0711102a179cd3c80099c43b8f15558c38b01641b6c26c6c051f21c83e9d7cfab26184d7a2b84490bc9bbedcb8510aaf0eb69f319b05680cb614ad72efb5975fbcd068c4f7ea91d8b10d956cce1fc985ab0fa5a7e4d38df762bc3184c43d4ea1ff1af50dc8a473c7d35cc5a7019c4e572fda527bc55fe55a5ce938f0000000049454e44ae426082),
(26, 'Raichu', 'Electrico', 'Su larga cola le sirve para protegerse a sí mismo de su potente y alto voltaje.', 0x89504e470d0a1a0a0000000d4948445200000027000000230806000000173213230000002c744558744372656174696f6e2054696d6500576564203330204f637420323031392030393a33373a3236202d3030303097b9975a0000000774494d4507e30a1e09251c55514ca6000000097048597300001ec100001ec101c36954530000000467414d410000b18f0bfc6105000005654944415478dabd587d485d6518ffdd7b358e35878290176e82d624471b6d846deaba7964092e87dd550b65866df435a29a622c647fc46215e946209568b1e5281a4a545a4b3ccbd9148a08464c52cbe6cc7b69ff48dbbc97e9f5f4bceff9b8e7dc73cef5eeeee2030ff7bc1fe7797fefeff978df738164240332d735167732a01a77d6ac352e2eae44c03450a7860681e50473d714dced028b0f811437969108580ad638a8a38dfb4cdd6da73e9353019861d7e952cd9cfc2149d634504df5bcd9dcba1e59259d69662e15d6e81d8da9ede52e9495672ac0d210a3b6d92abb14152b44242c211a304f14cd87d713b06c02d693b6e4712c25738b11feab038caf7526c604fe9b2ec6b4b55c7603e20e11c31d8cc228ef0a5ef1f05f168bde804473041cddd700796589f7b7bc91ad80db982438b6b8dd3c41d9bc3cd50cd786f638e6e825f917159841bc05b1e760bf0871f326bd5de6bfae3f87270e9a59b60b09ead3e7c5f57ff9c1e31cd899effe50bb0c83f37da2f2ac320697c2586836aa6ed38386e340e5e68db40bdaba7b1965db73615c862facca170313686a91622c69c09c00934422113cfdf2b7dc036e9db1256585e0ac81a55973db4ec62e2c99da2cee34adab2eb40510cfb2b1df18b72ab87cecae2ca19e28d7d01570d5da9c41a6c4e8e9d7a238f7e7552cbaaf022b19181f05de79f71a8f37ddb0aab99b7acc1b199f533da3288b6d0e4c6d8f8d074df35d0c796dc5fde83a5444136ed8b2d37042712f03a6bc7517772f398137a551c99a085a4c2d2b6b0c7f12a010f0728065db7cdaea31b0b026147ff1d793cf626bfd0984bed963893906627870005595148f595938fdba615c15ef9e9184592a50168629d0a573d304d0171b907514b66548cfd6c1374b5436acc280f9fd7ea424b4f95ecac23eca40068c31673adae05c1f3973ac3c981873706befabc4925f991b1c91a8ee29f32f5df6a0ea9064cf9eea52bec9e7fa6174b53c75107ddf4fe3c957ce3a80530d70800ee0b49292bf43347587ce0f2506170fcc38ae8263ac51f5b00d09b7b61356f91943829a99ecb9b52b5bcf525be03436f9b707b9eb527037ade9dae00cccc41cbb8decad8aa07d4019e081af890a4c963d26b74e5d5686b395d30b5b9f972cec30e62cac2529a6e3ab7f2407b811c6c0603772767643a0e2cf54ab73ac6487a86cec22962f4ec7def3e601c7fbeea4fbdc7ea4f343c8722b912efe865d3507f8b3f05037d77545ca18cb66a68cd5878b81e2424599bcf7c2227e9f99b1b88eb1c6e32e05d0261768069907c3d72e515fa63ae8e1802befbd87b78af2fe8558ba40e359cab0a12e4e123e7fb3c1bd64b7b4bc1abe82fbd0fff9addd8e332c93c958a0b63ae14b33ff30500b3a8b46292e8c9b4c767fbe705626c5eea76267e8d7673a8d64acc29c81c11fdb45bcf51528f63ed69963a2b95b13fd38d3ad79d0f6a1807c9f176f7fdae37ca49130a0a1f96930d04e002df7b9e10ed16e1e2646fbf1fee11a5d9de499c76e6282622ff0a868ff89a82a31c75d9d48ecafe954f98f3c1125a61a111cfd8803d36793b61c1bc4913ac46e2b06b9c3bd8296808085c579f315df2002b51f2917b1bc9c105b1c38965dacd2abf2625d310e1c1be360ec6472c6beddd6fb1765fd027f6600e3bf434a0998afa090c5dd2dc61cdf5a8edcf592884c5959a0804a89113413e67e0fcc31175563533fca54c68c89a0c96ac0ace05463b5dbb6f066ebde5cfe7b5386f5ec6489d361bea930704e67ac65e5244a8969b1fdb501cc04e7e0cbcde35d73e108a49f24676382208b0f6ee1f7bcfa0728a7dd4a1035759e4fcb27a2d980a017e2d577a86f268882bbb330fb1f5048b7ca8ae2eb690367fe3b22928a4172a69bcee4f01c7ae8dced1942dabef86fcf8810174b296dce59fe07db91544976b3056c0000000049454e44ae426082),
(50, 'Diglett', 'Tierra', 'Vive un metro por debajo del suelo, donde se alimenta de raíces. También aparece en la superficie.', 0x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af4000000b84944415478daed95310a84400c45bdd6967305cb2d2d6d2d2da7f41a7b04db3d82a557d9f62f097c8981edc62c423e040d33f07ebe23d375a9542a7573c1552c7cadcfa396e1116ae204ff87098509d49b893080cfbc00db7e4c1c6ea094826d98b498449401850b489e7c8f3a0378af2f85faa9a567c9fa15bf256a9d308ebd16a7b7606b807b5a9a38c125099b06c15ce3dee629f0331062cd486f53baf42c08c8c2d873ad75fc3fd370d3c2dd0fa197512a954add575fab4cfd6fd5e915480000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `fk_especie` int(11) NOT NULL,
  `fk_entrenador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`codigo`, `nombre`, `fk_especie`, `fk_entrenador`) VALUES
(1, 'Equipo Estrellado', 3, 4),
(2, 'Equipo Rodrigo', 1, 4),
(3, 'Continental', 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `encuentro`
--
ALTER TABLE `encuentro`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fke1` (`fk_entrenador1`),
  ADD KEY `fke2` (`fk_entrenador2`),
  ADD KEY `fkeciu` (`fk_ciudad`);

--
-- Indices de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fkec` (`fk_ciudad`);

--
-- Indices de la tabla `especie_pokemon`
--
ALTER TABLE `especie_pokemon`
  ADD PRIMARY KEY (`numero`),
  ADD UNIQUE KEY `nombre_especie` (`nombre_especie`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fkpkm` (`fk_especie`),
  ADD KEY `pkme` (`fk_entrenador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `encuentro`
--
ALTER TABLE `encuentro`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `encuentro`
--
ALTER TABLE `encuentro`
  ADD CONSTRAINT `fke1` FOREIGN KEY (`fk_entrenador1`) REFERENCES `entrenador` (`codigo`),
  ADD CONSTRAINT `fke2` FOREIGN KEY (`fk_entrenador2`) REFERENCES `entrenador` (`codigo`),
  ADD CONSTRAINT `fkeciu` FOREIGN KEY (`fk_ciudad`) REFERENCES `ciudad` (`codigo`);

--
-- Filtros para la tabla `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `fkec` FOREIGN KEY (`fk_ciudad`) REFERENCES `ciudad` (`codigo`);

--
-- Filtros para la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `fkpkm` FOREIGN KEY (`fk_especie`) REFERENCES `especie_pokemon` (`numero`),
  ADD CONSTRAINT `pkme` FOREIGN KEY (`fk_entrenador`) REFERENCES `entrenador` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;