Config                            = {}
Config.DrawDistance               = 30.0
Config.MarkerColor                = { r = 19, g = 94, b = 186 }

Config.PlateLetters  = 2
Config.PlateNumbers  = 4
Config.VehicleMenu = true
Config.VehicleMenuButton = 303
Config.RangeCheck = 40.0 -- this is the change you will be able to control the vehicle.

Config.Zones = {

	Prodavnica = {
		Pos   = vector3(-32.9, -1102.0, 26.42), 
		Size  = { x = 2.0, y = 2.0, z = 2.0 },
		Type  = 36
	},

	AutoSpawner = {
		Pos     =  vector3(-27.33, -1082.17, 26.64),
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 69.2,
		Type    = -1
	}

}

Config.Garages = {
    ["Glavna2"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(228.93, -802.5, 30.56)
            },

            ["izguraj"] = {
                ["position"] = vector3(233.63, -788.41, 30.61), 
                ["heading"] = 159.92
            },

            ["vehicle"] = {
                ["position"] = vector3(213.56, -796.28, 30.86),
                ["heading"] = 72.63
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 230.93, 
            ["y"] = -796.77, 
            ["z"] = 32.58, 
            ["rotationX"] = -10.0, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -22.0
        }
    },

    ["Autopijaca"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-14.04, -1658.1, 33.04)
            },

            ["izguraj"] = {
                ["position"] = vector3(-2.67, -1670.69, 29.48), 
                ["heading"] = 221.14
            },

            ["vehicle"] = {
                ["position"] = vector3(-28.87, -1675.32, 29.49), 
                ["heading"] = 21.12
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = -2.67, 
            ["y"] = -1670.69, 
            ["z"] = 34.48, 
            ["rotationX"] = -50.401574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 50.40157422423 
        }
    },

    ["GlavnaBrod"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-800.83, -1513.2, 1.6)
            },

            ["izguraj"] = {
                ["position"] = vector3(-800.39, -1517.38, 0.35), 
                ["heading"] = 292.5
            },

            ["vehicle"] = {
                ["position"] =  vector3(-787.67, -1503.86, -0.09), 
                ["heading"] = 290.48
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = -794.79, 
            ["y"] = -1514.45, 
            ["z"] = 1.6, 
            ["rotationX"] = -180.0, 
            ["rotationY"] = 180.0, 
            ["rotationZ"] = -65.25 
        }
    },

        ["Pacific Ocean"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(3857.52, 4459.67, 1.84)
            },

            ["izguraj"] = {
                ["position"] = vector3(3854.39, 4473.27, 1.07), 
                ["heading"] = 292.5
            },

            ["vehicle"] = {
                ["position"] =  vector3(3844.39, 4445.19, 0.21), 
                ["heading"] = 277.77
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] =  3855.79, 
            ["y"] = 4463.53, 
            ["z"] = 2.73, 
            ["rotationX"] = 0.0, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -17.35 
        }
    },

    ["Sandy"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1737.4, 3711.3, 34.13)
            },

            ["izguraj"] = {
                ["position"] = vector3(1724.48, 3724.27, 34.05), 
                ["heading"] = 21.12
            },

            ["vehicle"] = {
                ["position"] = vector3(1735.22, 3724.0, 33.99), 
                ["heading"] = 21.12
            }
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 1728.95, 
            ["y"] = 3720.39, 
            ["z"] = 35.18, 
            ["rotationX"] = -10.401574149728, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = 40.40157422423 
        }
    },

    ["Paleto"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(107.52, 6612.84, 31.99)
            },

            ["izguraj"] = {
                ["position"] = vector3(122.92, 6610.0, 31.87), 
                ["heading"] = 239.27
            },

            ["vehicle"] = {
                ["position"] = vector3(117.58, 6599.82, 32.0), 
                ["heading"] = 21.12
            }
        },
        ["camera"] = { 
            ["x"] = 118.0, 
            ["y"] = 6612.6, 
            ["z"] = 33.4, 
            ["rotationX"] = -25.637795701623, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -115.73228356242
        }
    }
}

Config.Labels = {
    ["menu"] = "Pritisnite ~INPUT_CONTEXT~ da isparkirate vozilo iz %s.",
    ["vehicle"] = "Pritisnite ~INPUT_CONTEXT~ da vratite vozilo u garažu."
}

Config.Trim = function(value)
    if value then
        return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
    else
        return nil
    end
end

Config.AlignMenu = "right"
