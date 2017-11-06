.class public Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;
.super Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;
.source "OnlinePlaylistTrackQueryArgs.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "cpAttrs"    # I
    .param p4, "filterOption"    # I

    .prologue
    .line 19
    const-string/jumbo v3, "online"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 20
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 21
    return-void
.end method
