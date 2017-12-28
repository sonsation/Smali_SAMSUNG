.class public Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;
.super Landroid/widget/LinearLayout;
.source "MultiSelectHelpDialog.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectHelpDialog"


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCancelButton:Landroid/widget/ImageView;

.field private mCurX:I

.field private mInitPage:I

.field private mInitX:I

.field private mIsHotseat:Z

.field private mIsTopPicker:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mPadding:I

.field private mPivotX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 52
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 54
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    .line 55
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 57
    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 58
    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    .line 71
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateDialog(ZZ)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 258
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 260
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 263
    :cond_0
    if-eqz p2, :cond_4

    .line 264
    if-eqz p1, :cond_2

    .line 265
    .local v3, "value":F
    :goto_0
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 266
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 267
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [F

    aput v3, v7, v5

    invoke-static {p0, v6, v7}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setPivotX(F)V

    .line 270
    iget-boolean v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setPivotY(F)V

    .line 272
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    .line 273
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v5

    aput-object v2, v6, v8

    const/4 v5, 0x2

    aput-object v0, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 274
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 275
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$2;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 311
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v3    # "value":F
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v4

    .line 264
    goto :goto_0

    .line 270
    .restart local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .restart local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .restart local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .restart local v3    # "value":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    .line 303
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    .end local v3    # "value":F
    :cond_4
    if-eqz p1, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setVisibility(I)V

    .line 304
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleX(F)V

    .line 306
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleY(F)V

    .line 307
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setAlpha(F)V

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->bringToFront()V

    goto :goto_2

    .line 303
    :cond_5
    const/16 v4, 0x8

    goto :goto_3
.end method

.method private layout(Landroid/view/View;)Z
    .locals 34
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 92
    .local v22, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    .line 93
    .local v26, "widthPixels":I
    const v29, 0x7f0a0168

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 94
    .local v20, "pickerWidth":I
    const v29, 0x7f0a0167

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 95
    .local v18, "pickerMargin":I
    const v29, 0x7f0a016b

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 96
    .local v7, "dialogMarginTop":I
    const v29, 0x7f0a00b3

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 97
    .local v6, "dialogMarginLeft":I
    const v29, 0x7f0a016c

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 98
    .local v8, "dialogPadding":I
    const v29, 0x7f0a002f

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 99
    .local v16, "panelHeight":I
    const v29, 0x7f0a016f

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 101
    .local v24, "translationY":I
    const v29, 0x7f1100c5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 102
    .local v19, "pickerTop":Landroid/view/View;
    const v29, 0x7f1100c9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 104
    .local v17, "pickerBottom":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 105
    .local v14, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v14, :cond_1

    iget-wide v0, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x65

    cmp-long v29, v30, v32

    if-nez v29, :cond_1

    const/16 v29, 0x1

    :goto_0
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    .line 107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 108
    .local v11, "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v29

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 112
    .local v12, "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :goto_2
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v13

    .line 114
    .local v13, "iconSize":I
    :goto_3
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [I

    .line 115
    .local v4, "absLoc":[I
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 117
    const/16 v29, 0x0

    aget v29, v4, v29

    if-ltz v29, :cond_0

    const/16 v29, 0x0

    aget v29, v4, v29

    move/from16 v0, v29

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 118
    :cond_0
    const-string v29, "MultiSelectHelpDialog"

    const-string v30, "The help bubble does not exist on current screen"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v29, 0x0

    .line 192
    .end local v24    # "translationY":I
    :goto_4
    return v29

    .line 105
    .end local v4    # "absLoc":[I
    .end local v11    # "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .end local v12    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    .end local v13    # "iconSize":I
    .restart local v24    # "translationY":I
    :cond_1
    const/16 v29, 0x0

    goto :goto_0

    .line 107
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 108
    .restart local v11    # "gridIconInfo":Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    .line 109
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v29

    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    .line 110
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v12, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    goto :goto_2

    .line 112
    .restart local v12    # "gridInfo":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    :cond_5
    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v13

    goto :goto_3

    .line 121
    .restart local v4    # "absLoc":[I
    .restart local v13    # "iconSize":I
    :cond_6
    const/16 v29, 0x0

    aget v30, v4, v29

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v31

    sub-int v31, v31, v13

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    aput v30, v4, v29

    .line 122
    const/16 v30, 0x1

    aget v31, v4, v30

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v29

    :goto_5
    add-int v29, v29, v31

    aput v29, v4, v30

    .line 124
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->measure(II)V

    .line 126
    mul-int/lit8 v29, v6, 0x2

    sub-int v15, v26, v29

    .line 127
    .local v15, "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredWidth()I

    move-result v29

    move/from16 v0, v29

    if-lt v0, v15, :cond_7

    .line 128
    const v29, 0x7f1100c7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 129
    .local v25, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    sub-int v30, v15, v8

    const v31, 0x7f0a016a

    .line 130
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->measure(II)V

    .line 134
    .end local v25    # "tv":Landroid/widget/TextView;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredWidth()I

    move-result v9

    .line 135
    .local v9, "dialogWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getMeasuredHeight()I

    move-result v5

    .line 136
    .local v5, "dialogHeight":I
    const/16 v29, 0x1

    aget v29, v4, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v23, v0

    .line 138
    .local v23, "transY":F
    const/16 v29, 0x0

    aget v29, v4, v29

    div-int/lit8 v30, v13, 0x2

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    int-to-float v0, v9

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    sub-float v27, v29, v30

    .line 139
    .local v27, "x":F
    int-to-float v0, v6

    move/from16 v29, v0

    cmpg-float v29, v27, v29

    if-gez v29, :cond_c

    .line 140
    int-to-float v0, v6

    move/from16 v27, v0

    .line 144
    :cond_8
    :goto_6
    const/16 v29, 0x0

    aget v29, v4, v29

    div-int/lit8 v30, v13, 0x2

    add-int v29, v29, v30

    div-int/lit8 v30, v20, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v29, v27

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    .line 146
    .local v21, "pickerX":I
    div-int/lit8 v29, v20, 0x2

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPivotX:I

    .line 148
    sget-boolean v29, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v29, :cond_9

    .line 149
    sub-int v29, v9, v20

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    add-int v21, v21, v29

    .line 152
    sub-int v29, v26, v9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setLeft(I)V

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setRight(I)V

    .line 155
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    .line 157
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 158
    const/16 v28, 0x0

    .line 159
    .local v28, "y":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v23, v29

    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gtz v29, :cond_d

    .line 160
    int-to-float v0, v13

    move/from16 v29, v0

    add-float v29, v29, v23

    int-to-float v0, v7

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 161
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    .line 165
    :goto_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelectSlideVI()Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    .line 166
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v29

    if-nez v29, :cond_e

    .end local v24    # "translationY":I
    :goto_8
    add-int v29, v28, v24

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    .line 165
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setY(F)V

    .line 168
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsTopPicker:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 172
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    const/16 v29, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getX()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 181
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleX(F)V

    .line 182
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setScaleY(F)V

    .line 183
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setAlpha(F)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    .line 187
    .local v10, "folderView":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v29

    if-eqz v29, :cond_a

    .line 188
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 192
    .end local v10    # "folderView":Lcom/android/launcher3/folder/view/FolderView;
    :cond_a
    const/16 v29, 0x1

    goto/16 :goto_4

    .line 122
    .end local v5    # "dialogHeight":I
    .end local v9    # "dialogWidth":I
    .end local v15    # "maxWidth":I
    .end local v21    # "pickerX":I
    .end local v23    # "transY":F
    .end local v27    # "x":F
    .end local v28    # "y":I
    .restart local v24    # "translationY":I
    :cond_b
    invoke-virtual {v12}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v29

    goto/16 :goto_5

    .line 141
    .restart local v5    # "dialogHeight":I
    .restart local v9    # "dialogWidth":I
    .restart local v15    # "maxWidth":I
    .restart local v23    # "transY":F
    .restart local v27    # "x":F
    :cond_c
    int-to-float v0, v9

    move/from16 v29, v0

    add-float v29, v29, v27

    sub-int v30, v26, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_8

    .line 142
    sub-int v29, v26, v9

    sub-int v29, v29, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v27, v0

    goto/16 :goto_6

    .line 163
    .restart local v21    # "pickerX":I
    .restart local v28    # "y":I
    :cond_d
    int-to-float v0, v5

    move/from16 v29, v0

    sub-float v29, v23, v29

    int-to-float v0, v7

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_7

    .line 166
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 175
    .end local v24    # "translationY":I
    :cond_f
    const/16 v29, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method


# virtual methods
.method public hide(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 208
    const-string v0, "MultiSelectHelpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide help bubble - animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->animateDialog(ZZ)V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 212
    return-void
.end method

.method public isShowingHelpDialog()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 79
    const v0, 0x7f1100c8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCancelButton:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCancelButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public onPageChange(III)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 241
    iget-boolean v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, p3, -0x1

    sub-int v2, v3, p1

    .line 246
    .local v2, "pageIndex":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int v0, v3, v4

    .line 247
    .local v0, "initPage":I
    iget v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    :goto_2
    mul-int v1, v4, v3

    .line 249
    .local v1, "padding":I
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-eq v2, v3, :cond_4

    .line 250
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    add-int/2addr v3, v0

    sub-int/2addr v3, p2

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    .line 251
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    goto :goto_0

    .end local v0    # "initPage":I
    .end local v1    # "padding":I
    .end local v2    # "pageIndex":I
    :cond_2
    move v2, p1

    .line 245
    goto :goto_1

    .line 247
    .restart local v0    # "initPage":I
    .restart local v2    # "pageIndex":I
    :cond_3
    add-int/lit8 v3, v2, -0x1

    goto :goto_2

    .line 253
    .restart local v1    # "padding":I
    :cond_4
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    goto :goto_0
.end method

.method public onPageScroll(IIIII)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 220
    iget-boolean v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mIsHotseat:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-boolean v3, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p5, -0x1

    sub-int v2, v3, p1

    .line 226
    .local v2, "pageIndex":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 227
    iput v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 228
    if-nez v2, :cond_4

    move v3, p4

    :goto_2
    iput v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mPadding:I

    .line 232
    :cond_2
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mCurX:I

    add-int/2addr v3, p4

    sub-int v0, v3, p2

    .line 233
    .local v0, "curX":I
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ne v2, v3, :cond_5

    move v1, v0

    .line 236
    .local v1, "finalX":I
    :goto_3
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->setX(F)V

    goto :goto_0

    .end local v0    # "curX":I
    .end local v1    # "finalX":I
    .end local v2    # "pageIndex":I
    :cond_3
    move v2, p1

    .line 224
    goto :goto_1

    .line 228
    .restart local v2    # "pageIndex":I
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 229
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v3, v2

    sub-int v3, p4, v3

    div-int/2addr v3, v2

    .line 228
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_2

    .line 233
    .restart local v0    # "curX":I
    :cond_5
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    .line 234
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitX:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3
.end method

.method public show(Landroid/view/View;Z)V
    .locals 3
    .param p1, "sourceView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 196
    const-string v0, "MultiSelectHelpDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show help bubble - animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->hide(Z)V

    .line 201
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->mInitPage:I

    .line 202
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->layout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->animateDialog(ZZ)V

    .line 205
    :cond_1
    return-void
.end method
