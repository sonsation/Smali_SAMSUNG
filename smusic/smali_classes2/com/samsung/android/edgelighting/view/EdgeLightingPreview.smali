.class public Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;
.super Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;
.source "EdgeLightingPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_EDGE_COLOR:I

.field private mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

.field private mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->DEFAULT_EDGE_COLOR:I

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->DEFAULT_EDGE_COLOR:I

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const v0, -0xf0551d

    iput v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->DEFAULT_EDGE_COLOR:I

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->init()V

    .line 35
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->hide()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V

    .line 70
    :cond_1
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->init()V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_notification_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v1, Lcom/samsung/android/edgelighting/R$id;->edge_lighting_effect:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .line 44
    sget v1, Lcom/samsung/android/edgelighting/R$id;->noti_morph_view:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edgelighting/view/MorphView;

    iput-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    .line 46
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setScreenSize(II)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mScreenWidth:I

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mScreenHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setScreenSize(II)V

    .line 48
    return-void
.end method

.method public setEffectColors([I)V
    .locals 4
    .param p1, "effectColors"    # [I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->setEffectColors([I)V

    .line 75
    const v0, -0xf0551d

    .line 76
    .local v0, "color":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 77
    const/4 v1, 0x0

    aget v1, p1, v1

    or-int v0, v3, v1

    .line 78
    array-length v1, p1

    if-le v1, v2, :cond_0

    aget v1, p1, v2

    if-eqz v1, :cond_0

    .line 79
    aget v1, p1, v2

    or-int/2addr v1, v3

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setMainColor(I)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->setPreviewIconColor(I)V

    .line 86
    return-void
.end method

.method public setPreviewInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getFillFullColor()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setFillToastColor(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getTickerText()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setNotiText([Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->setEffectColors([I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeWidth(F)V

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeAlpha(F)V

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRadiusWeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setRadiusWeight(F)V

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getRotateDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setRotateDuration(J)V

    .line 108
    :cond_3
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingView;->show()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->show()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mMorphView:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    .line 59
    :cond_0
    return-void
.end method

.method public updatePreviewInfo(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/android/edgelighting/EdgeEffectInfo;

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getEffectColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->setEffectColors([I)V

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeWidth(F)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setStrokeAlpha(F)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/EdgeEffectInfo;->getStrokeAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setAlpha(F)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingPreview;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->invalidate()V

    .line 122
    return-void
.end method
