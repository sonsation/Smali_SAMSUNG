.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;
.super Landroid/view/View;
.source "ParticleView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->init()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-direct {v0, p1, p0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->init()V

    .line 140
    return-void
.end method

.method private dpToPixel(I)F
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 185
    int-to-float v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private init()V
    .locals 13

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mContext:Landroid/content/Context;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mContext:Landroid/content/Context;

    const v3, 0x7f0200c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyBresource(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyCircleRadius(F)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x320

    const/16 v2, 0x2dd

    const/16 v3, 0x3e8

    .line 155
    const/16 v4, 0x320

    const/16 v5, 0x2dd

    const/16 v6, 0x3e8

    const/16 v7, 0xfa

    const/16 v8, 0xe9

    .line 156
    const/16 v9, 0x1d3

    const/16 v10, 0xfa

    const/16 v11, 0xe9

    const/16 v12, 0x1d3

    .line 154
    invoke-virtual/range {v0 .. v12}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitDurations(IIIIIIIIIIII)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x34

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v2

    .line 158
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0x46

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v4

    .line 159
    const/16 v5, 0x40

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x7a

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v6

    .line 160
    const/16 v7, 0x4c

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v7

    const/16 v8, 0xce

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v8

    .line 157
    invoke-virtual/range {v0 .. v8}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setDisappearDistances(FFFFFFFF)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v2

    .line 163
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v4

    .line 164
    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0xe

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v6

    .line 162
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitSmaParticleSizes(FFFFFF)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v2

    .line 167
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v4

    .line 168
    const/16 v5, 0xe

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x12

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v6

    .line 166
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMidParticleSizes(FFFFFF)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v2

    .line 170
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v4

    .line 171
    const/16 v5, 0x12

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x16

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v6

    .line 169
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitMaxParticleSizes(FFFFFF)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v2

    .line 174
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v4

    .line 175
    const/16 v5, 0x12

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v5

    const/16 v6, 0x16

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->dpToPixel(I)F

    move-result v6

    .line 173
    invoke-virtual/range {v0 .. v6}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitFulParticleSizes(FFFFFF)V

    .line 150
    return-void
.end method


# virtual methods
.method public addFulCircleBig()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addFulCircleBig()V

    .line 313
    return-void
.end method

.method public addFulCircleMid()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addFulCircleMid()V

    .line 320
    return-void
.end method

.method public addFulCircleSmall()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addFulCircleSmall()V

    .line 327
    return-void
.end method

.method public addMaxCircleBig()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMaxCircleBig()V

    .line 228
    return-void
.end method

.method public addMaxCircleMid()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMaxCircleMid()V

    .line 235
    return-void
.end method

.method public addMaxCircleSmall()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMaxCircleSmall()V

    .line 242
    return-void
.end method

.method public addMidCircleBig()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleBig()V

    .line 207
    return-void
.end method

.method public addMidCircleMid()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleMid()V

    .line 214
    return-void
.end method

.method public addMidCircleSmall()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addMidCircleSmall()V

    .line 221
    return-void
.end method

.method public addSmaCircleBig()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleBig()V

    .line 292
    return-void
.end method

.method public addSmaCircleMid()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleMid()V

    .line 299
    return-void
.end method

.method public addSmaCircleSmall()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->addSmaCircleSmall()V

    .line 306
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onDraw(Landroid/graphics/Canvas;)Z

    .line 194
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->onSizeChanged(IIII)V

    .line 199
    return-void
.end method

.method public setLogoView(Landroid/view/View;)V
    .locals 1
    .param p1, "logo"    # Landroid/view/View;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->setInitBixbyLogoView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public startBixbyScaleAnimation(FFFF)Z
    .locals 1
    .param p1, "scale1"    # F
    .param p2, "duration1"    # F
    .param p3, "scale2"    # F
    .param p4, "duration2"    # F

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleView;->mVIBixbyManager:Lvi/sec/com/bixbyvilibrary/VIBixbyManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvi/sec/com/bixbyvilibrary/VIBixbyManager;->startBixbyScaleAnimation(FFFF)Z

    move-result v0

    return v0
.end method
