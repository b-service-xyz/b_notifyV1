# Notification Script V2

It's a rework of my notification script. To have multiple colours you can add it in the style.css at :root

## Usage

```lua
 /**
   * Generates a 5 second notification at the top left
   * @param color | ie. info, red.. you can change it in the style.css at :root
   * @param title | title of notification 
   * @param message | message of notification 
   */

TriggerEvent('notifications', "info", "Awesome title", "Awesome message")
TriggerEvent('notifications', "orange", "Awesome title", "Awesome message")
TriggerEvent('notifications', "grey", "Awesome title", "Awesome message")
TriggerEvent('notifications', "green", "Awesome title", "Awesome message")
```

## Examples

Clientside:
```lua
TriggerEvent('notifications', "green", "Awesome title", "Awesome message")
```

Serverside:
```lua
TriggerClientEvent('notifications', -1, "green", "Awesome title", "Awesome message")
```


