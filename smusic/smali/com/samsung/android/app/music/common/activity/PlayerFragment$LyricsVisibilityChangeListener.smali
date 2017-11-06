.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricsVisibilityChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 1300
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1600(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/INowPlaying;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/INowPlaying;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->updatePlayerViewsBySurfaces(IZ)V

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$LyricsVisibilityChangeListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1700(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    goto :goto_0

    .line 1303
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
