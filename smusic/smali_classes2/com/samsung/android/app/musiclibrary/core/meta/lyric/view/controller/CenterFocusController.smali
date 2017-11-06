.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterFocusController;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
.source "CenterFocusController.java"


# static fields
.field private static final FOCUSABLE_RANGE:I = 0x14


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "itemViewBinder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected chooseFocusPosition(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;III)I
    .locals 11
    .param p1, "layoutManager"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
    .param p2, "anchorHeight"    # I
    .param p3, "firstVisible"    # I
    .param p4, "lastVisible"    # I

    .prologue
    .line 22
    div-int/lit8 v0, p2, 0x2

    .line 23
    .local v0, "centerY":I
    add-int/lit8 v4, v0, -0x14

    .line 24
    .local v4, "rangeTop":I
    add-int/lit8 v3, v0, 0x14

    .line 26
    .local v3, "rangeBottom":I
    move v6, p3

    .line 27
    .local v6, "start":I
    const/4 v2, 0x0

    .line 28
    .local v2, "maxIntersect":I
    add-int v10, v6, p4

    div-int/lit8 v5, v10, 0x2

    .line 30
    .local v5, "result":I
    :goto_0
    if-gt v6, p4, :cond_0

    .line 31
    invoke-virtual {p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 32
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_1

    .line 57
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    return v5

    .line 35
    .restart local v7    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    .line 36
    .local v9, "viewTop":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int v8, v9, v10

    .line 38
    .local v8, "viewBottom":I
    const/4 v1, 0x0

    .line 39
    .local v1, "intersect":I
    if-gt v9, v4, :cond_2

    if-gt v3, v8, :cond_2

    .line 40
    move v5, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-gt v4, v9, :cond_5

    if-gt v9, v3, :cond_5

    .line 43
    sub-int v1, v3, v9

    .line 47
    :cond_3
    :goto_2
    if-ge v2, v1, :cond_4

    .line 48
    move v2, v1

    .line 49
    move v5, v6

    .line 51
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 52
    goto :goto_0

    .line 44
    :cond_5
    if-gt v4, v8, :cond_3

    if-gt v8, v3, :cond_3

    .line 45
    sub-int v1, v8, v4

    goto :goto_2
.end method

.method protected onLineFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 0
    .param p1, "line"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .param p2, "oldPos"    # I
    .param p3, "newPos"    # I

    .prologue
    .line 62
    return-void
.end method
