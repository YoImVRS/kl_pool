Config = {
    NotificationDistance = 10.0,
    PropsToRemove = {
        vector3(1992.803, 3047.312, 46.22865),
        vector3(-36.301, 6391.44, 31.6047),
        vector3(550.147, -174.76, 50.6930),
        vector3(-574.17, 288.834, 79.1766),
    },

    --[[
        -- To use custom notifications, implement client event handler, example:

        AddEventHandler('kl_pool:notification', function(serverId, message)
            print(serverId, message)
        end)
    ]]
    CustomNotifications = false,

    --[[
        -- To use custom menu, implement following client handlers
        AddEventHandler('kl_pool:openMenu', function()
            -- open menu with your system
        end)

        AddEventHandler('kl_pool:closeMenu', function()
            -- close menu, player has walked far from table
        end)


        -- After selecting game type, trigger one of the following setupTable events
        TriggerEvent('kl_pool:setupTable', 'BALL_SETUP_8_BALL')
        TriggerEvent('kl_pool:setupTable', 'BALL_SETUP_STRAIGHT_POOL')
    ]]
    CustomMenu = false,

    --[[
        When you want your players to pay to play pool, set this to true
        AND implement the following server handler in your framework of choice.
        The handler MUST deduct money from the player and then CALL the callback
        if the payment is successful, or inform the player of payment failure.

        This script itself DOES NOT implement ESX/vRP logic, you have to do that yourself.

        AddEventHandler('kl_pool:payForPool', function(playerServerId, cb)
            print("This should be replaced by deducting money from " .. playerServerId)
            cb() -- successfuly set balls on table
        end)
    ]]
    PayForSettingBalls = false,
    BallSetupCost = nil, -- for example: "$1" or "$200" - any text

    --[[
        You can integrate pool cue into your system with

        SERVERSIDE HANDLERS
            - kl_pool:onReturnCue - called when player takes cue
            - kl_pool:onTakeCue   - called when player returns cue

        CLIENTSIDE EVENTS
            - kl_pool:takeCue   - forces player to take cue in hand
            - kl_pool:removeCue - removes cue from player's hand

        This prevents players from taking cue from cue rack if `false`
    ]]
    AllowTakePoolCueFromStand = true,

    --[[
        This option is for servers whose anticheats prevents
        this script from setting players invisible.

        When player's ped is blocking camera when aiming,
        set this to true
    ]]
    DoNotRotateAroundTableWhenAiming = false,

    MenuColor = {245, 127, 23},
    Keys = {
        BACK = {code = 200, label = 'INPUT_FRONTEND_PAUSE_ALTERNATE'},
        ENTER = {code = 38, label = 'INPUT_PICKUP'},
        SETUP_MODIFIER = {code = 21, label = 'INPUT_SPRINT'},
        CUE_HIT = {code = 179, label = 'INPUT_CELLPHONE_EXTRA_OPTION'},
        CUE_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        CUE_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        AIM_SLOWER = {code = 21, label = 'INPUT_SPRINT'},
        BALL_IN_HAND = {code = 29, label = 'INPUT_SPECIAL_ABILITY_SECONDARY'},

        BALL_IN_HAND_LEFT = {code = 174, label = 'INPUT_CELLPHONE_LEFT'},
        BALL_IN_HAND_RIGHT = {code = 175, label = 'INPUT_CELLPHONE_RIGHT'},
        BALL_IN_HAND_UP = {code = 172, label = 'INPUT_CELLPHONE_UP'},
        BALL_IN_HAND_DOWN = {code = 173, label = 'INPUT_CELLPHONE_DOWN'},
    },
    Text = {
        BACK = "Atrás",
        HIT = "Golpear",
        BALL_IN_HAND = "Tomar la bola",
        BALL_IN_HAND_BACK = "Atrás",
        AIM_LEFT = "Apuntar a la izquierda",
        AIM_RIGHT = "Apuntar a la derecha",
        AIM_SLOWER = "Apuntar más despacio",

        POOL = 'KL-Pool',
        POOL_GAME = 'Juego de billar',
        POOL_SUBMENU = 'Modo de juego',
        TYPE_8_BALL = '8 Bolas',
        TYPE_STRAIGHT = 'Billar',

        HINT_SETUP = 'Configurar juego',
        HINT_TAKE_CUE = 'Tomar el taco.',
        HINT_RETURN_CUE = 'Devolver el taco.',
        HINT_HINT_TAKE_CUE = 'Necesitas tomar el taco para jugar al billar.',
        HINT_PLAY = 'Jugar',

        BALL_IN_HAND_LEFT = 'Izquierda',
        BALL_IN_HAND_RIGHT = 'Derecha',
        BALL_IN_HAND_UP = 'Arriba',
        BALL_IN_HAND_DOWN = 'Abajo',
        BALL_POCKETED = '%s Has embocado la bola',
        BALL_IN_HAND_NOTIFY = 'Has tomado la bola de billar',
        BALL_LABELS = {
            [-1] = 'Taco',
            [1] = '~y~Liso 1~s~',
            [2] = '~b~Liso 2~s~',
            [3] = '~r~Liso 3~s~',
            [4] = '~p~Liso 4~s~',
            [5] = '~o~Liso 5~s~',
            [6] = '~g~Liso 6~s~',
            [7] = '~r~Liso 7~s~',
            [8] = 'Liso negro 8',
            [9] = '~y~Rayado 9~s~',
            [10] = '~b~Rayado 10~s~',
            [11] = '~r~Rayado 11~s~',
            [12] = '~p~Rayado 12~s~',
            [13] = '~o~Rayado 13~s~',
            [14] = '~g~Rayado 14~s~',
            [15] = '~r~Rayado 15~s~',
         }
    },
}