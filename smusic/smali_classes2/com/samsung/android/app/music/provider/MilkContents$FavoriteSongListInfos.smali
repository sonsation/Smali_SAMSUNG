.class public Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;
.super Ljava/lang/Object;
.source "MilkContents.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/StoreProviderColumns$FavoriteListColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteSongListInfos"
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final URI_PATH:Ljava/lang/String; = "milkfavorite_track_list"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    const-string v0, "content://com.sec.android.app.music/milkfavorite_track_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoader(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/Loader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 520
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAddFavoriteUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "playlistId"    # J

    .prologue
    .line 525
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "heart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getSyncFavoriteUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "playlistId"    # J

    .prologue
    .line 529
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "heart/sync"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "milkfavorite_track_list"

    return-object v0
.end method
