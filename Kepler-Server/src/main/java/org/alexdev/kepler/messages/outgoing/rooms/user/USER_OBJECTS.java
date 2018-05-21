package org.alexdev.kepler.messages.outgoing.rooms.user;

import org.alexdev.kepler.game.entity.Entity;
import org.alexdev.kepler.game.entity.EntityState;
import org.alexdev.kepler.messages.headers.Outgoing;
import org.alexdev.kepler.messages.types.MessageComposer;
import org.alexdev.kepler.server.netty.streams.NettyResponse;
import org.alexdev.kepler.util.StringUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

public class USER_OBJECTS extends MessageComposer {
    private List<EntityState> states;

    public USER_OBJECTS(ConcurrentLinkedQueue<Entity> entities) {
        createEntityStates(new ArrayList<>(entities));
    }

    public USER_OBJECTS(List<Entity> users) {
        createEntityStates(users);
    }

    public USER_OBJECTS(Entity entity) {
        List<Entity> entities = new ArrayList<>();
        entities.add(entity);

        createEntityStates(entities);
    }

    private void createEntityStates(List<Entity> entities) {
        this.states = new ArrayList<>();

        for (Entity user : entities) {
            this.states.add(new EntityState(
                    user.getDetails().getId(),
                    user.getRoomUser().getInstanceId(),
                    user.getDetails(),
                    user.getRoomUser().getPosition().copy(),
                    user.getRoomUser().getStatuses()));
        }
    }

    @Override
    public void compose(NettyResponse response) {
        for (EntityState states : states) {
            response.writeKeyValue("i", states.getInstanceId());
            response.writeKeyValue("a", states.getEntityId());
            response.writeKeyValue("n", states.getDetails().getName());
            response.writeKeyValue("f", states.getDetails().getFigure());
            response.writeKeyValue("s", states.getDetails().getSex());
            response.writeKeyValue("l", states.getPosition().getX() + " " + states.getPosition().getY() + " " + Double.toString(StringUtil.format(states.getPosition().getZ())));

            if (states.getDetails().getMotto().length() > 0) {
                response.writeKeyValue("c", states.getDetails().getMotto());
            }

            if (states.getDetails().getBadgeActive().length() > 0) {
                response.writeKeyValue("b", states.getDetails().getBadgeActive());
            }
        }
    }

    @Override
    public short getHeader() {
        return Outgoing.USER_OBJECTS;
    }
}