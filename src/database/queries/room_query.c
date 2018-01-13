#include <stdio.h>

#include "sqlite3.h"

#include "list.h"
#include "hashtable.h"

#include "game/room/room.h"
#include "game/room/room_model.h"

#include "database/queries/room_query.h"
#include "database/db_connection.h"

HashTable *room_query_get_models() {
    HashTable *models;
    hashtable_new(&models);

    sqlite3 *conn = db_create_connection();
    sqlite3_stmt *stmt;

    int status = sqlite3_prepare(conn, "SELECT door_x, door_y, door_z, heightmap, modeltype FROM rooms_models", -1, &stmt, 0);

    if (status != SQLITE_OK) {
        fprintf(stderr, "Failed to execute statement: %s\n", sqlite3_errmsg(conn));
    }

    while (true) {
        status = sqlite3_step(stmt);

        if (status != SQLITE_ROW) {
            break;
        }

        room_model *model = room_model_create(
            sqlite3_column_int(stmt, 0),
            sqlite3_column_int(stmt, 1),
            sqlite3_column_double(stmt, 2),
            (char*)sqlite3_column_text(stmt, 3)
        );

        char *modeltype = strdup((char*)sqlite3_column_text(stmt, 4));
        hashtable_add(models, modeltype, model);
    }

    return models;
}

List *room_query_get_by_id(int owner_id) {
    List *rooms;
    list_new(&rooms);

    sqlite3 *conn = db_create_connection();
    sqlite3_stmt *stmt;

    int status = sqlite3_prepare(conn, "SELECT * FROM rooms WHERE owner_id = ?", -1, &stmt, 0);

    if (status == SQLITE_OK) {
        sqlite3_bind_int(stmt, 1, owner_id);
    } else {
        fprintf(stderr, "Failed to execute statement: %s\n", sqlite3_errmsg(conn));
    }

    while (true) {
        status = sqlite3_step(stmt);

        if (status != SQLITE_ROW) {
            break;
        }

        room *room = room_create(sqlite3_column_int(stmt, 0));
        room_data *room_data = room_create_data(
            room->room_id,
            sqlite3_column_int(stmt, 1),
            sqlite3_column_int(stmt, 2),
            (char*)sqlite3_column_text(stmt, 3),
            (char*)sqlite3_column_text(stmt, 4),
            (char*)sqlite3_column_text(stmt, 5),
            (char*)sqlite3_column_text(stmt, 6),
            sqlite3_column_int(stmt, 7),
            sqlite3_column_int(stmt, 8),
            sqlite3_column_int(stmt, 9),
            sqlite3_column_int(stmt, 10),
            sqlite3_column_int(stmt, 12),
            (char*)sqlite3_column_text(stmt, 13),
            sqlite3_column_int(stmt, 11),
            sqlite3_column_int(stmt, 12)
        );

        room->room_data = room_data;
        list_add(rooms, room);

    }

    sqlite3_finalize(stmt);
    sqlite3_close(conn);
    return rooms;
}