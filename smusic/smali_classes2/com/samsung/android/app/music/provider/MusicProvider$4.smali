.class Lcom/samsung/android/app/music/provider/MusicProvider$4;
.super Landroid/database/ContentObserver;
.source "MusicProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/provider/MusicProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/provider/MusicProvider;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider$4;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 492
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 494
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "uriString":Ljava/lang/String;
    const-string v1, "content://media/external/audio/albums/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSrcProviderAlbumChangeObserver onChange uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider$4;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$300(Lcom/samsung/android/app/music/provider/MusicProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider$4;->this$0:Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->access$300(Lcom/samsung/android/app/music/provider/MusicProvider;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    :cond_0
    return-void
.end method
