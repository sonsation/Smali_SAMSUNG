.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.super Landroid/widget/RelativeLayout;
.source "LyricsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollState;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollType;
    }
.end annotation


# static fields
.field private static final ATT_ANCHOR_LIST:Ljava/lang/String; = "anchorList"

.field private static final AUTO_NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final TAG:Ljava/lang/String;

.field private static final sBlockUserTouch:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;


# instance fields
.field private final mActiveItemViewBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

.field private final mAnchorViewId:I

.field private mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

.field private mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

.field private final mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

.field private final mItemViewBinders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnVisibilityChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mResetControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;",
            ">;"
        }
    .end annotation
.end field

.field private mRestorePositionEnabled:Z

.field private final mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

.field private mTouchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyrics-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mTouchEnabled:Z

    .line 109
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "anchorList"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    .line 118
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    return-object v0
.end method

.method private activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V
    .locals 3
    .param p1, "itemViewBinder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .param p2, "byUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder;)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-interface {p1, p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Type parameter of ItemController is not matched with recycler adapter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private attachViewBinders()V
    .locals 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 258
    .local v0, "b":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<*>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V

    goto :goto_0

    .line 260
    .end local v0    # "b":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<*>;"
    :cond_0
    return-void
.end method

.method private deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V
    .locals 1
    .param p1, "itemViewBinder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .param p2, "byUser"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-interface {p1, p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V

    .line 328
    :cond_1
    return-void
.end method

.method private detachViewBinders()V
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 264
    .local v0, "b":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<*>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V

    goto :goto_0

    .line 266
    .end local v0    # "b":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<*>;"
    :cond_0
    return-void
.end method

.method private ensureAnchorView()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v1, :cond_0

    .line 128
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "anchorView":Landroid/view/View;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anchor id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Anchor view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-nez v0, :cond_1

    .line 150
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .end local v0    # "anchorView":Landroid/view/View;
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$2;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    goto :goto_0
.end method

.method private findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .locals 6
    .param p1, "binder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_1

    move-object p1, v3

    .line 318
    .end local p1    # "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    :cond_0
    :goto_0
    return-object p1

    .line 305
    .restart local p1    # "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->getChild()Ljava/util/Set;

    move-result-object v0

    .line 306
    .local v0, "child":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v0, :cond_3

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move-object p1, v3

    .line 318
    goto :goto_0

    .line 311
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 312
    .local v2, "item":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "TT;"
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v1

    .line 313
    .local v1, "found":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "TT;"
    if-eqz v1, :cond_4

    move-object p1, v1

    .line 314
    goto :goto_0
.end method

.method private setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V
    .locals 2
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .param p2, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 242
    if-eqz p1, :cond_0

    .line 243
    if-eqz p2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->addScrollListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 246
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->removeScrollListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 250
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    goto :goto_0
.end method

.method private setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V
    .locals 2
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p2, "isEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    if-eqz p2, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->addScrollListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRestorePositionEnabled:Z

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 231
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->removeScrollListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 235
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    goto :goto_0
.end method

.method private setSyncedLyricEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 224
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V
    .locals 1
    .param p1, "itemViewBinder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 288
    return-void
.end method

.method public final addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public final addResetController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;)V
    .locals 1
    .param p1, "resetController"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public final clearItemViewBinders()V
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 337
    .local v0, "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 338
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 344
    :cond_2
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->removeItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    goto :goto_0

    .line 348
    .end local v0    # "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    :cond_3
    return-void
.end method

.method public final clearOnVisibilityChangedListeners()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 162
    return-void
.end method

.method public final findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 292
    .local v0, "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v1

    .line 293
    .local v1, "found":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "TT;"
    if-eqz v1, :cond_0

    .line 297
    .end local v0    # "binder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .end local v1    # "found":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;, "TT;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getScrollState()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->getState()I

    move-result v0

    return v0
.end method

.method public highlightLine(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollAction"    # I

    .prologue
    .line 442
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(IIF)V

    .line 443
    return-void
.end method

.method public highlightLine(IIF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollAction"    # I
    .param p3, "scrollSpeedFactor"    # F

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-ltz p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->set(IIF)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->ensureAnchorView()V

    .line 124
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 211
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;

    .line 212
    .local v0, "savedState":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 214
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 205
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 206
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 191
    if-ne p1, p0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .line 196
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;
    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public reHighlightLine(I)V
    .locals 3
    .param p1, "scrollAction"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 436
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$1800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v2

    sub-int v0, v1, v2

    .line 437
    .local v0, "highlightPosition":I
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(II)V

    .line 439
    .end local v0    # "highlightPosition":I
    :cond_0
    return-void
.end method

.method public final removeItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V
    .locals 1
    .param p1, "itemViewBinder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 333
    return-void
.end method

.method public final removeOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    .line 461
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->clearItemViewBinders()V

    .line 464
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;

    .line 465
    .local v0, "r":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;->reset()V

    goto :goto_0

    .line 467
    .end local v0    # "r":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 468
    return-void
.end method

.method public final setAnchorOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V
    .locals 2
    .param p1, "newFocusController"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eq v0, p1, :cond_3

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    if-eqz p1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 429
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .line 431
    :cond_3
    return-void
.end method

.method public final setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V
    .locals 2
    .param p1, "newHighlightController"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eq v0, p1, :cond_3

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 413
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 415
    :cond_3
    return-void
.end method

.method public final setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 5
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 359
    .local v1, "oldLyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 360
    :cond_0
    if-nez p1, :cond_4

    .line 361
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 365
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 366
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 367
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 369
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setSyncedLyricEnabled(Z)V

    .line 370
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setSyncedLyricEnabled(Z)V

    .line 373
    :cond_1
    if-eqz v1, :cond_2

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->detachViewBinders()V

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->attachViewBinders()V

    .line 377
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLyrics : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lyric lines : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_3
    return-void

    .line 363
    :cond_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    .end local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .local v0, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    move-object p1, v0

    .end local v0    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .restart local p1    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    goto :goto_0
.end method

.method public setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V
    .locals 4
    .param p1, "newAdapter"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    .line 383
    .local v1, "oldAdapter":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;
    if-eq v1, p1, :cond_2

    .line 384
    if-eqz v1, :cond_0

    .line 385
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 387
    :cond_0
    if-eqz p1, :cond_1

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 389
    .local v0, "controller":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    goto :goto_0

    .line 392
    .end local v0    # "controller":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    .line 393
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 395
    :cond_2
    return-void
.end method

.method public final setRestorePositionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRestorePositionEnabled:Z

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public final setTouchEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mTouchEnabled:Z

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
