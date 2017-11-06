.class public Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;
.source "EdgeLightingAppMaskEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_EDGE_COLOR:I

.field mContainerAnimator:Landroid/animation/ValueAnimator;

.field private mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 113
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->DEFAULT_EDGE_COLOR:I

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->DEFAULT_EDGE_COLOR:I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->DEFAULT_EDGE_COLOR:I

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->init()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;)Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    return-object v0
.end method

.method private containerAlphaAnimation(FF)V
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " containerAlphaAnimation from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->TAG:Ljava/lang/String;

    const-string v1, " containerAlphaAnimation  cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect$2;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->containerAlphaAnimation(FF)V

    .line 51
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->init()V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 57
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_application_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    sget v1, Lcom/samsung/android/edgelighting/R$id;->edge_lighting_effect:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setScreenSize(II)V

    .line 62
    return-void
.end method

.method public setAppEdgeEffectInfo(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setEffectColors([I)V

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setStrokeWidth(F)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getRotateDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRotateDuration(J)V

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setStrokeAlpha(F)V

    .line 141
    :cond_2
    return-void
.end method

.method public setEdgeEffectInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->setEffectColors([I)V

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setStrokeWidth(F)V

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRotateDuration(J)V

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setStrokeAlpha(F)V

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setRadiusWeight(F)V

    .line 157
    :cond_3
    return-void
.end method

.method public setEffectColors([I)V
    .locals 4
    .param p1, "effectColors"    # [I

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->setEffectColors([I)V

    .line 118
    const v0, -0xf0551d

    .line 119
    .local v0, "color":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 120
    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aget v2, p1, v2

    or-int v0, v1, v2

    .line 121
    aget v1, p1, v3

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setSubColor(I)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->setMainColor(I)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->resetLightingAnimation()V

    .line 129
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->show()V

    .line 44
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->containerAlphaAnimation(FF)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingAppMaskEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeAppLightEffectView;->show()V

    .line 46
    return-void
.end method
