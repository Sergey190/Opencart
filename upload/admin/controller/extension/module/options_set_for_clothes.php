<?php

class ControllerExtensionModuleOptionsSetForClothes extends Controller
{

    public function install()
    {
        $this->db->query("INSERT INTO `" . DB_PREFIX . "option` (`option_id`, `type`, `sort_order`) VALUES
        (1444, 'select', 0),
        (1333, 'image', 0);");

        $this->db->query("INSERT INTO `" . DB_PREFIX . "option_description` (`option_id`, `language_id`, `name`) VALUES
        (1333, 1, 'Цвет'),
        (1444, 1, 'Размер');");

        $this->db->query("INSERT INTO `" . DB_PREFIX . "option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
        (2292, 1333, 'catalog/colors/lavandovyj.png', 0),
        (2253, 1333, 'catalog/colors/bordovyj.png', 0),
        (2271, 1333, 'catalog/colors/zolotistyj.png', 0),
        (2258, 1333, 'catalog/colors/fkusiya.png', 0),
        (2270, 1333, 'catalog/colors/yantarnyj.png', 0),
        (2286, 1333, 'catalog/colors/temno-biryuzovyj.png', 0),
        (2262, 1333, 'catalog/colors/oranzhevyj.png', 0),
        (2287, 1333, 'catalog/colors/myatnyj.png', 0),
        (2288, 1333, 'catalog/colors/temno-fioletovyj.png', 0),
        (2293, 1333, 'catalog/colors/sirenevyj.png', 0),
        (2261, 1333, 'catalog/colors/temno-oranzhevyj.png', 0),
        (2257, 1333, 'catalog/colors/rozovyj.png', 0),
        (2255, 1333, 'catalog/colors/krasnyj.png', 0),
        (2294, 1333, 'catalog/colors/svetlo-sirenevyj.png', 0),
        (2285, 1333, 'catalog/colors/biryuzovyj.png', 0),
        (2295, 1333, 'catalog/colors/chernyj.png', 0),
        (2296, 1333, 'catalog/colors/temno-seryj.png', 0),
        (2259, 1333, 'catalog/colors/svetlo-rozovyj.png', 0),
        (2269, 1333, 'catalog/colors/zheltyj.png', 0),
        (2290, 1333, 'catalog/colors/fioletovyj.png', 0),
        (2254, 1333, 'catalog/colors/karminovyj.png', 0),
        (2289, 1333, 'catalog/colors/purpurnyj.png', 0),
        (2275, 1333, 'catalog/colors/izumrudnyj.png', 0),
        (2282, 1333, 'catalog/colors/vasilkovyj.png', 0),
        (2283, 1333, 'catalog/colors/sinij.png', 0),
        (2276, 1333, 'catalog/colors/zelenyj.png', 0),
        (2277, 1333, 'catalog/colors/travyanoj.png', 0),
        (2284, 1333, 'catalog/colors/goluboj.png', 0),
        (2297, 1333, 'catalog/colors/serebristyj.png', 0),
        (2299, 1333, 'catalog/colors/ametisovyj.png', 0),
        (2272, 1333, 'catalog/colors/svetlo-zheltyj.png', 0),
        (2278, 1333, 'catalog/colors/olivkovyj.png', 0),
        (22101, 1333, 'catalog/colors/svetlo-biryuzovyj.png', 0),
        (2279, 1333, 'catalog/colors/salatovyj.png', 0),
        (2274, 1333, 'catalog/colors/temno-zelenyj.png', 0),
        (2273, 1333, 'catalog/colors/kremovyj.png', 0),
        (2265, 1333, 'catalog/colors/perskiovyj.png', 0),
        (2260, 1333, 'catalog/colors/korichnevyj.png', 0),
        (2281, 1333, 'catalog/colors/temno-sinij.png', 0),
        (2267, 1333, 'catalog/colors/kakao.png', 0),
        (2268, 1333, 'catalog/colors/haki.png', 0),
        (2298, 1333, 'catalog/colors/seryj.png', 0),
        (2266, 1333, 'catalog/colors/bezhevyj.png', 0),
        (22100, 1333, 'catalog/colors/lilovyj.png', 0),
        (2280, 1333, 'catalog/colors/fistashkovyj.png', 0),
        (2264, 1333, 'catalog/colors/svetlo-oranzhevyj.png', 0),
		(2291, 1333, 'catalog/colors/indigo.png', 0),
        (2263, 1333, 'catalog/colors/korallovyj.png', 0),
        (2256, 1333, 'catalog/colors/vishnevyj.png', 0),
        (22120, 1444, '', 0),
        (22103, 1444, '', 0),
        (22104, 1444, '', 0),
        (22105, 1444, '', 0),
        (22106, 1444, '', 0),
        (22107, 1444, '', 0),
        (22108, 1444, '', 0),
        (22109, 1444, '', 0),
        (22110, 1444, '', 0),
        (22111, 1444, '', 0),
        (22112, 1444, '', 0),
        (22113, 1444, '', 0),
        (22114, 1444, '', 0),
        (22115, 1444, '', 0),
        (22116, 1444, '', 0),
        (22117, 1444, '', 0),
        (22118, 1444, '', 0),
        (22119, 1444, '', 0),
        (22102, 1444, '', 0);");


        $this->db->query("INSERT INTO `" . DB_PREFIX . "option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
        (2256, 1, 1333, 'вишневый'),
        (2263, 1, 1333, 'коралловый'),
        (2292, 1, 1333, 'лавандовый'),
        (2253, 1, 1333, 'бордовый'),
        (2271, 1, 1333, 'золотистый'),
        (2258, 1, 1333, 'фкусия'),
        (2270, 1, 1333, 'янтарный'),
        (2286, 1, 1333, 'темно-бирюзовый'),
        (2262, 1, 1333, 'оранжевый'),
        (2287, 1, 1333, 'мятный'),
        (2288, 1, 1333, 'темно-фиолетовый'),
        (2293, 1, 1333, 'сиреневый'),
        (2257, 1, 1333, 'розовый'),
        (2261, 1, 1333, 'темно-оранжевый'),
        (2255, 1, 1333, 'красный'),
        (2294, 1, 1333, 'светло-сиреневый'),
        (2296, 1, 1333, 'темно-серый'),
        (2295, 1, 1333, 'черный'),
        (2285, 1, 1333, 'бирюзовый'),
        (2259, 1, 1333, 'светло-розовый'),
        (2269, 1, 1333, 'желтый'),
        (2254, 1, 1333, 'карминовый'),
        (2290, 1, 1333, 'фиолетовый'),
        (2289, 1, 1333, 'пурпурный'),
        (2275, 1, 1333, 'изумрудный'),
        (2282, 1, 1333, 'васильковый'),
        (2283, 1, 1333, 'синий'),
        (2276, 1, 1333, 'зеленый'),
        (2277, 1, 1333, 'травяной'),
        (2284, 1, 1333, 'голубой'),
        (2297, 1, 1333, 'серебристый'),
        (2299, 1, 1333, 'аметисовый'),
        (2272, 1, 1333, 'светло-желтый'),
        (2278, 1, 1333, 'оливковый'),
        (22101, 1, 1333, 'светло-бирюзовый'),
        (2279, 1, 1333, 'салатовый'),
        (2274, 1, 1333, 'темно-зеленый'),
        (2273, 1, 1333, 'кремовый'),
        (2265, 1, 1333, 'перскиовый'),
        (2281, 1, 1333, 'темно-синий'),
        (2260, 1, 1333, 'коричневый'),
        (2267, 1, 1333, 'какао'),
        (2268, 1, 1333, 'хаки'),
        (2298, 1, 1333, 'серый'),
        (2266, 1, 1333, 'бежевый'),
        (2280, 1, 1333, 'фисташковый'),
        (22100, 1, 1333, 'лиловый'),
		(2264, 1, 1333, 'светло-оранжевый'),
        (2291, 1, 1333, 'индиго'),
        (22103, 1, 1444, 'S'),
        (22104, 1, 1444, 'M'),
        (22105, 1, 1444, 'L'),
        (22106, 1, 1444, 'XL'),
        (22107, 1, 1444, 'XXL'),
        (22108, 1, 1444, 'XXXL'),
        (22109, 1, 1444, 'BXL'),
		(22102, 1, 1444, 'XS'),
        (22110, 1, 1444, 'BXXL'),
        (22111, 1, 1444, 'BXXXL'),
        (22112, 1, 1444, '44'),
        (22113, 1, 1444, '46'),
        (22114, 1, 1444, '48'),
        (22115, 1, 1444, '50'),
        (22116, 1, 1444, '52'),
        (22117, 1, 1444, '54'),
        (22118, 1, 1444, '56'),
        (22119, 1, 1444, '58'),
		(22120, 1, 1444, '60');");
    }

    public function index() {
		
	}

}
