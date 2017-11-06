.class Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "LyricsViewBuilders.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextMarqueeController"
.end annotation


# instance fields
.field private mIsVisible:Z

.field private final mViews:[Landroid/view/View;


# direct methods
.method varargs constructor <init>([Landroid/view/View;)V
    .locals 0
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mViews:[Landroid/view/View;

    .line 304
    return-void
.end method


# virtual methods
.method public onStartCalled()V
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->setSelectedAll(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->setSelectedAll(Z)V

    .line 316
    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 320
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mIsVisible:Z

    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->setSelectedAll(Z)V

    .line 322
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectedAll(Z)V
    .locals 4
    .param p1, "isSelected"    # Z

    .prologue
    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    .line 326
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsViewBuilders$TextMarqueeController;->mViews:[Landroid/view/View;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 327
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 326
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
