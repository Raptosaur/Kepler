package org.alexdev.kepler.messages.incoming.rooms;

import org.alexdev.kepler.dao.mysql.ItemDao;
import org.alexdev.kepler.dao.mysql.RoomDao;
import org.alexdev.kepler.game.item.Item;
import org.alexdev.kepler.game.player.Player;
import org.alexdev.kepler.game.room.Room;
import org.alexdev.kepler.messages.outgoing.rooms.FLATPROPERTY;
import org.alexdev.kepler.messages.types.MessageEvent;
import org.alexdev.kepler.server.netty.streams.NettyRequest;

public class FLATPROPBYITEM implements MessageEvent {
    @Override
    public void handle(Player player, NettyRequest reader) {
        Room room = player.getRoomUser().getRoom();

        if (room == null) {
            return;
        }

        if (!room.isOwner(player.getDetails().getId())) {
            return;
        }

        String contents = reader.contents();
        String property = contents.split("/")[0];

        int itemId = Integer.parseInt(contents.split("/")[1]);

        Item item = player.getInventory().getItem(itemId);

        if (item == null) {
            return;
        }

        int value = Integer.parseInt(item.getCustomData());

        if (property.equals("wallpaper")) {
            room.getData().setWallpaper(value);
        }

        if (property.equals("floor")) {
            room.getData().setFloor(value);
        }

        room.send(new FLATPROPERTY(property, value));
        player.getInventory().getItems().remove(item);

        ItemDao.deleteItem(itemId);
        RoomDao.saveDecorations(room);
    }
}
