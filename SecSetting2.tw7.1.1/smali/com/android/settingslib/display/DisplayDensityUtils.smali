.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;,
        Lcom/android/settingslib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static synthetic -com_android_settingslib_display_DisplayDensityUtils_lambda$1(II)V
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 222
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to clear forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic -com_android_settingslib_display_DisplayDensityUtils_lambda$2(III)V
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 243
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to save forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 55
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 61
    new-array v0, v3, [I

    .line 62
    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    aput v1, v0, v2

    .line 61
    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 70
    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v1, v0, v2

    .line 71
    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v1, v0, v3

    .line 72
    sget v1, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 69
    sput-object v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v22, 0x0

    .line 89
    invoke-static/range {v22 .. v22}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v6

    .line 91
    .local v6, "defaultDensity":I
    if-gtz v6, :cond_0

    .line 92
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 93
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 94
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 95
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 100
    .local v20, "res":Landroid/content/res/Resources;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v4, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 104
    .local v4, "currentDensity":I
    const/4 v5, -0x1

    .line 107
    .local v5, "currentDensityIndex":I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 108
    .local v15, "minDimensionPx":I
    mul-int/lit16 v0, v15, 0xa0

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v12, v0, 0x140

    .line 109
    .local v12, "maxDensity":I
    int-to-float v0, v12

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3fc00000    # 1.5f

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 110
    .local v13, "maxScale":F
    const v16, 0x3f59999a    # 0.85f

    .line 111
    .local v16, "minScale":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    const v23, 0x3db851ec    # 0.09f

    div-float v22, v22, v23

    .line 112
    const/16 v23, 0x0

    sget-object v24, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 111
    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 114
    .local v18, "numLarger":I
    const/16 v22, 0x0

    sget-object v23, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 113
    const v24, 0x3fd55553

    move/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 116
    .local v19, "numSmaller":I
    add-int/lit8 v22, v19, 0x1

    add-int v22, v22, v18

    move/from16 v0, v22

    new-array v9, v0, [Ljava/lang/String;

    .line 117
    .local v9, "entries":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 118
    .local v21, "values":[I
    const/4 v3, 0x0

    .line 120
    .local v3, "curIndex":I
    if-lez v19, :cond_2

    .line 121
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3e199998    # 0.14999998f

    div-float v11, v23, v22

    .line 122
    .local v11, "interval":F
    add-int/lit8 v10, v19, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_2

    .line 124
    int-to-float v0, v6

    move/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v24, v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    and-int/lit8 v7, v22, -0x2

    .line 125
    .local v7, "density":I
    if-ne v4, v7, :cond_1

    .line 126
    move v5, v3

    .line 128
    :cond_1
    sget-object v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 129
    aput v7, v21, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 122
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 134
    .end local v7    # "density":I
    .end local v10    # "i":I
    .end local v11    # "interval":F
    :cond_2
    if-ne v4, v6, :cond_3

    .line 135
    move v5, v3

    .line 137
    :cond_3
    aput v6, v21, v3

    .line 138
    sget v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 141
    if-lez v18, :cond_5

    .line 142
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 143
    .restart local v11    # "interval":F
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    .line 145
    int-to-float v0, v6

    move/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v11

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    and-int/lit8 v7, v22, -0x2

    .line 146
    .restart local v7    # "density":I
    if-ne v4, v7, :cond_4

    .line 147
    move v5, v3

    .line 149
    :cond_4
    aput v7, v21, v3

    .line 150
    sget-object v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 143
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 156
    .end local v7    # "density":I
    .end local v10    # "i":I
    .end local v11    # "interval":F
    :cond_5
    if-ltz v5, :cond_6

    .line 157
    move v8, v5

    .line 171
    .local v8, "displayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 172
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 173
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 174
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 88
    return-void

    .line 161
    .end local v8    # "displayIndex":I
    :cond_6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v17, v22, 0x1

    .line 162
    .local v17, "newLength":I
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v21

    .line 163
    aput v4, v21, v3

    .line 165
    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "entries":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 166
    .restart local v9    # "entries":[Ljava/lang/String;
    sget v22, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 168
    move v8, v3

    .restart local v8    # "displayIndex":I
    goto :goto_2
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 219
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 3
    .param p0, "displayId"    # I

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 203
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 204
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v2, -0x1

    return v2
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "density"    # I

    .prologue
    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 240
    .local v0, "userId":I
    new-instance v1, Lcom/android/settingslib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
