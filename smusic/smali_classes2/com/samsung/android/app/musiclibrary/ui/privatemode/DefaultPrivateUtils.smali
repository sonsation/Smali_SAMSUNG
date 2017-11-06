.class public Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;
.super Ljava/lang/Object;
.source "DefaultPrivateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrivateModeItem(Landroid/content/Context;J)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 15
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v2

    .line 18
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 19
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->getMediaInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v0

    .line 20
    .local v0, "mediaInfo":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    if-eqz v0, :cond_0

    .line 21
    iget-boolean v2, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->isPrivate:Z

    goto :goto_0
.end method
