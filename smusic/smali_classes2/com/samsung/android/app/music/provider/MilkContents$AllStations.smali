.class public Lcom/samsung/android/app/music/provider/MilkContents$AllStations;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$AllStationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllStations"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FREEUSER_SELECTION:Ljava/lang/String; = "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1) AND (station_type!=\'3\')"

.field private static final DEFAULT_ORDER:Ljava/lang/String; = "genre_ordinal, mystation_ordinal DESC, station_ordinal, genre_name ASC "

.field private static final DEFAULT_SELECTION:Ljava/lang/String; = "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1)"

.field private static final STATION_ONLY_CONTENT_URI:Landroid/net/Uri;

.field private static final STATION_ONLY_URI_PATH:Ljava/lang/String; = "station_only"

.field private static final URI_PATH:Ljava/lang/String; = "station_all"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://com.sec.android.app.music/station_all"

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.sec.android.app.music/station_only"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->STATION_ONLY_CONTENT_URI:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 135
    const-string v3, "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1)"

    const/4 v4, 0x0

    const-string v5, "genre_ordinal, mystation_ordinal DESC, station_ordinal, genre_name ASC "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultFreeUserLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/content/Loader;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const-string v3, "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1) AND (station_type!=\'3\')"

    const/4 v4, 0x0

    const-string v5, "genre_ordinal, mystation_ordinal DESC, station_ordinal, genre_name ASC "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/content/Loader;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const-string v3, "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1)"

    const/4 v4, 0x0

    const-string v5, "genre_ordinal, mystation_ordinal DESC, station_ordinal, genre_name ASC "

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public static createLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "MilkContents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllStations >> selection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", order - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createLoader(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Loader;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "station_id=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->createLoader(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDefaultSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "(genre_is_visible=1 OR mystation_ordinal != 2147483647) AND (genre_is_prefethced=1)"

    return-object v0
.end method

.method public static getStationOnlyContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->STATION_ONLY_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getStationOnlyUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "station_only"

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "station_all"

    return-object v0
.end method
