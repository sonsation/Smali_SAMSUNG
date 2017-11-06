.class final Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;
.super Ljava/lang/Object;
.source "LockPlayerDragVIImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVI;


# static fields
.field private static final DEFAULT_ALPHA:F = 1.0f

.field private static final DEFAULT_SCALE:F = 1.0f

.field private static final DIV_VALUE_FOR_PIVOT:F = 2.0f

.field static final MAX_ALPHA:F = 0.0f

.field static final MAX_TRANS_TIME:I = 0x64

.field private static final RESET_TRANS_TIME:I = 0x14a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPivotView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "pivotView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mPivotView:Landroid/view/View;

    .line 33
    return-void
.end method

.method private setTrans(Landroid/view/View;FF)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .param p3, "scale"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mPivotView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mPivotView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 93
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 94
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleRate"    # F

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->TAG:Ljava/lang/String;

    const-string v1, "addView. but it was already registered"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    return-void
.end method

.method public maxTransView()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 68
    .local v1, "value":F
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 69
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-float v5, v6, v1

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-float v5, v6, v1

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 72
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 74
    .end local v0    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    .end local v1    # "value":F
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resetTrans()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x14a

    const/high16 v5, 0x3f800000    # 1.0f

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 81
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 82
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 84
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 86
    .end local v0    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public transView(FF)V
    .locals 18
    .param p1, "distance"    # F
    .param p2, "maxDistance"    # F

    .prologue
    .line 49
    div-float v9, p1, p2

    float-to-double v4, v9

    .line 50
    .local v4, "checkValue":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v4

    sub-double v2, v12, v14

    .line 54
    .local v2, "alpha":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->mMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 55
    .local v6, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 56
    .local v7, "value":F
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 57
    .local v8, "view":Landroid/view/View;
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v16, v16, v4

    add-double v10, v14, v16

    .line 58
    .local v10, "viewScale":D
    double-to-float v9, v2

    double-to-float v13, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v13}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerDragVIImpl;->setTrans(Landroid/view/View;FF)V

    goto :goto_0

    .line 60
    .end local v6    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Float;>;"
    .end local v7    # "value":F
    .end local v8    # "view":Landroid/view/View;
    .end local v10    # "viewScale":D
    :cond_0
    return-void
.end method
