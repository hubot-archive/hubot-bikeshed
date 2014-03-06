# Hubot: hubot-bikeshed

[![Build Status](https://travis-ci.org/jjasghar/hubot-bikeshed.png?branch=master)](https://travis-ci.org/jjasghar/hubot-bikeshed)

A script to pull a suggestion from bikeshed.io and also explain what bikeshedding is.

See [`src/bikeshed.coffee`](src/bikeshed.coffee) for full documentation.

## Installation

Add **hubot-bikeshed** to your `package.json` file:

```json
"dependencies": {
  "hubot": ">= 2.5.1",
  "hubot-scripts": ">= 2.4.2",
  "hubot-bikeshed": ">= 0.0.0"
}
```

Add **hubot-bikeshed** to your `external-scripts.json`:

```json
["hubot-bikeshed"]
```

Run `npm install hubot-bikeshed`

## Sample Interaction

```
user1> It seems like we are bikeshedding this problem....
Hubot> If we are talking about bikesheds, I suggest we should use #695DCE, for you humans, http://www.color-hex.com/color/695DCE
user1> What is bikeshedding?
Hubot> The term was coined as a metaphor to illuminate Parkinson’s Law of Triviality. Parkinson observed that a committee whose job is to approve plans for a nuclear power plant may spend the majority of its time on relatively unimportant but easy-to-grasp issues, such as what materials to use for the staff bikeshed, while neglecting the design of the power plant itself, which is far more important but also far more difficult to criticize constructively. It was popularized in the Berkeley Software Distribution community by Poul Henning-Kamp and has spread from there to the software industry at large.
Hubot> If we are talking about bikesheds, I suggest we should use #1EF480, for you humans, http://www.color-hex.com/color/1EF480
```
