SMODS.Joker {
    key = 'joker1',
    atlas = 'placeholders',
    pos = {
        x = 0,
        y = 0
    },

    config = {
        extra = {
            chips = 250
        }
    },
    rarity = 1,
    cost = 4,
    blueprint_compat = true,
    loc_vars = function (self, infoque, card)
    
        return {
         vars = {
            card.ability.extra.chips
         }   
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
        
    end

    
}