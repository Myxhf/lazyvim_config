local M = {}
M.header = {
  --   [[]],
  --   [[                                             ,--,  ,.-.      ]],
  --   [[               ,                   \,       '-,-`,'-.' | ._  ]],
  --   [[              /|           \    ,   |\         }  )/  / `-,',]],
  --   [[              [ ,          |\  /|   | |        /  \|  |/`  ,`]],
  --   [[              | |       ,.`  `,` `, | |  _,...(   (      .', ]],
  --   [[              \  \  __ ,-` `  ,  , `/ |,'      Y     (   /_L\]],
  --   [[               \  \_\,``,   ` , ,  /  |         )         _,/]],
  --   [[                \  '  `  ,_ _`_,-,<._.<        /         /   ]],
  --   [[                 ', `>.,`  `  `   ,., |_      |         /    ]],
  --   [[                   \/`  `,   `   ,`  | /__,.-`    _,   `\    ]],
  --   [[               -,-..\  _  \  `  /  ,  / `._) _,-\`       \   ]],
  --   [[                \_,,.) /\    ` /  / ) (-,, ``    ,        |  ]],
  --   [[               ,` )  | \_\       '-`  |  `(               \  ]],
  --   [[              /  /```(   , --, ,' \   |`<`    ,            | ]],
  --   [[             /  /_,--`\   <\  V /> ,` )<_/)  | \      _____) ]],
  --   [[       ,-, ,`   `   (_,\ \    |   /) / __/  /   `----`       ]],
  --   [[      (-, \           ) \ ('_.-._)/ /,`    /                 ]],
  --   [[      | /  `          `/ \\ V   V, /`     /                  ]],
  --   [[   ,--\(        ,     <_/`\\     ||      /                   ]],
  --   [[  (   ,``-     \/|         \-A.A-`|     /                    ]],
  --   [[ ,>,_ )_,..(    )\          -,,_-`  _--`                     ]],
  --   [[(_ \|`   _,/_  /  \_            ,--`                         ]],
  --   [[ \( `   <.,../`     `-.._   _,-`                             ]],
  --   [[]],
  --   [[]],
  --
  -- [[]],
  -- [[////////////////////////////////////////////////////////////////////]],
  -- [[//                          _ooOoo_                               //]],
  -- [[//                         o8888888o                              //]],
  -- [[//                         88" . "88                              //]],
  -- [[//                         (| ^_^ |)                              //]],
  -- [[//                         O\  =  /O                              //]],
  -- [[//                      ____/`---'\____                           //]],
  -- [[//                    .'  \\|     |//  `.                         //]],
  -- [[//                   /  \\|||  :  |||//  \                        //]],
  -- [[//                  /  _||||| -:- |||||-  \                       //]],
  -- [[//                  |   | \\\  -  /// |   |                       //]],
  -- [[//                  | \_|  ''\---/''  |   |                       //]],
  -- [[//                  \  .-\__  `-`  ___/-. /                       //]],
  -- [[//                ___`. .'  /--.--\  `. . ___                     //]],
  -- [[//              ."" '<  `.___\_<|>_/___.'  >'"".                  //]],
  -- [[//            | | :  `- \`.;`\ _ /`;.`/ - ` : | |                 //]],
  -- [[//            \  \ `-.   \_ __\ /__ _/   .-` /  /                 //]],
  -- [[//      ========`-.____`-.___\_____/___.-`____.-'========         //]],
  -- [[//                           `=---='                              //]],
  -- [[//      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        //]],
  -- [[//            佛祖保佑       永不宕机     永无BUG                 //]],
  -- [[////////////////////////////////////////////////////////////////////]],
  -- [[]],
  -- [[]],
  -- [[]],
  --
  --
  -- [[]],
  -- [[                                                                                                                               ]],
  -- [[          @@                                                           @@                                                      ]],
  -- [[       @@@@@                                                        @@@@@                                                      ]],
  -- [[     @@@@@@@                                                     @@@@@@@@                                                      ]],
  -- [[      @@@@@@                                 @@@@@                @@@@@@@                                 @@@@@                ]],
  -- [[      @@@@@@                                  @@@@                @@@@@@@                                  @@@@                ]],
  -- [[      @@@@@@                                  @@@@                 @@@@@@                                  @@@@                ]],
  -- [[       @@@@@                                  @@@@@                @@@@@@                                  @@@@                ]],
  -- [[       @@@@@                                   @@@@                @@@@@@                                  @@@@                ]],
  -- [[       @@@@@@                       @@  @@     @@@@     @@  @@     @@@@@@                       @@  @@      @@@     @@  @@     ]],
  -- [[        @@@@@                        @@  @@    @@@@     @@  @@      @@@@@                        @@  @@     @@@@    @@  @@     ]],
  -- [[        @@@@@                        @@  @@     @@@     @@  @@      @@@@@                        @@  @@     @@@@    @@  @@     ]],
  -- [[        @@@@@                                   @@@                  @@@@@                                  @@@@               ]],
  -- [[        @@@@@                                   @@@                  @@@@@                                   @@@               ]],
  -- [[         @@@@                          @@@@@    @@@@     @@@@@       @@@@@                         @@@@@     @@@      @@@@@    ]],
  -- [[         @@@@                          @@@@@    @@@@     @@@@@        @@@@                         @@@@@     @@@@     @@@@@    ]],
  -- [[         @@@@@                         @@@@@     @@@     @@@@@        @@@@                          @@@@@     @@@     @@@@@    ]],
  -- [[         @@@@@@@@@@@@@@@@@@@            @@@@     @@@     @@@@@        @@@@@@@@@@@@@@@@@@            @@@@@     @@@     @@@@@    ]],
  -- [[         @@@@@@@@@@@@@@@@@@@@@@@@@      @@@@@    @@@      @@@@        @@@@@@@@@@@@@@@@@@@@@@@@       @@@@     @@@      @@@@    ]],
  -- [[          @@@@@@@@         @@@@@@@@@@    @@@@    @@@@     @@@@        @@@@@@@@@        @@@@@@@@@@    @@@@     @@@      @@@@    ]],
  -- [[          @@@@@@@@           @@@@@@@@    @@@@     @@@     @@@@        @@@@@@@@@          @@@@@@@@@   @@@@     @@@      @@@@    ]],
  -- [[          @@@@@@@@         @@@@@@@@@     @@@@@    @@@     @@@@         @@@@@@@@        @@@@@@@@@@     @@@     @@@      @@@@    ]],
  -- [[          @@@@@@@@      @@@@@@@@@@        @@@@    @@@     @@@@         @@@@@@@@      @@@@@@@@@        @@@@             @@@@    ]],
  -- [[           @@@@@@@    @@@@@@@@                            @@@@         @@@@@@@@   @@@@@@@@@                            @@@@    ]],
  -- [[           @@@@@@@@@@@@@@                                               @@@@@@@@@@@@@                                          ]],
  -- [[                                                                                                                               ]],
  -- [[                                                                                                                               ]],
  -- [[]],
  -- [[]],
  -- [[]],
  --
  -- [[]],
  -- [[                                         ╔╔╣║▀▓███▓▓█▄▄▄▄                                     ]],
  -- [[                                        ▄█▒▒░▓█████████████▄                                  ]],
  -- [[                                  ▄████████▓▓▓████████████▓███▄                               ]],
  -- [[                                  ████████▀▀▀▓██▓██▓█▓██████▓▓▒█                              ]],
  -- [[                                  ╚▀██▓╔▄████╔  ╣████████████████                             ]],
  -- [[                                     ▓▓╝▓███▄▄╔ └▀▓████▓▓████████▒                            ]],
  -- [[                                    ║▀▀ ╚▓▓▄░       ▓████▓▓▓████▓▓                            ]],
  -- [[                                  ┌╣ ╔▄╢▄           ▓█████▓▓▓█████▄                           ]],
  -- [[                                  │▓███▀▓█           └▒▓██▓▓██████                            ]],
  -- [[                                  ║█▓░  ║██▄         ▓▒██▓▀▓█████                             ]],
  -- [[                                  └▓▓▓▓▀███          ▄░╚▓██████▀                              ]],
  -- [[                                   ▓██▀╡ ▓█▄    ╔    ║████▓█▀                                 ]],
  -- [[                                   ▓█    ▄▓▓█████  ╔██▓█▀╔▄█                                  ]],
  -- [[                                   ╚▀██████████▓███████▓▓▓▓▓                                  ]],
  -- [[                                     ║██████████▓▓▓▓▓▓▓█▓▓██▒                                 ]],
  -- [[                                     ▄▓█▓▀▓▒▒▒▒▒▒▓█▓████▀▀▀                                   ]],
  -- [[                                   ║▀▄█▒╣╣▒░▒▒╣░▄█▀▀                                          ]],
  -- [[                                  ╣░▓██░░░▄▓█▀▀                                               ]],
  -- [[                                  ╝▀ ▓█▀▀▀                                                    ]],
  -- [[                    ▄                                                       ╔▄  ╔██           ]],
  -- [[                  ╔█▀      ▄▄╔███▀     ╔▒      ╔╔▄▒     ╔██╔█╔▄╝    ▄█▓   ▄ ▓█╔▄▓▀            ]],
  -- [[                  ▓█       ░╔░▄▒▀▀    ▄▀╝     █ ███  ╔▄▀▓ ▄▓▄▀    ╔██▄▄  ║█║▓▒ ▒              ]],
  -- [[                 ║█▄██    ║█▓╚▀▄█  ╔╖▓ ▄▀    ║██▓█─ ╣▀▄█▀║▓▀    ┌▀▀║█▓█  ╣█▀ ▄██              ]],
  -- [[                 ║██▀░    ║██ ║▓█   ▄▒▒█      ╚▄▀  ▄┌ ╚▓▄▀ ╔▄█▄   ╔▓║█╡    ╔█▀▓▀              ]],
  -- [[                 ║██▄▄    └▓█  ▄█  ╚▀╔██▀█   ▄▀╔██▀▀  ▄█▓╝        █╔██      ║██               ]],
  -- [[                 ╔▓██ └▀█▀ ║█╕ ║█   ╔██╔▄▒█ ▀█▄▓█╕   ▄█▄▄█╡     ╔▒         ╔█▀▓               ]],
  -- [[                   ╚▀▀▀▀       ║▀    ▀▀               ╚╚                  ╔█                  ]],
  -- [[                               ▀                                         █▀                   ]],
  -- [[]],
  --
  [[                                                                        ▀█▄                                                                         ]],
  [[                                                             ╔        ║██         ▄▄█████▓▓╣╖╖╔   ╕                                                 ]],
  [[                                                           ╔╝       ╔▄███╝╚░▄▓██████████████████▄▄  ╔ ▒                                             ]],
  [[                                                           ▓      ▄▀▒███████████████████▀      ╔▄   ▓▄█                                             ]],
  [[                                                   ╔▄▄▀▀▀▀████████████████████████████████▄╖▄▄█▀  ▄████                                             ]],
  [[                                                          ║█▄█████████████████████████████████████████▀                                             ]],
  [[                                                          ║█████████████████████▓█████████████████████                                              ]],
  [[                                              ╔▄       ╔▄████████████████████████▓██████████████████▀                                               ]],
  [[                                              ▄▓█████▓█▓████████▓█████████████████████████████████████████▀                                         ]],
  [[                                              ╚▓█████████████████████████▓█████████████████████████████████▄                                        ]],
  [[                                                ╚▀██████████████████████▀╚████████▓████████████████████████▀▀                                       ]],
  [[                                                 ▄██████████████████████▒ ▓███████████▓▓█████████████▀▀└╔▄                                          ]],
  [[                                               ▄█████████████████▓██████  ╣▀█████████████▀██████████▄▄▄▀                                            ]],
  [[                                             ╔██▀╚║██████████████▓███▓█   ║▄▓████████████ ▓█████████ ╚╡                                             ]],
  [[                                             ╚    ╣█████████████████╡▓     ▓▒███████████▀ ╚▓████████▒  ╚┌                                           ]],
  [[                                                  ╣████████████████    ╔╔   ▓███████████   ╚▓███████▒╕                                              ]],
  [[                                                  ║██████████████▀ └   ╔╔▄▄ └▓███▓██████  ╚╡╚▓████████▄▄╝                                           ]],
  [[                                                  └▓▓████████████╕╔▒▀█▓▓▀▀▀▀  ▓█▒██▀███████▄▄▓██████▀▀                                              ]],
  [[                                                   └ ╚▓███████████             ▓█▀    ╚╚▀▀╚╜╚▓███▀▀                                                 ]],
  [[                                                       ╝▓█▀╚▀▓██╚▀▀       ╚  ╚╝             ╚ ▓██                                                   ]],
  [[                                                       ▓╝╔╡╡▄ ╚▓                           ╔  ▓█╚                                                   ]],
  [[                                                       ▀▄  ║▒╚    ╚╝             ╔           ╔▄▀                                                    ]],
  [[                                                        ╚▒╔  ╚╚╚                            ╔█▀       └                                             ]],
  [[                                                           ▀▀▀▄▄▄▄▄▄▄                    ╔▄▀                                                        ]],
  [[                                                                    ╚╚▀█▄         ▄▄▄▄▀▀╚        ╔╔                                                 ]],
  [[                                                                        ▓     ║▀╚                ▒▄┴                                                ]],
  [[                                                                 ╔      █     ▄▒                                                                    ]],
  [[                                                                ▄  ╚╡╡▄▒╝     ▀█                                                                    ]],
  [[                                                              ╔▒        ╚▀▄╔    ▀▄                                                                  ]],
  [[                                                            ╔▒╝             └╝╡▄▄ ╚▀▄╚▀╣▄                                                           ]],
  [[▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█▒                           ░█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀]],
  [[]],
  --
  --
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[                  ▄▄▄                                                                        ███                                               ]],
  -- [[               ╕  ███                                     ▄                            ▓███▄████╡                       ╔▄▄█████╕              ]],
  -- [[            ███▄▄███                                      ║█  ╔▄               ▄██▄     ▓███████▄                     ╔██████████              ]],
  -- [[            ╚▓██████╡       ▄                 ╔▄████      ▄█  ▀███▄             ▓███  ▄███████▀▀                       ║██████▀                ]],
  -- [[             ╚████▓▄▄▄     ║██               ╚▀▀███    ║ ║█▀▄ ╕████                  ╝▀▀▀▓███▄▄▄                       ▓█▀  ██▄▄▄              ]],
  -- [[            ▄█████▀▓███    ███                ██▄██▓████ ██ ╚█▄                ╔█       ▓██▓▄▄▓██                     ▄████████▀▀              ]],
  -- [[          ╔████▒█████▀    ▄██                ▄██║█▄███████ ▄███                ╚█▀▄     ████▀ ▓█                 ╔▄███████▀                    ]],
  -- [[         ║██▀  ▓██▀      ███               ▓████║████╚█▀███ ║███╕               ▀  ╚▀▄  █████╡▓█                  ▀▀████████▄                  ]],
  -- [[             ▄█████   ▄▄███▀▀▀███          ║█████▓██ ▄▀███▒ ▓██▓█                 ╕    ║███▓▄▄██                     ▓███████████▄▄            ]],
  -- [[           ███▓████▄█▀╔███   ███▀          ║████████║▀███ ▀███ ║██         ▄██▄▄▄    █▄ ╚▀▀ └▀█▀                ▀██████▀  ╚▀████████████▄▄     ]],
  -- [[           ╚▀██████▀ ▄███▓ ▄███              ▀▀      ███    ╚   ██▒        ╚█████████████████▄▄▀▄▄▄▄▄▄██▄▄        ▀▀▀▀        ▀███████████     ]],
  -- [[            ▄████▀ ▄███  ╚███▀                               ▄▄███                        ╚▀▀▀██████████▀                          └▀▀▀        ]],
  -- [[           ╚▀▀   ▀▓▀▀                                    ╔▄███▀▀                                                                               ]],
  -- [[                                                         ╚▀▀                                                                                   ]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  -- [[]],
  --
-- [[]],
-- [[                                    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄     ░▄█▄░   ▄██▄        ▄▄▄▄▄▄▄▄▄▄▄▄▄▄    ░██▄   ▄▄▄▄▄▄▄▄▄▄                                     ]],
-- [[                                  ░▓███████████████▒   ░▓███▒  ▓███▓██▄   ░███████████████▒  ░▓████▒▓██████████░                                    ]],
-- [[                                    ▀▀▓███▓▀▓▓███▀▀  ░███████▓████▒▓███▄   ▀▀▀▀▀▓████▀▀▀▀▀    ░▒▓▓█▒▒▓▓▓████▒▒░                                     ]],
-- [[                                    ▄░▓███▒▄▄▓███░▄   ▀▓███▓█▓██████████▒ ░▄▄▄▄▄▓████▄▄▄▄▄▄  ▒█████▓▓██████████▒                                    ]],
-- [[                                  ▒█████████████████▒ ░████▓█▒▒▓▓▓▓▓▓▓▓░ ▓█████████████████▒  ░▀▓██▀░▓▓▓████▓▓▒                                     ]],
-- [[                                   ▀▀▀▓███▓▀▓████▀▀▀  ▓██████▓█████████▒  ▀▀▀▀▀▀▓████▀▀▀▀▀▀░    ▄▓▄▒▓██████████                                     ]],
-- [[                                    ▄█████  ░▓██▒      ▓███████▓█▒░▓▓██▒        ▒███▒         ▄████▒▓███▒▒▒▓███                                     ]],
-- [[                                  ▄█████▀   ░▓██▒    ░▓████▓▓▓▓████████▒        ▓███▒        ▒████▀▓███████████                                     ]],
-- [[                                   ▀▓▀▀      ▀▓▀░     ▀▓▀░    ▀▓▓▓▓▓▓▓▀░        ░▀▓▓░         ░▀▀   ░▓▓▓▓▓▓▓▓▓▀                                     ]],
-- [[                                                                                                                                                    ]],
-- [[                                                                       ▄▄▄▄▄                                                                        ]],
-- [[                                                                   ▄███████████▄                                                                    ]],
-- [[                                                                 ▄███████████████▄                                                                  ]],
-- [[                                                                ▓█████████████████▄                                                                 ]],
-- [[                                                                ▓██████████████████                                                                 ]],
-- [[                                                               ▄▓██████████████████▒▄                                                               ]],
-- [[                                                             ░▒ ░▓███████████████▀  ▓                                                               ]],
-- [[                                                             ░▀▄  ▓█████████████▀ ▄▒░                                                               ]],
-- [[                                                                ░▒░ ▀▓███████▓░ ░▒░                                                                 ]],
-- [[                                                                 ░▒▄           ░▒▒                                                                  ]],
-- [[                                                                  ░▒█▒▒▒░░░░░▒▒▓█▄░                                                                 ]],
-- [[                                                               ░▄▒▀▀              ░▀▒▄▄                                                             ]],
-- [[                                                             ▄▒▀                      ▀▒▄                                                           ]],
-- [[                                                           ▄▒▀                          ░▒▄                                                         ]],
-- [[                                                         ▄▒▀                              ▀▒░                                                       ]],
-- [[                                                       ▒▓   ░░                          ▒░   ▒▒                                                     ]],
-- [[                                                      ▒▒   ░▒░                          ░▒    ░▒                                                    ]],
-- [[                                                    ░▒░    ▒▒                           ░▒      ▀▒                                                  ]],
-- [[                                                    ▒▒     ▒▒                           ░▓       ▓                                                  ]],
-- [[▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█▒                           ░█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀]],
-- [[]],
}

M.center = {
  -- {
  --   icon_hl = "Title",
  --   key_hl = "Number",
  --   desc_hl = "Title",
  --   action = LazyVim.telescope("files"),
  --   desc = " Find File              ",
  --   icon = " ",
  --   key = "f",
  -- },
  -- {
  --   icon_hl = "Title",
  --   key_hl = "Number",
  --   desc_hl = "Title",
  --   action = "ene | startinsert",
  --   desc = " New File               ",
  --   icon = " ",
  --   key = "n"
  -- },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = "Telescope oldfiles",
    desc = " Recent Files           ",
    icon = " ",
    key = "r",
  },
  -- {
  --   icon_hl = "Title",
  --   key_hl = "Number",
  --   desc_hl = "Title",
  --   action = "Telescope live_grep",
  --   desc = " Find Text              ",
  --   icon = " ",
  --   key = "g"
  -- },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = [[lua LazyVim.telescope.config_files()()]],
    desc = " Config                 ",
    icon = " ",
    key = "c",
  },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = 'lua require("persistence").load()',
    desc = " Restore Session        ",
    icon = " ",
    key = "s",
  },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = "LazyExtras",
    desc = " Lazy Extras            ",
    icon = " ",
    key = "x",
  },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = "Lazy",
    desc = " Lazy                   ",
    icon = "󰒲 ",
    key = "l",
  },
  {
    icon_hl = "Title",
    key_hl = "Number",
    desc_hl = "Title",
    action = "qa",
    desc = " Quit                   ",
    icon = " ",
    key = "q",
  },
}

return M
