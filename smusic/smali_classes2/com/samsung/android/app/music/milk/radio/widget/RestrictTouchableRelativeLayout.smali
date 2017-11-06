.class public Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RestrictTouchableRelativeLayout.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableContainer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTouchableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->mTouchableViews:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->setClickable(Z)V

    .line 37
    return-void
.end method

.method private dispatchTransformTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 74
    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 76
    .local v0, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 77
    return v0
.end method

.method private hit(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->pointInView(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;II)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 86
    .local v4, "xy":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 87
    aget v1, v4, v6

    .line 88
    .local v1, "left":I
    aget v3, v4, v5

    .line 89
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 90
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 91
    .local v0, "bottom":I
    if-ge v1, v2, :cond_0

    if-ge v3, v0, :cond_0

    if-lt p2, v1, :cond_0

    if-ge p2, v2, :cond_0

    if-lt p3, v3, :cond_0

    if-ge p3, v0, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addTouchableView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->mTouchableViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 57
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->hit(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 67
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 56
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 62
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->mTouchableViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 63
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->hit(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->dispatchTransformTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_1

    .line 67
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/widget/RestrictTouchableRelativeLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout. left - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
