# Description:
#   Describes what bikeshedding is, and also if someone mentions bikeshed gives a suggestion
#
# Dependencies:
#   http://bikeshed.io up and running
#
# Configuration:
#   None
#
# Commands:
#   What is bikeshedding? - Display an explaination of bikeshedding
#   bikeshed - Gives a suggestion of a bikeshed color
#   bikeshedding - Gives a suggestion of a bikeshed color
#
# Author:
#   jjasghar

module.exports = (robot) ->

   robot.hear /What is bikeshedding\?/i, (msg) ->
     msg.send "The term was coined as a metaphor to illuminate Parkinson’s Law of Triviality. Parkinson observed that a committee whose job is to approve plans for a nuclear power plant may spend the majority of its time on relatively unimportant but easy-to-grasp issues, such as what materials to use for the staff bikeshed, while neglecting the design of the power plant itself, which is far more important but also far more difficult to criticize constructively. It was popularized in the Berkeley Software Distribution community by Poul Henning-Kamp and has spread from there to the software industry at large."

   robot.hear /\bbike(shed|shedding)\b/i, (msg) ->
     msg.http("http://bikeshed.io/api/v1.0/color")
      .get() (err, res, body) ->
        try
          json = JSON.parse(body)
          msg.send "If we are talking about bikesheds, I suggest we should use #{json.hex}, for you humans, http://www.color-hex.com/color/#{json.hex.slice(1)}"
         catch error
           msg.send "Seems bikeshead.io is down, looks like you'll get #FFFFF"



