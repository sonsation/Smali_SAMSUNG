.class public Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;
.super Landroid/widget/RelativeLayout;
.source "TrackSelectionHeaderView.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/ClipableView;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClipTop:I

.field private mLastY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mClipTop:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mLastY:F

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const v1, 0x7f040156

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->addView(Landroid/view/View;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public clipTop(I)V
    .locals 4
    .param p1, "top"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mClipTop:I

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->getY()F

    move-result v0

    .line 42
    .local v0, "currentY":F
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mLastY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipTop : top - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mLastY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mLastY:F

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->invalidate()V

    .line 47
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mClipTop:I

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 52
    .local v0, "clip":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mLastY:F

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "count":I
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 56
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->mClipTop:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/TrackSelectionHeaderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 62
    :cond_1
    return-void

    .line 51
    .end local v0    # "clip":Z
    .end local v1    # "count":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
