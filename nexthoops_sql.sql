DROP DATABASE IF EXISTS nexthoops;
CREATE DATABASE nexthoops;
USE nexthoops;

CREATE TABLE shirts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team VARCHAR(100) NOT NULL,
    player VARCHAR(100) NOT NULL,
    conference ENUM('Este', 'Oeste') NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    material VARCHAR(100),
    image_url VARCHAR(255),
    description TEXT
);

USE nexthoops;

INSERT INTO shirts (id, team, player, conference, price, stock, material, image_url, description) VALUES
(1, 'Boston Celtics', 'Jayson Tatum', 'Este', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/boston-celtics/boston-celtics-nike-association-edition-swingman-jersey-white-jayson-tatum-unisex_ss4_p-13348841+u-t8ts8t8vey80fqdo69lq+v-c040404298cd4e7b84798e4e3cb8f057.jpg?_hv=2&w=900', 'Camiseta oficial de Jayson Tatum.'),
(2, 'Boston Celtics', 'Jaylen Brown', 'Este', 89.99, 40, 'Poliéster', 'https://images.footballfanatics.com/boston-celtics/boston-celtics-jordan-statement-edition-swingman-jersey-green-jaylen-brown-unisex_ss4_p-13365073+u-10tumpwqm2kg5t98swio+v-cb63ff39c7324e69b39c1e64d8a5b33b.jpg?_hv=2&w=600', 'Camiseta oficial de Jaylen Brown.'),
(3, 'New York Knicks', 'Jalen Brunson', 'Este', 79.99, 30, 'Algodón', 'https://images.footballfanatics.com/new-york-knicks/new-york-knicks-nike-icon-edition-swingman-jersey-blue-jalen-brunson-unisex_ss4_p-13349423+u-fisvk6fuw7brxs5ufqb0+v-4cbb4051fe5f4d9a916af418228a55e7.jpg?_hv=2&w=900', 'Camiseta oficial de Jalen Brunson.'),
(4, 'Milwaukee Bucks', 'Giannis Antetokounmpo', 'Este', 99.99, 60, 'Poliéster', 'https://images.footballfanatics.com/milwaukee-bucks/milwaukee-bucks-nike-name-and-number-t-shirt-giannis-antetokounmpo-mens_ss4_p-12015720+u-kruxcddxlxju9mut1bgz+v-4a1295a311be47a9bc37fb05238ac0c4.jpg?_hv=2&w=900', 'Camiseta oficial de Giannis Antetokounmpo.'),
(5, 'Milwaukee Bucks', 'Damian Lillard', 'Este', 99.99, 55, 'Poliéster', 'https://images.footballfanatics.com/milwaukee-bucks/milwaukee-bucks-nike-icon-edition-swingman-jersey-hunter-green-damian-lillard-unisex_ss5_p-200741641+u-sefbhwbtb0a4au5ox3zu+v-6ncujjmlwwcfyqbyslwl.jpg?_hv=2&w=600', 'Camiseta oficial de Damian Lillard.'),
(6, 'Cleveland Cavaliers', 'Donovan Mitchell', 'Este', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/cleveland-cavaliers/cleveland-cavaliers-nike-icon-edition-swingman-jersey-maroon-donovan-mitchell-unisex_ss4_p-13348374+u-z6pcly34h4hr5oqih4ce+v-bfaf8fb0135a47719a13c0268a7f23d7.jpg?_hv=2&w=900', 'Camiseta oficial de Donovan Mitchell.'),
(7, 'Cleveland Cavaliers', 'Darius Garland', 'Este', 89.99, 45, 'Algodón', 'https://images.footballfanatics.com/cleveland-cavaliers/cleveland-cavaliers-jordan-statement-edition-swingman-jersey-black-darius-garland-unisex_ss4_p-13363648+u-13hc0hcckb59akb41udv+v-f9ce016aa8714999add85b4cbdd49860.jpg?_hv=2&w=900', 'Camiseta oficial de Darius Garland.'),
(8, 'Orlando Magic', 'Paolo Banchero', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/orlando-magic/orlando-magic-jordan-statement-edition-swingman-jersey-royal-paolo-banchero-unisex_ss4_p-13363858+u-19yer16wujz2xrbeiivw+v-d4e07d8f62b0427aabd7189b38e3bec2.jpg?_hv=2&w=900', 'Camiseta oficial de Paolo Banchero.'),
(9, 'Indiana Pacers', 'Tyrese Haliburton', 'Este', 79.99, 40, 'Poliéster', 'https://images.footballfanatics.com/indiana-pacers/indiana-pacers-jordan-statement-edition-swingman-jersey-navy-tyrese-haliburton-unisex_ss4_p-13363733+u-1bbgtl6txi02z3vuyekj+v-8e9536dfc58d4ec18eca5b27b3acac59.jpg?_hv=2&w=900', 'Camiseta oficial de Tyrese Haliburton.'),
(10, 'Philadelphia 76ers', 'Joel Embiid', 'Este', 99.99, 50, 'Algodón', 'https://images.footballfanatics.com/philadelphia-76ers/philadelphia-76ers-nike-icon-edition-swingman-jersey-navy-joel-embiid-youth_ss5_p-200377414+pv-1+u-nyhpp0y6y9ljgzepck2w+v-soze3rnjno8zzg4olivo.jpg?_hv=2&w=900', 'Camiseta oficial de Joel Embiid.'),
(11, 'Philadelphia 76ers', 'Tobias Harris', 'Este', 79.99, 30, 'Poliéster', 'https://images.footballfanatics.com/philadelphia-76ers/philadelphia-76ers-nike-icon-edition-swingman-jersey-navy-tobias-harris-youth_ss5_p-200377415+pv-1+u-5bqir78p40kwqm0thkpg+v-lk2fcik4clf8owhngxyw.jpg?_hv=2&w=900', 'Camiseta oficial de Tobias Harris.'),
(12, 'Philadelphia 76ers', 'Tyrese Maxey', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/philadelphia-76ers/philadelphia-76ers-nike-icon-edition-swingman-jersey-navy-tyrese-maxey-youth_ss5_p-200377416+pv-1+u-ynggzd3vzmhnkmivl7mn+v-6ahi2ukcmyzxpzfjubvb.jpg?_hv=2&w=900', 'Camiseta oficial de Tyrese Maxey.'),
(13, 'Miami Heat', 'Jimmy Butler', 'Este', 89.99, 45, 'Poliéster', 'https://images.footballfanatics.com/miami-heat/miami-heat-jordan-statement-edition-swingman-jersey-red-jimmy-butler-unisex_ss4_p-13365072+u-gippfentzzpnbqqfu1dl+v-bac1e1f715ff493abc2ec2007811c3f2.jpg?_hv=2&w=900', 'Camiseta oficial de Jimmy Butler.'),
(14, 'Miami Heat', 'Bam Adebayo', 'Este', 89.99, 40, 'Algodón', 'https://images.footballfanatics.com/miami-heat/miami-heat-jordan-statement-edition-swingman-jersey-red-bam-adebayo-unisex_ss4_p-13363786+u-1dn3115pb4gfcmbj6ahq+v-0914a3cd58f24f7795542deac7e2b70b.jpg?_hv=2&w=900', 'Camiseta oficial de Bam Adebayo.'),
(15, 'Miami Heat', 'Tyler Herro', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/miami-heat/miami-heat-jordan-statement-edition-swingman-jersey-red-tyler-herro-unisex_ss4_p-13363778+u-18nfha7wfyqqn1hjl1y5+v-d5f2c807361f4614995ae3ef254ada8e.jpg?_hv=2&w=900', 'Camiseta oficial de Tyler Herro.'),
(16, 'Chicago Bulls', 'Zach LaVine', 'Este', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/chicago-bulls/chicago-bulls-nike-icon-edition-swingman-jersey-red-zach-lavine-unisex_ss4_p-13349360+u-19uldcrd526myh4dzm8r+v-c02ada147a104f999eb430ce88cb05d7.jpg?_hv=2&w=900', 'Camiseta oficial de Zach LaVine.'),
(17, 'Chicago Bulls', 'DeMar DeRozan', 'Este', 89.99, 45, 'Poliéster', 'https://images.footballfanatics.com/chicago-bulls/chicago-bulls-nike-icon-edition-swingman-jersey-red-demar-derozan-unisex_ss4_p-13349377+u-ro1aji9w0wgeusih81d1+v-09e3419ca66d477bbbb0966392428765.jpg?_hv=2&w=900', 'Camiseta oficial de DeMar DeRozan.'),
(18, 'Atlanta Hawks', 'Trae Young', 'Este', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/atlanta-hawks/atlanta-hawks-nike-association-edition-swingman-jersey-white-trae-young-unisex_ss4_p-13348853+u-5fugb90qyoly7ehvp89e+v-205feabbc7d54cd5b9cd5317a2693480.jpg?_hv=2&w=900', 'Camiseta oficial de Trae Young.'),
(19, 'Brooklyn Nets', 'Mikal Bridges', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/brooklyn-nets/brooklyn-nets-nike-city-edition-swingman-jersey-23-black-mikal-bridges-youth_ss5_p-200829857+pv-1+u-vzsmehhffixqexvgkocy+v-lko8s2ju3qbseieonuxu.jpg?_hv=2&w=900', 'Camiseta oficial de Mikal Bridges.'),
(20, 'Toronto Raptors', 'Scottie Barnes', 'Este', 79.99, 40, 'Algodón', 'https://images.footballfanatics.com/toronto-raptors/toronto-raptors-nike-association-edition-swingman-jersey-white-scottie-barnes-unisex_ss4_p-13348965+u-75qp3ero45q7k2khtanc+v-fc13d90387fa4116978974030e5fe48b.jpg?_hv=2&w=900', 'Camiseta oficial de Scottie Barnes.'),
(21, 'Toronto Raptors', 'Tracy McGrady', 'Este', 79.99, 30, 'Poliéster', 'https://images.footballfanatics.com/toronto-raptors/toronto-raptors-tracy-mcgrady-hardwood-classics-road-swingman-jerse-by-mitchell-and-ness-mens_ss4_p-11889789+u-fr6tfjy873oqy5fne632+v-d7e02497419b49dc9e926de3846799d2.jpg?_hv=2&w=900', 'Camiseta oficial de Tracy McGrady.'),
(22, 'Charlotte Hornets', 'Lamelo Ball', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/charlotte-hornets/charlotte-hornets-jordan-brand-association-edition-swingman-jersey-white-lamelo-ball-unisex_ss4_p-13348861+u-fn802u986txae29jusik+v-ea95aa13d1f142d8a0c711f60cd0e3b0.jpg?_hv=2&w=900', 'Camiseta oficial de Lamelo Ball.'),
(23, 'Washington Wizards', 'Jordan Poole', 'Este', 79.99, 30, 'Algodón', 'https://images.footballfanatics.com/washington-wizards/washington-wizards-nike-icon-edition-swingman-jersey-red-jordan-poole-unisex_ss5_p-200664869+pv-1+u-7h7qkg2mo4htnqrtcusp+v-phxsrmy8ofkhjsmulhhk.jpg?_hv=2&w=900', 'Camiseta oficial de Jordan Poole.'),
(24, 'Detroit Pistons', 'Cade Cunningham', 'Este', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/detroit-pistons/detroit-pistons-nike-icon-edition-swingman-jersey-blue-cade-cunningham-unisex_ss4_p-13348418+u-3ux7mp9vy798kfnt1qpn+v-5e47d66dddb9469facd5bdb7d40d98c9.jpg?_hv=2&w=900', 'Camiseta oficial de Cade Cunningham.'),
(25, 'Oklahoma City Thunder', 'Shai Gilgeous-Alexander', 'Oeste', 89.99, 45, 'Algodón', 'https://images.footballfanatics.com/oklahoma-city-thunder/oklahoma-city-thunder-nike-icon-edition-swingman-jersey-blue-shai-gilgeous-alexander-unisex_ss4_p-13349391+u-91tc7i2w91emvcjiytv0+v-e65ab5bf7e7444aeb5fa3ecfb1864ec7.jpg?_hv=2&w=900', 'Camiseta oficial de Shai Gilgeous-Alexander.'),
(26, 'Oklahoma City Thunder', 'Chet Holmgren', 'Oeste', 79.99, 40, 'Poliéster', 'https://images.footballfanatics.com/oklahoma-city-thunder/oklahoma-city-thunder-nike-icon-edition-swingman-jersey-blue-chet-holmgren-unisex_ss4_p-13349413+u-1b8ux0c3a04b0gw4g8bu+v-3fd23815511347e3b9c9c1f0b7683a97.jpg?_hv=2&w=900', 'Camiseta oficial de Chet Holmgren.'),
(27, 'Denver Nuggets', 'Nikola Jokic', 'Oeste', 99.99, 60, 'Poliéster', 'https://images.footballfanatics.com/denver-nuggets/denver-nuggets-nike-association-edition-swingman-jersey-white-nikola-joki%C4%87-unisex_ss4_p-13348808+u-rfcis36k367hv1l7oc12+v-10d7f9d2c92d402ea4b4f4a61aa957a4.jpg?_hv=2&w=900', 'Camiseta oficial de Nikola Jokic.'),
(28, 'Denver Nuggets', 'Jamal Murray', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/denver-nuggets/denver-nuggets-jordan-statement-edition-swingman-jersey-blue-jamal-murray-unisex_ss4_p-13365097+u-1h580oe4pxam76rolr55+v-ca67706fc73c408dba93142e688f5c0e.jpg?_hv=2&w=900', 'Camiseta oficial de Jamal Murray.'),
(29, 'Denver Nuggets', 'Aaron Gordon', 'Oeste', 79.99, 45, 'Poliéster', 'https://images.footballfanatics.com/denver-nuggets/denver-nuggets-nike-association-edition-swingman-jersey-white-aaron-gordon-unisex_ss4_p-13348859+u-6f7x608mir2zte09k6l8+v-8e1a1fb57e454111b1d66304559ff778.jpg?_hv=2&w=900', 'Camiseta oficial de Aaron Gordon.'),
(30, 'Denver Nuggets', 'Michael Porter Jr', 'Oeste', 79.99, 40, 'Algodón', 'https://images.footballfanatics.com/denver-nuggets/denver-nuggets-jordan-statement-edition-swingman-jersey-blue-michael-porter-jr-unisex_ss4_p-13365091+u-fltccwdm90ulu3e40qx9+v-d478329217df4ba29c1c70439b4ad6f5.jpg?_hv=2&w=900', 'Camiseta oficial de Michael Porter Jr.'),
(31, 'Minnesota Timberwolves', 'Anthony Edwards', 'Oeste', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/minnesota-timberwolves/minnesota-timberwolves-nike-association-edition-swingman-jersey-white-anthony-edwards-unisex_ss5_p-13348916+u-xtjcajvfx6kp9yl2xky3+v-3whqsq42jiqkc9s6qdhf.jpg?_hv=2&w=900', 'Camiseta oficial de Anthony Edwards.'),
(32, 'Minnesota Timberwolves', 'Rudy Gobert', 'Oeste', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/minnesota-timberwolves/minnesota-timberwolves-nike-icon-edition-swingman-jersey-navy-rudy-gobert-unisex_ss4_p-13349422+u-y70pv7lrexzd4va7ie0c+v-051ca87ab0364ce3bfb64e43dbedca02.jpg?_hv=2&w=900', 'Camiseta oficial de Rudy Gobert.'),
(33, 'Minnesota Timberwolves', 'Karl-Anthony Towns', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/minnesota-timberwolves/minnesota-timberwolves-nike-icon-edition-swingman-jersey-navy-karl-anthony-towns-unisex_ss4_p-13349402+u-v68goefpb5dakhqytr8o+v-7f09921a5f5d484ebc71aae16895aefa.jpg?_hv=2&w=900', 'Camiseta oficial de Karl-Anthony Towns.'),
(34, 'Los Angeles Clippers', 'Kawhi Leonard', 'Oeste', 99.99, 55, 'Poliéster', 'https://images.footballfanatics.com/la-clippers/la-clippers-nike-icon-swingman-jersey-kawhi-leonard-youth_ss4_p-12006051+u-pzvley4lqtplgqho8cyu+v-3c44a142e58e4dc6a228188651722d61.jpg?_hv=2&w=900', 'Camiseta oficial de Kawhi Leonard.'),
-- La única imagen distinta, ya que no está en la de la NBA
(35, 'Los Angeles Clippers', 'James Harden', 'Oeste', 89.99, 50, 'Algodón', 'https://www.micamisetanba.com/image/cache/20231121SX/camiseta-james-harden-1-los-angeles-clippers-2324-azul-1-1000x1000.jpg', 'Camiseta oficial de James Harden.'),
(36, 'Los Angeles Clippers', 'Paul George', 'Oeste', 89.99, 45, 'Poliéster', 'https://images.footballfanatics.com/la-clippers/los-angeles-clippers-nike-icon-edition-swingman-jersey-blue-paul-george-unisex_ss4_p-13349350+u-s06sbv5tfdzq7kepihc4+v-7e2b3d2719354a50bb9e0b2a7cd7d352.jpg?_hv=2&w=900', 'Camiseta oficial de Paul George.'),
(37, 'Los Angeles Clippers', 'Russell Westbrook', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/la-clippers/los-angeles-clippers-nike-icon-edition-swingman-jersey-blue-russell-westbrook-unisex_ss4_p-13349445+u-zgzgqd2yym7c7b09kywa+v-430f5815b2ad4cc6a99f4c7f2690396f.jpg?_hv=2&w=900', 'Camiseta oficial de Russell Westbrook.'),
(38, 'Dallas Mavericks', 'Luka Doncic', 'Oeste', 99.99, 60, 'Poliéster', 'https://images.footballfanatics.com/dallas-mavericks/dallas-mavericks-nike-association-edition-swingman-jersey-white-luka-don%C4%8Di%C4%87-unisex_ss4_p-13348832+u-spto5iybk8g8bu1kxpqw+v-37c3bef823124632a0118bce9cdfe9c1.jpg?_hv=2&w=900', 'Camiseta oficial de Luka Doncic.'),
(39, 'Dallas Mavericks', 'Kyrie Irving', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/dallas-mavericks/dallas-mavericks-nike-association-edition-swingman-jersey-white-kyrie-irving-unisex_ss5_p-13348839+u-a3kyg8ksirm8qrmtk37x+v-qh7mtno1tm85dlq6k8vy.jpg?_hv=2&w=900', 'Camiseta oficial de Kyrie Irving.'),
(40, 'Phoenix Suns', 'Devin Booker', 'Oeste', 99.99, 55, 'Poliéster', 'https://images.footballfanatics.com/phoenix-suns/unisex-nike-devin-booker-white-phoenix-suns-swingman-jersey-association-edition_ss5_p-4650381+pv-1+u-3d3anmm81l6bkuf814ez+v-atbcgy26kiguix7fm1et.jpg?_hv=2&w=900', 'Camiseta oficial de Devin Booker.'),
(41, 'Phoenix Suns', 'Kevin Durant', 'Oeste', 99.99, 55, 'Algodón', 'https://images.footballfanatics.com/phoenix-suns/phoenix-suns-nike-city-edition-swingman-jersey-23-purple-kevin-durant-unisex_ss5_p-200824256+pv-1+u-jdmryibzloygldgf2qmp+v-0en05rpmnyarkfc4ty1w.jpg?_hv=2&w=900', 'Camiseta oficial de Kevin Durant.'),
(42, 'Phoenix Suns', 'Bradley Beal', 'Oeste', 89.99, 50, 'Poliéster', 'https://img4.dhresource.com/webp/m/0x0/f3/albu/km/y/24/2fe936a4-68eb-4496-a04e-eeabaead5aeb.jpg', 'Camiseta oficial de Bradley Beal.'),
(43, 'Los Angeles Lakers', 'LeBron James', 'Oeste', 99.99, 60, 'Algodón', 'https://images.footballfanatics.com/los-angeles-lakers/los-angeles-lakers-nike-icon-edition-swingman-jersey-gold-lebron-james-unisex_ss5_p-13348378+pv-1+u-wge4saehytj3gviqemdh+v-fcakmbfrcuuwoxrolrdq.jpg?_hv=2&w=900', 'Camiseta oficial de LeBron James.'),
(44, 'Los Angeles Lakers', 'Anthony Davis', 'Oeste', 99.99, 55, 'Poliéster', 'https://images.footballfanatics.com/los-angeles-lakers/los-angeles-lakers-nike-icon-edition-swingman-jersey-gold-anthony-davis-unisex_ss4_p-13348385+u-z2yjasf2vnogq2c9lz2t+v-f4a2cab452264103a0971086af3cba7f.jpg?_hv=2&w=900', 'Camiseta oficial de Anthony Davis.'),
(45, 'Los Angeles Lakers', 'D\'Angelo Russell', 'Oeste', 79.99, 40, 'Poliéster', 'https://www.albaloncesto.com/image/cache/data/Product/Los%20Angeles%20Lakers%20Mens%20202223%20D\'Angelo%20Russell%201%20White%20Classics%20Swingman%20Basketball%20Jersey-500x500_0.jpg', 'Camiseta oficial de D\'Angelo Russell.'),
(46, 'New Orleans Pelicans', 'Zion Williamson', 'Oeste', 99.99, 55, 'Algodón', 'https://images.footballfanatics.com/new-orleans-pelicans/new-orleans-pelicans-nike-association-edition-swingman-jersey-white-zion-williamson-unisex_ss4_p-13348892+u-158oe31m2a9a5b1vomg7+v-6e7fa4ed118d4d00b164a9ef0c0d23d0.jpg?_hv=2&w=900', 'Camiseta oficial de Zion Williamson.'),
(47, 'New Orleans Pelicans', 'Brandon Ingram', 'Oeste', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/new-orleans-pelicans/new-orleans-pelicans-nike-association-edition-swingman-jersey-white-brandon%C2%A0ingram-unisex_ss4_p-13348894+u-3bo85o2z7m4tc8c71etg+v-b79f51ada8a346449d614cdf15cb24a4.jpg?_hv=2&w=900', 'Camiseta oficial de Brandon Ingram.'),
(48, 'Sacramento Kings', 'De\'Aaron Fox', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/sacramento-kings/sacramento-kings-jordan-brand-statement-edition-swingman-jersey-purple-deaaron-fox-unisex_ss5_p-200377994+pv-1+u-6fymqluzs5sxoiynhdx3+v-plejlzna1ytiz7zj9zh9.jpg?_hv=2&w=900', 'Camiseta oficial de De\'Aaron Fox.'),
(49, 'Sacramento Kings', 'Domantas Sabonis', 'Oeste', 89.99, 45, 'Poliéster', 'https://images.footballfanatics.com/sacramento-kings/sacramento-kings-jordan-brand-statement-edition-swingman-jersey-purple-domantas-sabonis-unisex_ss5_p-200377997+pv-1+u-i3vjqpnjo78oy4g546mo+v-as6ocmxacwhuvb1kpde0.jpg?_hv=2&w=900', 'Camiseta oficial de Domantas Sabonis.'),
(50, 'Sacramento Kings', 'Malik Monk', 'Oeste', 79.99, 40, 'Poliéster', 'https://www.micamisetanba.com/image/cache/20230703SX/camiseta-malik-monk-0-sacramento-kings-2023-gris-city-edition-1000x1000.jpg', 'Camiseta oficial de Malik Monk.'),
(51, 'Golden State Warriors', 'Stephen Curry', 'Oeste', 99.99, 60, 'Algodón', 'https://images.footballfanatics.com/golden-state-warriors/golden-state-warriors-nike-icon-edition-swingman-jersey-royal-stephen-curry-unisex_ss4_p-13349705+u-99p4oaahgsihm35bjg9r+v-c17f5924d5604352893dcbad25ba3d65.jpg?_hv=2&w=900', 'Camiseta oficial de Stephen Curry.'),
(52, 'Golden State Warriors', 'Klay Thompson', 'Oeste', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/golden-state-warriors/golden-state-warriors-nike-association-edition-swingman-jersey-white-klay-thompson-unisex_ss4_p-13348856+u-ka7n0etbyh1x70vxr2du+v-f3829f5c7c844ac7b48210ad49ed9e2a.jpg?_hv=2&w=900', 'Camiseta oficial de Klay Thompson.'),
(53, 'Golden State Warriors', 'Draymond Green', 'Oeste', 89.99, 45, 'Algodón', 'https://images.footballfanatics.com/golden-state-warriors/golden-state-warriors-nike-icon-edition-swingman-jersey-royal-draymond-green-unisex_ss4_p-13349314+u-88uow63tvlg8i131zujf+v-8effc49af534478582b7865e3aa0d6dd.jpg?_hv=2&w=900', 'Camiseta oficial de Draymond Green.'),
(54, 'Golden State Warriors', 'Chris Paul', 'Oeste', 89.99, 50, 'Poliéster', 'https://images.footballfanatics.com/golden-state-warriors/golden-state-warriors-nike-association-edition-swingman-jersey-white-chris-paul-unisex_ss5_p-200662722+pv-1+u-dwbfr2bmuqprl1dptfr6+v-goich83dvqhihelfizic.jpg?_hv=2&w=900', 'Camiseta oficial de Chris Paul.'),
(55, 'Houston Rockets', 'Jalen Green', 'Oeste', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/houston-rockets/houston-rockets-nike-icon-edition-swingman-jersey-red-jalen-green-unisex_ss4_p-13349316+u-quyu558vxqjuxh1p8q60+v-623ff7a7d458477aa476f514117fddcc.jpg?_hv=2&w=900', 'Camiseta oficial de Jalen Green.'),
(56, 'Houston Rockets', 'Alperen Sengun', 'Oeste', 79.99, 30, 'Algodón', 'https://images.footballfanatics.com/houston-rockets/houston-rockets-nike-association-edition-swingman-jersey-white-alperen-sengun-unisex_ss4_p-13348864+u-fr5wa298e4iijxzxkrxh+v-936ea9adc64949cb8ee7ad337b772a75.jpg?_hv=2&w=900', 'Camiseta oficial de Alperen Sengun.'),
(57, 'Houston Rockets', 'Dillon Brooks', 'Oeste', 79.99, 30, 'Poliéster', 'https://images.footballfanatics.com/houston-rockets/houston-rockets-nike-association-edition-swingman-jersey-white-dillon-brooks-unisex_ss5_p-200662725+pv-1+u-t5btliig2z792c0gich6+v-padfmdu2xefinvkph9ef.jpg?_hv=2&w=900', 'Camiseta oficial de Dillon Brooks.'),
(58, 'Utah Jazz', 'Lauri Markkanen', 'Oeste', 89.99, 50, 'Algodón', 'https://images.footballfanatics.com/utah-jazz/utah-jazz-nike-association-edition-swingman-jersey-white-lauri-markkanen-unisex_ss4_p-13348320+u-1gy1k7fp1xnmc5gw524b+v-3b37dcc2558b47968bea12e467f3617a.jpg?_hv=2&w=900', 'Camiseta oficial de Lauri Markkanen.'),
(59, 'Utah Jazz', 'Jordan Clarkson', 'Oeste', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/utah-jazz/utah-jazz-nike-association-edition-swingman-jersey-white-jordan-clarkson-unisex_ss4_p-13348306+u-bjan236r84784f8z47ri+v-56442aaf0036478483b0951f979f146a.jpg?_hv=2&w=900', 'Camiseta oficial de Jordan Clarkson.'),
(60, 'Memphis Grizzlies', 'Ja Morant', 'Oeste', 99.99, 55, 'Poliéster', 'https://images.footballfanatics.com/memphis-grizzlies/memphis-grizzlies-nike-icon-edition-swingman-jersey-navy-ja-morant-unisex_ss4_p-13349451+u-9osf3mdtp7bewp1segdf+v-0ff5696c55074eb991272dd211165755.jpg?_hv=2&w=900', 'Camiseta oficial de Ja Morant.'),
(61, 'San Antonio Spurs', 'Victor Wembanyama', 'Oeste', 99.99, 55, 'Algodón', 'https://images.footballfanatics.com/san-antonio-spurs/san-antonio-spurs-nike-icon-edition-swingman-jersey-2023-nba-draft-first-round-pick-black-victor-wembanyama-unisex_ss5_p-200340709+pv-1+u-voqsjqqzupudg9acihpb+v-muix08gnjbqhzoy6u92y.jpg?_hv=2&w=900', 'Camiseta oficial de Victor Wembanyama.'),
(62, 'Portland Trail Blazers', 'Scoot Henderson', 'Oeste', 79.99, 35, 'Poliéster', 'https://images.footballfanatics.com/portland-trail-blazers/portland-trail-blazers-nike-icon-swingman-jersey-black-scoot-henderson-youth_ss5_p-201084161+pv-1+u-609sbeo8jmertq9iw2sf+v-goczianh6enqpdqgbigt.jpg?_hv=2&w=900', 'Camiseta oficial de Scoot Henderson.');

SELECT * FROM shirts;
