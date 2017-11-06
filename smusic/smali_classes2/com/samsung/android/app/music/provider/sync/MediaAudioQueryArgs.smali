.class Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;
.super Ljava/lang/Object;
.source "MediaAudioQueryArgs.java"


# instance fields
.field orderBy:Ljava/lang/String;

.field selection:Ljava/lang/String;

.field selectionArgs:[Ljava/lang/String;

.field sourceColumns:[Ljava/lang/String;

.field sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxId"    # J
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 22
    invoke-static {v0, p3}, Lcom/samsung/android/app/music/provider/MusicContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceUri:Landroid/net/Uri;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title!=\'\' AND is_music=1 AND _id > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->selection:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->MEDIA_COLUMNS_FOR_LOCAL_SYNC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->sourceColumns:[Ljava/lang/String;

    .line 26
    const-string v0, "_id"

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/sync/MediaAudioQueryArgs;->orderBy:Ljava/lang/String;

    .line 27
    return-void
.end method
