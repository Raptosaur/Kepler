package org.alexdev.kepler.game.commands.clientside;

import org.alexdev.kepler.game.commands.Command;
import org.alexdev.kepler.game.entity.Entity;

public class ChooserCommand extends Command {
    @Override
    public void addPermissions() {
        this.permissions.add("default");
    }

    @Override
    public void handleCommand(Entity entity, String message, String[] args) {

    }

    @Override
    public String getDescription() {
        return "List users in current room (club membership required)";
    }
}
