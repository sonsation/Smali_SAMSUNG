.class public Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;
.super Ljava/lang/Object;
.source "AlbumTagPositionController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$OnSelectedAlbumSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;,
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumHeight:I

.field private final mAlbumSizeChangedNotifier:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;

.field private mAlbumWidth:I

.field private final mOnAlbumSizeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mOnAlbumSizeChangedListeners:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumSizeChangedNotifier:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;

    .line 28
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumWidth:I

    .line 30
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumHeight:I

    .line 32
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewWidth:I

    .line 34
    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewHeight:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mOnAlbumSizeChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method private fireOnAlbumSizeChanged(II)V
    .locals 1
    .param p1, "albumWidth"    # I
    .param p2, "albumHeight"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumSizeChangedNotifier:Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$AlbumSizeChangedNotifier;->postNotify(II)V

    .line 119
    return-void
.end method

.method private getDisplayHeight(Landroid/view/View;I)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 87
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 88
    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->getDisplayHeight(Landroid/view/View;I)I

    move-result p2

    .line 91
    .end local v1    # "vp":Landroid/view/View;
    .end local p2    # "height":I
    :cond_0
    return p2
.end method

.method private getDisplayWidth(Landroid/view/View;I)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "width"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 78
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 79
    check-cast v1, Landroid/view/View;

    .line 80
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->getDisplayWidth(Landroid/view/View;I)I

    move-result p2

    .line 82
    .end local v1    # "vp":Landroid/view/View;
    .end local p2    # "width":I
    :cond_0
    return p2
.end method


# virtual methods
.method public add(Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController$OnAlbumSizeChangedListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mOnAlbumSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mOnAlbumSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method

.method public fireAlbumSizeChanged(Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "albumView"    # Landroid/widget/ImageView;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 96
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 100
    .local v4, "imageWidth":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 102
    .local v3, "imageHeight":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 103
    .local v6, "viewWidth":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 106
    .local v5, "viewHeight":I
    mul-int v7, v5, v4

    mul-int v8, v6, v3

    if-gt v7, v8, :cond_1

    .line 107
    mul-int v7, v4, v5

    div-int v1, v7, v3

    .line 108
    .local v1, "albumWidth":I
    move v0, v5

    .line 113
    .local v0, "albumHeight":I
    :goto_1
    sget-object v7, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Album size w : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->fireOnAlbumSizeChanged(II)V

    goto :goto_0

    .line 110
    .end local v0    # "albumHeight":I
    .end local v1    # "albumWidth":I
    :cond_1
    mul-int v7, v3, v6

    div-int v0, v7, v4

    .line 111
    .restart local v0    # "albumHeight":I
    move v1, v6

    .restart local v1    # "albumWidth":I
    goto :goto_1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v5, -0x1

    .line 48
    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLayoutChange view : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 51
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 53
    .local v0, "height":I
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->getDisplayWidth(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewWidth:I

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->getDisplayHeight(Landroid/view/View;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewHeight:I

    .line 55
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumWidth:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumHeight:I

    if-eq v2, v5, :cond_0

    .line 56
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumWidth:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57
    iget v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumHeight:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 60
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->fireOnAlbumSizeChanged(II)V

    .line 61
    sget-object v2, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify size changed w : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onSelectedAlbumSizeChanged(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;II)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, -0x1

    .line 66
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumWidth:I

    .line 67
    iput p3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumHeight:I

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewHeight:I

    if-eq v0, v1, :cond_0

    .line 69
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumWidth:I

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 70
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mAlbumHeight:I

    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->mViewHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 72
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->fireOnAlbumSizeChanged(II)V

    .line 73
    sget-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/AlbumTagPositionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify size changed w : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
