.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;
.super Landroid/database/ContentObserver;
.source "LyricsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;->onChange(ZLandroid/net/Uri;)V

    .line 102
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$302(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;J)J

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$400(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    .line 109
    return-void
.end method
