.class Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;
.super Ljava/lang/Object;
.source "JumpFocusViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->access$000(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->access$000(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v0

    .line 126
    .local v0, "timeStamp":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->seek(J)J

    .line 127
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->access$100(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$1;->this$0:Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;->access$100(Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/app/music/common/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;->onLyricsJumped(J)V

    goto :goto_0
.end method
