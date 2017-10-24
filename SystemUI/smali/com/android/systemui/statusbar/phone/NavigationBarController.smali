.class public Lcom/android/systemui/statusbar/phone/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarController$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkBarVisivility:I

.field private mDarkNavigation:Z

.field private mFullscreenVisivility:I

.field private mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNavigationBarMode:I

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 67
    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 64
    return-void
.end method

.method private isDark(III)Z
    .locals 6
    .param p1, "vis"    # I
    .param p2, "fullscreenVis"    # I
    .param p3, "navigationBarMode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    if-nez p3, :cond_1

    const/4 v1, 0x1

    .line 109
    .local v1, "isOpaqueBar":Z
    :goto_0
    if-eq p3, v5, :cond_0

    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 110
    .local v2, "isSemiTransparentBar":Z
    :goto_1
    and-int/lit8 v3, p1, 0x10

    if-nez v3, :cond_3

    .line 111
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    .line 112
    .local v0, "isDarkBar":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 113
    return v4

    .line 108
    .end local v0    # "isDarkBar":Z
    .end local v1    # "isOpaqueBar":Z
    .end local v2    # "isSemiTransparentBar":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isOpaqueBar":Z
    goto :goto_0

    .line 109
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isSemiTransparentBar":Z
    goto :goto_1

    .line 110
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "isDarkBar":Z
    goto :goto_2

    .line 111
    .end local v0    # "isDarkBar":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isDarkBar":Z
    goto :goto_2

    .line 114
    :cond_5
    if-eqz v2, :cond_6

    .line 115
    return v5

    .line 117
    :cond_6
    return v0
.end method

.method private update()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    .line 120
    return-void
.end method


# virtual methods
.method public getBarMode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    return v0
.end method

.method public getIconColor(Z)I
    .locals 10
    .param p1, "isLight"    # Z

    .prologue
    const v5, 0x7f0b0166

    const v6, -0x777778

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 125
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hasDockedStack()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isDockedStackMinimized()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 127
    .local v1, "isDockedMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 128
    :cond_1
    if-eqz v1, :cond_6

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    if-eqz v1, :cond_4

    .line 134
    :cond_3
    const/4 p1, 0x0

    .line 137
    .end local p1    # "isLight":Z
    :cond_4
    if-eqz p1, :cond_7

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    .line 125
    .end local v1    # "isDockedMode":Z
    .restart local p1    # "isLight":Z
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "isDockedMode":Z
    goto :goto_0

    .line 129
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    return v4

    .line 140
    .end local p1    # "isLight":Z
    :cond_7
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-nez v4, :cond_8

    .line 141
    return v6

    .line 144
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarCurrentColor()I

    move-result v2

    .line 145
    .local v2, "navColor":I
    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0164

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    if-ne v2, v4, :cond_a

    .line 146
    :cond_9
    return v6

    .line 149
    :cond_a
    const/4 v4, 0x3

    new-array v3, v4, [F

    .line 150
    .local v3, "pixelHSV":[F
    invoke-static {v2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 151
    const-string/jumbo v4, "NavigationBarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(IconColor Calc) current Color H : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", S : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", V : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v0, -0x777778

    .line 154
    .local v0, "color":I
    aget v4, v3, v9

    float-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_b

    aget v4, v3, v8

    float-to-double v4, v4

    const-wide v6, 0x3fee666666666666L    # 0.95

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_b

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0170

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 163
    :goto_1
    return v0

    .line 156
    :cond_b
    aget v4, v3, v9

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_c

    aget v4, v3, v8

    float-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_c

    .line 157
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0171

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 158
    :cond_c
    aget v4, v3, v8

    float-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_d

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0172

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 161
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0b016f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public isDarkNavigation()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    return v0
.end method

.method public onSystemUiVisibilityChanged(IIIZI)V
    .locals 13
    .param p1, "vis"    # I
    .param p2, "fullscreenVis"    # I
    .param p3, "mask"    # I
    .param p4, "nbModeChanged"    # Z
    .param p5, "navigationBarMode"    # I

    .prologue
    .line 74
    const-string/jumbo v8, "NavigationBarController"

    const-string/jumbo v9, "vis = %s, fullscreenVis = %s, nbModeChanged = %b navigationBarMode = %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    .line 74
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    move/from16 v0, p5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    .line 78
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    .line 79
    .local v5, "oldDarkBar":Z
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    .line 80
    .local v6, "oldDarkVis":I
    move/from16 v0, p3

    not-int v8, v0

    and-int/2addr v8, v6

    and-int/lit8 v9, p1, 0x10

    and-int v9, v9, p3

    or-int v3, v8, v9

    .line 81
    .local v3, "newDarkVis":I
    xor-int v1, v3, v6

    .line 83
    .local v1, "diffDarkVis":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    .line 84
    .local v7, "oldFullscreen":I
    move v4, p2

    .line 85
    .local v4, "newFullscreen":I
    xor-int v2, p2, v7

    .line 87
    .local v2, "diffFullscreen":I
    if-nez p4, :cond_0

    .line 88
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_3

    .line 90
    :cond_0
    :goto_0
    move/from16 v0, p5

    invoke-direct {p0, v3, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDark(III)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    .line 91
    if-nez p4, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    if-eq v5, v8, :cond_2

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->update()V

    .line 95
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    .line 96
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    .line 73
    return-void

    .line 89
    :cond_3
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_2

    goto :goto_0
.end method
