package org.alexdev.kepler.game.item.roller;

import org.alexdev.kepler.game.item.Item;
import org.alexdev.kepler.game.pathfinder.Position;

public class RollingData {
    private Item roller;
    private Item item;
    private Position fromPosition;
    private Position nextPosition;
    private double heightUpdate;

    public RollingData(Item item, Item roller, Position fromPosition, Position nextPosition) {
        this.item = item;
        this.roller = roller;
        this.heightUpdate = -1;
        this.fromPosition = fromPosition;
        this.nextPosition = nextPosition;
    }

    public Item getItem() {
        return item;
    }

    public Item getRoller() {
        return roller;
    }

    public double getHeightUpdate() {
        return heightUpdate;
    }

    public void setHeightUpdate(double heightUpdate) {
        this.heightUpdate = heightUpdate;
    }

    public Position getNextPosition() {
        return nextPosition;
    }

    public Position getFromPosition() {
        return fromPosition;
    }
}
