# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Fyp.Repo.insert!(%Fyp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

data =
[
  %{
    birth: "Июл 2020",
    breed: "метис",
    description: "Общительный, ласковый песик.",
    gender: "мальчик",
    height: "50 см",
    name: "Демьян",
    photos: ["/media/photologue/photos/VTzN9xCbeWg.jpg",
      "/media/photologue/photos/mQDrbrDU_z0.jpg",
      "/media/photologue/photos/_ncHhW9vlX4.jpg",
      "/media/photologue/photos/jpMWEsPU9VI.jpg",
      "/media/photologue/photos/KHqFllxPeAk.jpg",
      "/media/photologue/photos/xoOK2tMRMOU.jpg"]
  },
  %{
    birth: "Дек 2019",
    breed: "Метис легавой",
    description: " ",
    gender: "мальчик",
    height: "60 см",
    name: "Урал",
    photos: ["/media/photologue/photos/8PiwXwuBvxc.jpg",
      "/media/photologue/photos/1917dMtps7U.jpg",
      "/media/photologue/photos/rlFic5r_3u4.jpg",
      "/media/photologue/photos/1HrIdFPsoPU.jpg",
      "/media/photologue/photos/RmFRDDEzLV4.jpg",
      "/media/photologue/photos/SZudyDA1EO8.jpg"]
  },
  %{
    birth: "Дек 2019",
    breed: "Метис легавой",
    description: "Некрупная милая собачка.",
    gender: "девочка",
    height: "50 см",
    name: "Умчи",
    photos: ["/media/photologue/photos/5uYo8q25Juc.jpg",
      "/media/photologue/photos/0v5HQ86wUPk.jpg",
      "/media/photologue/photos/8ptLHjbqnHU.jpg",
      "/media/photologue/photos/04aKeSo6__w.jpg",
      "/media/photologue/photos/5N6fs4FRR7E.jpg",
      "/media/photologue/photos/R63qgwsn_h4.jpg",
      "/media/photologue/photos/WuQRzTWItx8.jpg"]
  },
  %{
    birth: "Дек 2019",
    breed: "метис",
    description: "Осторожный ласковый пес",
    gender: "мальчик",
    height: "65 см",
    name: "Джамп",
    photos: ["/media/photologue/photos/hXVrhCEl3-M.jpg",
      "/media/photologue/photos/IbmZu-iiXOU.jpg",
      "/media/photologue/photos/kpVoxCcedhw.jpg",
      "/media/photologue/photos/0TzJe3RmG3w.jpg",
      "/media/photologue/photos/-WHTFWuOjsU.jpg"]
  },
  %{
    birth: "Сен 2019",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "60 см",
    name: "Даго",
    photos: ["/media/photologue/photos/2020-01-07%2015.43.00.jpg",
      "/media/photologue/photos/zNG0JXKtqIo.jpg",
      "/media/photologue/photos/EKbAxyFiiiM.jpg",
      "/media/photologue/photos/ylOSddBvjXk.jpg",
      "/media/photologue/photos/s-hljyLIWXA.jpg"]
  },
  %{
    birth: "Сен 2019",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "60 см",
    name: "Дайер",
    photos: ["/media/photologue/photos/2020-01-07%2015.37.19.jpg",
      "/media/photologue/photos/dGPn50pQ-lU.jpg",
      "/media/photologue/photos/HFdcYL1LU6s.jpg",
      "/media/photologue/photos/JHmlyYnLtgw.jpg",
      "/media/photologue/photos/nZU4NQlVnVo.jpg",
      "/media/photologue/photos/7p67VtTc3OA.jpg",
      "/media/photologue/photos/v5k2LSCDU-o.jpg",
      "/media/photologue/photos/Q7Xu6Jzi_HQ.jpg",
      "/media/photologue/photos/IYglABvqhS0.jpg"]
  },
  %{
    birth: "Июл 2019",
    breed: "метис",
    description: "Ласковая активная собака",
    gender: "девочка",
    height: "60 см",
    name: "Пипа",
    photos: ["/media/photologue/photos/Iij3Ncudsto.jpg",
      "/media/photologue/photos/QYrDjXmdKhs.jpg",
      "/media/photologue/photos/bBmuPZaqeas.jpg",
      "/media/photologue/photos/NMxlvUfCX3w.jpg",
      "/media/photologue/photos/CpNNy-67COE.jpg",
      "/media/photologue/photos/BJ9yWxz_zD0.jpg"]
  },
  %{
    birth: "Мар 2019",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "65 см",
    name: "Альфия",
    photos: ["/media/photologue/photos/wK28RyKcLMA.jpg",
      "/media/photologue/photos/5I7vhrE-vdc.jpg",
      "/media/photologue/photos/-kts-LkhVgU.jpg",
      "/media/photologue/photos/7udzg2l7VHE.jpg",
      "/media/photologue/photos/Fkym4-8uaVg.jpg",
      "/media/photologue/photos/PIeE9RYRNVg.jpg",
      "/media/photologue/photos/W0706Kdnr3Q.jpg",
      "/media/photologue/photos/7zWyvcvKsN.jpg",
      "/media/photologue/photos/AnevYSaQQRU.jpg"]
  },
  %{
    birth: "Мар 2019",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "65 см",
    name: "Альпина",
    photos: ["/media/photologue/photos/0K-qZUTS_KE_iCHbZDO.jpg",
      "/media/photologue/photos/B6UZsDDVN2E%20(1).jpg",
      "/media/photologue/photos/xS-N93v9cnU.jpg",
      "/media/photologue/photos/i8iumou8OVg.jpg",
      "/media/photologue/photos/6RD5JGBE6Sk.jpg",
      "/media/photologue/photos/VhyaextO4to.jpg"]
  },
  %{
    birth: "Мар 2019",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "65 см",
    name: "Альяна",
    photos: ["/media/photologue/photos/wPEVOrUXuOM.jpg",
      "/media/photologue/photos/2qM4etItYPw.jpg",
      "/media/photologue/photos/9_iHSAMUNMs.jpg",
      "/media/photologue/photos/cSZoIdC-qSY.jpg",
      "/media/photologue/photos/IQwbV3Y1dB4.jpg"]
  },
  %{
    birth: "Ноя 2018",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "60 см",
    name: "Кусто",
    photos: ["/media/photologue/photos/jyB2z0u8sZQ.jpg",
      "/media/photologue/photos/1nRsNNmyyDo.jpg",
      "/media/photologue/photos/U-iGR3T2a6I.jpg"]
  },
  %{
    birth: "Окт 2018",
    breed: "метис",
    description: "Общительный активный пес.",
    gender: "мальчик",
    height: "60 см",
    name: "Балт",
    photos: ["/media/photologue/photos/ACs1UqN1hSg.jpg",
      "/media/photologue/photos/Qj-cOWBpb4c.jpg",
      "/media/photologue/photos/Yna1feJavcY.jpg",
      "/media/photologue/photos/_DjF5LcI89E.jpg",
      "/media/photologue/photos/r_NTVjyfGTg.jpg",
      "/media/photologue/photos/HvGhfNN0uU0.jpg",
      "/media/photologue/photos/tfrwPHwc6cs.jpg",
      "/media/photologue/photos/pEjBAQU8eH4.jpg",
      "/media/photologue/photos/vTJ9fhsoSc8.jpg",
      "/media/photologue/photos/Unj8owohJ4U.jpg",
      "/media/photologue/photos/w8ohOqvM2wU.jpg",
      "/media/photologue/photos/Z3jv96Fv80Y.jpg"]
  },
  %{
    birth: "Авг 2018",
    breed: "метис",
    description: "Дружелюбная и активная собака. Привита, не стерилизована. Кушает сухой корм, гуляет на поводке.",
    gender: "девочка",
    height: "60 см",
    name: "Мурена",
    photos: []
  },
  %{
    birth: "Май 2018",
    breed: "метис лайки",
    description: "Махито был найден с обрывком поводка возле приюта. Забрали на территорию, думали местный пес потерялся, но время идет, а бывшие владельцы так и не объявились. Ищем теперь новую семью домашней в прошлом собаке. Махито некрупный малый, компактный, крадратной формы. Знает город, хорошо гуляет на поводке, не боится улицы.  Прекрасно будет гулять по паркам и улицам города, не создавая проблем. Отлично уживается с собаками-девочками, неизвестно знаком ли с кошками, можем проверить при Вас непосредственно в приюте. Знаком с детьми, станет прекрасным другом для всей семьи. Привит, стерилизован, кушает сухой корм. Очень приветливый и дружелюбный парень. ",
    gender: "мальчик",
    height: "50 см",
    name: "Махито",
    photos: ["/media/photologue/photos/9gr1fIZIg6c.jpg",
      "/media/photologue/photos/Pp8iZ8KVSJg.jpg",
      "/media/photologue/photos/bmYDCAVA1B4.jpg",
      "/media/photologue/photos/AYIjkCJJ9uU.jpg",
      "/media/photologue/photos/wXJkMOdXHW4.jpg",
      "/media/photologue/photos/eXOGa5GyF-A.jpg",
      "/media/photologue/photos/gRAQ2HCd4AM_YHtIX0C.jpg",
      "/media/photologue/photos/wgwvTYkyHQ0.jpg",
      "/media/photologue/photos/tPLmwbooQcA.jpg"]
  },
  %{
    birth: "Фев 2018",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "67 см",
    name: "Макей",
    photos: ["/media/photologue/photos/DSC_3951.JPG",
      "/media/photologue/photos/DSC_5081.JPG",
      "/media/photologue/photos/LV5PaJ-sPJI.jpg",
      "/media/photologue/photos/2020-01-11%2015.23.30.jpg",
      "/media/photologue/photos/2020-01-11%2015.25.16.jpg",
      "/media/photologue/photos/2020-01-11%2015.16.07.jpg",
      "/media/photologue/photos/2020-01-11%2015.14.28.jpg",
      "/media/photologue/photos/2020-01-11%2015.15.12.jpg",
      "/media/photologue/photos/3GE0rSjBrfw.jpg"]
  },
  %{
    birth: "Фев 2018",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "67 см",
    name: "Морфей",
    photos: ["/media/photologue/photos/DSC_3973.JPG",
      "/media/photologue/photos/5d7fnsLE2V4.jpg",
      "/media/photologue/photos/L7kfHuMdfLQ.jpg",
      "/media/photologue/photos/MO0DrYrgrOE.jpg",
      "/media/photologue/photos/aVhMNrzM55U.jpg",
      "/media/photologue/photos/2AMiSP70z8s.jpg",
      "/media/photologue/photos/aTUS2TxCrTU.jpg",
      "/media/photologue/photos/e5aBr2hPjUQ.jpg",
      "/media/photologue/photos/rDV8kMBooyU.jpg",
      "/media/photologue/photos/CzeSSoub1ro.jpg",
      "/media/photologue/photos/2QP3YnVspvc.jpg",
      "/media/photologue/photos/KhwWbSEInnY.jpg"]
  },
  %{
    birth: "Фев 2018",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "67 см",
    name: "Минелай",
    photos: ["/media/photologue/photos/DSC_4011.JPG",
      "/media/photologue/photos/xM1SMAJwkDg.jpg",
      "/media/photologue/photos/VvnATC-sAVQ%20(1).jpg",
      "/media/photologue/photos/DSC_5986.JPG",
      "/media/photologue/photos/DSC_6031.JPG",
      "/media/photologue/photos/DSC_6036.JPG",
      "/media/photologue/photos/DSC_6020.JPG"]
  },
  %{
    birth: "Авг 2017",
    breed: "метис",
    description: "Малышке Адель 3 года. \nНекрупная собачка, 50 см в холке, похожа внешне на лаечку. \n\nЭнергичная, веселая и самодостаточная по характеру Потеряна предыдущими хозяевами больше двух лет назад, ждать больше некого, пора искать новый дом. Кинолог помогает Адельке стать лучше, послушнее и умнее. Тренировки собачка принимает на ура! Любит разнообразие в обучении и очень не хочет снова возвращаться в вольер. Чем ближе к приюту, тем сильнее Адель упирается. С человеком ей хорошо, на поводке привольно, а в вольере скучно, хоть и есть там сосед для игр. Главная собака среди детей, обожает с ними общаться и выполнять команды. Угощается, готова быть лучшим другом. Нужен дом девчуле и она вас ждет! ",
    gender: "девочка",
    height: "50 см",
    name: "Адель",
    photos: ["/media/photologue/photos/CNkGjnnJ0bQ.jpg",
      "/media/photologue/photos/wI1Srcs2bSo.jpg",
      "/media/photologue/photos/7q7YhArenEQ.jpg",
      "/media/photologue/photos/DSC_4694.JPG",
      "/media/photologue/photos/DSC_4716.JPG",
      "/media/photologue/photos/DSC_4684.JPG",
      "/media/photologue/photos/SAyHw93qz90.jpg",
      "/media/photologue/photos/szgic7DKfaM.jpg",
      "/media/photologue/photos/jRjU304qKLk.jpg",
      "/media/photologue/photos/YJLfgbrxWKY.jpg",
      "/media/photologue/photos/hdLYgIbSdzQ.jpg",
      "/media/photologue/photos/szmfWj9gV1Q.jpg"]
  },
  %{
    birth: "Май 2015",
    breed: "метис",
    description: "Дружелюбная собака, побаивается мужчин.",
    gender: "девочка",
    height: "60 см",
    name: "Мальва",
    photos: ["/media/photologue/photos/76VNxwvVytc.jpg",
      "/media/photologue/photos/vaOHjunZnbA.jpg",
      "/media/photologue/photos/86GWDutDA6g.jpg",
      "/media/photologue/photos/kF7q-la2yMY.jpg",
      "/media/photologue/photos/b-AXw2unb2k.jpg",
      "/media/photologue/photos/Bk0U_-yjEuE.jpg"]
  },
  %{
    birth: "Апр 2014",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "50 см",
    name: "Фергус",
    photos: ["/media/photologue/photos/MqMLQlykXN0.jpg",
      "/media/photologue/photos/4_eIH1c-phA.jpg",
      "/media/photologue/photos/ghP7Ud6gG3Q.jpg",
      "/media/photologue/photos/8fYlRO_1-Uo.jpg",
      "/media/photologue/photos/UU1pFc4DWso.jpg",
      "/media/photologue/photos/Y0c-LlRVhjk.jpg",
      "/media/photologue/photos/aWj4YJ2AKUA.jpg",
      "/media/photologue/photos/lkrYWr5qApA.jpg",
      "/media/photologue/photos/yNZCrpQ6kV0.jpg"]
  },
  %{
    birth: "Фев 2014",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "50 см",
    name: "Фиджи",
    photos: ["/media/photologue/photos/ka7DzKK37mQ.jpg",
      "/media/photologue/photos/IlkADc7lvOI.jpg",
      "/media/photologue/photos/oA02x38ZoBo.jpg",
      "/media/photologue/photos/DSC_1071.JPG",
      "/media/photologue/photos/FMb3hQZVCa8.jpg"]
  },
  %{
    birth: "Мар 2013",
    breed: "метис овчарки",
    description: " ",
    gender: "девочка",
    height: "60 см",
    name: "Феня",
    photos: ["/media/photologue/photos/aUWhU2Y3kiM.jpg",
      "/media/photologue/photos/mfCsi1e3pUk.jpg",
      "/media/photologue/photos/SkpQIY-1L6c.jpg",
      "/media/photologue/photos/em7AUGQ-4b0.jpg",
      "/media/photologue/photos/bt4qQwaaGvU.jpg",
      "/media/photologue/photos/TsW8ZInhv_M.jpg"]
  },
  %{
    birth: "Янв 2013",
    breed: "метис овчарки",
    description: " ",
    gender: "мальчик",
    height: "60 см",
    name: "Лютик",
    photos: ["/media/photologue/photos/17Jk-2ICWCo.jpg",
      "/media/photologue/photos/Barijg7IdR0.jpg",
      "/media/photologue/photos/tF91do16m4Q.jpg",
      "/media/photologue/photos/knlaJ2lPYfA.jpg",
      "/media/photologue/photos/l9iTp7bOYa0.jpg",
      "/media/photologue/photos/jBamQ9XIAXA.jpg",
      "/media/photologue/photos/fSwd1ttEhGw.jpg",
      "/media/photologue/photos/waua9FAGJtc.jpg"]
  },
  %{
    birth: "Ноя 2012",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "55 см",
    name: "Умка",
    photos: ["/media/photologue/photos/GcI8111k0Ns.jpg",
      "/media/photologue/photos/cw2KdLnS5Sc.jpg",
      "/media/photologue/photos/I_WDQQxRJsA.jpg",
      "/media/photologue/photos/84WAKBzc9xc.jpg",
      "/media/photologue/photos/k8jg3Pe7zrI.jpg",
      "/media/photologue/photos/w0UoCV6m0CE.jpg",
      "/media/photologue/photos/O-vcN-ZWzsU.jpg",
      "/media/photologue/photos/BnP5x80xQgQ.jpg",
      "/media/photologue/photos/x_iZ-XDBeQI.jpg"]
  },
  %{
    birth: "Окт 2012",
    breed: "метис",
    description: " ",
    gender: "девочка",
    height: "60 см",
    name: "Клякса",
    photos: ["/media/photologue/photos/_cp0z0h4sl42usrd9c8yzp7ntywg_b.jpg",
      "/media/photologue/photos/a3PCMIjWJiQ.jpg",
      "/media/photologue/photos/oI8FMMl_sqc.jpg",
      "/media/photologue/photos/DSC_8411_9wQXJcQ.jpg",
      "/media/photologue/photos/WjoO1K3Kwz8.jpg",
      "/media/photologue/photos/6-w0abHuTqQ.jpg",
      "/media/photologue/photos/2La7D9pQOtg.jpg",
      "/media/photologue/photos/jwIeoFT812E.jpg",
      "/media/photologue/photos/nHalF39NKes.jpg"]
  },
  %{
    birth: "Июл 2012",
    breed: "метис",
    description: " ",
    gender: "мальчик",
    height: "57 см",
    name: "Фокс",
    photos: ["/media/photologue/photos/0VnO6yVfHJw.jpg",
      "/media/photologue/photos/LBqFHiYS-Ew.jpg",
      "/media/photologue/photos/HQblkyFZ8Ms.jpg",
      "/media/photologue/photos/gA6z-Q4ffXw.jpg",
      "/media/photologue/photos/9u31ymwXCAQ.jpg",
      "/media/photologue/photos/34o7bT-ODiY.jpg"]
  },
  %{
    birth: "Янв 2012",
    breed: "метис терьера",
    description: " ",
    gender: "мальчик",
    height: "70 см",
    name: "Кент",
    photos: ["/media/photologue/photos/BkdhASnbD0A.jpg",
      "/media/photologue/photos/1TN3-EVGzqU.jpg",
      "/media/photologue/photos/IRSuegu8qzs.jpg",
      "/media/photologue/photos/P_YU9vGMyEk.jpg",
      "/media/photologue/photos/z-3M9BHhf_M.jpg",
      "/media/photologue/photos/ZLoLEFWc9lc.jpg",
      "/media/photologue/photos/Hq6dfEAtIqk.jpg",
      "/media/photologue/photos/rPN2oUO6WRQ.jpg",
      "/media/photologue/photos/CsM5b86C4Ls.jpg"]
  }
]

data
|> Enum.each(fn pet -> Fyp.Pets.create() end)