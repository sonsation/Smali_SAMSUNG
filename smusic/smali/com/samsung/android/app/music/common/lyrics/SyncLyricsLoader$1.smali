.class Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;
.super Ljava/lang/Object;
.source "SyncLyricsLoader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsLoadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

.field final synthetic val$mediaId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    iput-wide p2, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;->val$mediaId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 4
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;->val$mediaId:J

    invoke-static {v0, v2, v3, p1}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->access$200(Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 143
    return-void
.end method
