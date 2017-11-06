.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.super Ljava/lang/Object;
.source "GLHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-GLHolder"

.field protected static final MSG_ON_ANIMATION_FINISHED:I = 0x3

.field protected static final MSG_ON_ANIMATION_STARTED:I = 0x2

.field protected static final MSG_ON_ANIMATION_UPDATE:I = 0x4

.field protected static final MSG_ON_ITEM_CLICK:I = 0x1

.field protected static final MSG_ON_SELECTED_MODEL_SIZE_CHANGED:I = 0x5

.field protected static final MSG_ON_SELECTION_CHANGE:I = 0x0

.field private static final mAnimationUpdateDelta:J = 0xfL


# instance fields
.field private volatile mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

.field private mAdapterWrap:Z

.field private volatile mAnimationStarted:Z

.field private mDefaultAlbArt:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field public mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

.field private mNextHelperInvalidateTime:J

.field private mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

.field private mParentView:Landroid/view/View;

.field private mSelected:I

.field private mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

.field private final mUIThreadId:J

.field private mUiHandlerCallback:Landroid/os/Handler$Callback;

.field private sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/4 v1, -0x1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 330
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUiHandlerCallback:Landroid/os/Handler$Callback;

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    .line 128
    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectionChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnItemClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnAnimationUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectedModelSizeChanged(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    return-object p1
.end method

.method private ensureUIThread()V
    .locals 4

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    return-void
.end method

.method private ensureUiHandler()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUiHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    .line 558
    :cond_0
    return-void
.end method

.method private handleOnAnimationFinished()V
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationFinished(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V

    .line 442
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->invalidateHelper(Z)V

    .line 443
    return-void
.end method

.method private handleOnAnimationStarted()V
    .locals 4

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationStarted(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 454
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->invalidateHelper(Z)V

    .line 455
    return-void
.end method

.method private handleOnAnimationUpdate()V
    .locals 6

    .prologue
    .line 458
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v1

    .line 460
    .local v1, "selection":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getChildDelta(I)F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getMaxSelectedDelta()F

    move-result v3

    div-float v0, v2, v3

    .line 464
    .local v0, "fraction":F
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;->onAnimationUpdate(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;FI)V

    .line 465
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/16 v4, 0xf

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 467
    .end local v0    # "fraction":F
    .end local v1    # "selection":I
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->invalidateHelper(Z)V

    .line 468
    return-void
.end method

.method private handleOnItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 490
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 497
    :cond_0
    return-void
.end method

.method private handleOnSelectedModelSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;->onSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;II)V

    .line 363
    :cond_0
    return-void
.end method

.method private handleOnSelectionChange()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 501
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getSelection()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    const-wide/16 v4, -0x1

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 510
    :cond_0
    return-void
.end method

.method private invalidateHelper(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 472
    return-void
.end method

.method private isUiThread()Z
    .locals 4

    .prologue
    .line 513
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mUIThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToNext()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    .line 297
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 306
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 300
    .restart local v0    # "count":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAnimationIsNext(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int v1, v2, v0

    .line 302
    .local v1, "nextPosition":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0

    .line 304
    .end local v0    # "count":I
    .end local v1    # "nextPosition":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0
.end method

.method private moveToPrev()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 309
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapterWrap:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    .line 311
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 320
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 314
    .restart local v0    # "count":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setAnimationIsNext(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v0

    rem-int v1, v2, v0

    .line 316
    .local v1, "prevPosition":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0

    .line 318
    .end local v0    # "count":I
    .end local v1    # "prevPosition":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->setSelection(IZ)V

    goto :goto_0
.end method

.method private obtainMotionRunnable(Landroid/view/MotionEvent;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->sOnMotionEventPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;

    .line 231
    .local v0, "onMotionEvent":Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$OnMotionEvent;->event:Landroid/view/MotionEvent;

    .line 232
    return-object v0
.end method

.method private registerAccessibilityListener()V
    .locals 3

    .prologue
    .line 649
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    .line 650
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 651
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;->enabled:Z

    .line 653
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 655
    :cond_0
    return-void
.end method

.method private unregisterAccessibilityListener()V
    .locals 3

    .prologue
    .line 658
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    .line 659
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 660
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 663
    :cond_0
    return-void
.end method


# virtual methods
.method public animationFinished()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->animationFinished()Z

    move-result v0

    return v0
.end method

.method public bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 1
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 609
    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 536
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v1

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object v0

    .line 634
    .local v0, "helper":Landroid/support/v4/widget/ExploreByTouchHelper;
    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized fireOnAnimationFinished()V
    .locals 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 431
    :goto_0
    monitor-exit p0

    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fireOnAnimationStarted()V
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mAnimationStarted:Z

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fireOnItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isUiThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnItemClick(I)V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 389
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public fireOnSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)Z
    .locals 5
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    if-nez v3, :cond_0

    .line 626
    :goto_0
    return v1

    .line 615
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    .line 616
    goto :goto_0

    .line 618
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getAdapterIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 620
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 621
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 622
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 623
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    move v1, v2

    .line 626
    goto :goto_0
.end method

.method public fireOnSelectionChange()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->handleOnSelectionChange()V

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUiHandler()V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAlbumArt()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mDefaultAlbArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getRenderer()Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mSelected:I

    return v0
.end method

.method public inAnimationThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public init(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "factory"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 526
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    .line 527
    invoke-interface {p3, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;->create(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 530
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    .line 531
    return-void
.end method

.method public isFlinging()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isFlinging()Z

    move-result v0

    return v0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mTouchExploration:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$TouchExplorationEnabledListener;->enabled:Z

    return v0
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->isTouched()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onDraw(Landroid/graphics/Canvas;II)V

    .line 226
    return-void
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 254
    sparse-switch p2, :sswitch_data_0

    .line 261
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 259
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 274
    sparse-switch p2, :sswitch_data_0

    .line 290
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :sswitch_0
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->moveToPrev()V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    goto :goto_0

    .line 281
    :sswitch_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->moveToNext()V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    goto :goto_0

    .line 287
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnItemClick(I)V

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->unregisterAccessibilityListener()V

    .line 189
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->registerAccessibilityListener()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->onResume()V

    .line 210
    const-string v0, "SMUSIC-GLHolder"

    const-string v1, "additional request render after resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->obtainMotionRunnable(Landroid/view/MotionEvent;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParentView:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLParentView;->postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method public reloadItem(I)V
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 604
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$ReloadItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;->requestRender()V

    .line 579
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .param p2, "adapterPosition"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public setAdapterWrap(Z)V
    .locals 1
    .param p1, "wrap"    # Z

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 588
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetAdapterWrap;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method public setAnimationIsNext(Z)V
    .locals 1
    .param p1, "isNext"    # Z

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setAnimationIsNext(Z)V

    .line 642
    return-void
.end method

.method public setDefaultAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mDefaultAlbArt:Landroid/graphics/Bitmap;

    .line 172
    return-void
.end method

.method public setOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;)V
    .locals 0
    .param p1, "onAnimationListener"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 545
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnAnimationListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnAnimationListener;

    .line 546
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 243
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 162
    return-void
.end method

.method public setOnSelectedAlbumSizeChangedListener(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 551
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mOnSelectedAlbumSizeChangedListener:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;

    .line 552
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->ensureUIThread()V

    .line 142
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$SetSelection;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;IZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public setSingleScroll(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->mLayout:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GalleryLayout;->setSingleScroll(Z)V

    .line 601
    return-void
.end method
