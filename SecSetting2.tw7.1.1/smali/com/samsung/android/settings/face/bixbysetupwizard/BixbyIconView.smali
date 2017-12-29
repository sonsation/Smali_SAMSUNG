.class public Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;
.super Landroid/view/View;
.source "BixbyIconView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->init()V

    .line 99
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    const v3, 0x7f0200c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyBresource(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyCircleRadius(F)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x320

    const/16 v2, 0x2dd

    const/16 v3, 0x3e8

    .line 115
    const/16 v4, 0x320

    const/16 v5, 0x2dd

    const/16 v6, 0x3e8

    .line 116
    const/16 v7, 0xfa

    const/16 v8, 0xe9

    const/16 v9, 0x1d3

    .line 117
    const/16 v10, 0xfa

    const/16 v11, 0xe9

    const/16 v12, 0x1d3

    .line 114
    invoke-virtual/range {v0 .. v12}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitDurations(IIIIIIIIIIII)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 119
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    .line 120
    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    .line 121
    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    .line 122
    const/16 v4, 0x46

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    .line 123
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    .line 124
    const/16 v6, 0x7a

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    .line 125
    const/16 v7, 0x4c

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v7

    .line 126
    const/16 v8, 0xce

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v8

    .line 118
    invoke-virtual/range {v0 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setDisappearDistances(FFFFFFFF)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    .line 128
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    .line 127
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitSmaParticleSizes(FFFFFF)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    .line 130
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    .line 129
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMidParticleSizes(FFFFFF)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v2

    .line 132
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->dpToPixel(I)F

    move-result v6

    .line 131
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMaxParticleSizes(FFFFFF)V

    .line 109
    return-void
.end method


# virtual methods
.method public addMidCircleBig()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleBig()V

    .line 171
    return-void
.end method

.method public addMidCircleMid()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleMid()V

    .line 178
    return-void
.end method

.method public addMidCircleSmall()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleSmall()V

    .line 185
    return-void
.end method

.method public addSmallCircleBig()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleBig()V

    .line 192
    return-void
.end method

.method public addSmallCircleMid()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleMid()V

    .line 199
    return-void
.end method

.method public addSmallCircleSmall()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleSmall()V

    .line 206
    return-void
.end method

.method public dpToPixel(I)F
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 150
    int-to-float v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onDraw(Landroid/graphics/Canvas;)Z

    .line 158
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onSizeChanged(IIII)V

    .line 163
    return-void
.end method

.method public setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z
    .locals 1
    .param p1, "size"    # F
    .param p2, "duration"    # F
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setBixbySizeAnimation(FFLandroid/view/animation/Interpolator;)Z

    move-result v0

    return v0
.end method

.method public setLogoView(Landroid/view/View;)V
    .locals 1
    .param p1, "logo"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyIconView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyLogoView(Landroid/view/View;)V

    .line 139
    return-void
.end method
