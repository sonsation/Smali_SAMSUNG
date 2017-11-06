.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightRunnable"
.end annotation


# instance fields
.field private mRequestPosition:I

.field private mScrollAction:I

.field private mScrollSpeedFactor:F

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1216
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mRequestPosition:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v3

    add-int v1, v2, v3

    .line 1217
    .local v1, "listPosition":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$2900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 1219
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$1800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 1220
    .local v0, "hackForFlicking":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearItemFocus()V

    .line 1224
    .end local v0    # "hackForFlicking":Z
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->this$0:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollAction:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollSpeedFactor:F

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;IIF)V

    .line 1225
    return-void

    .line 1219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IIF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "scrollAction"    # I
    .param p3, "scrollSpeedFactor"    # F

    .prologue
    .line 1209
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mRequestPosition:I

    .line 1210
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollAction:I

    .line 1211
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->mScrollSpeedFactor:F

    .line 1212
    return-void
.end method
