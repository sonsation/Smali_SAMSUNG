.class Landroid/widget/ActionMenuPresenter$SemOverflowImage;
.super Landroid/widget/ImageView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowImage"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mIsOpenOverflowMenu:Z

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1249
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1250
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1247
    iput-boolean v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mIsOpenOverflowMenu:Z

    .line 1252
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1253
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1254
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1258
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1259
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 1260
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1265
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1266
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 1267
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    .line 1249
    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    .prologue
    .line 1483
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1485
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1487
    .local v1, "show":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1488
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_2

    .line 1489
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1494
    :goto_1
    if-eqz v1, :cond_3

    .line 1495
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    :goto_2
    return-void

    .line 1485
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "show":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_0

    .line 1491
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x10807d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1497
    :cond_3
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 1320
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v8, 0x10102f6

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1273
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1276
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v3, v7, v4, v8, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1278
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x25

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1281
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1285
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {v3, v7, v4, v8, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1288
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1289
    .local v2, "resId":I
    if-eq v2, v5, :cond_0

    .line 1290
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1291
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1298
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->changeButtonBackground()V

    .line 1272
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1328
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1329
    const-string/jumbo v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1330
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1327
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1303
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    return v2

    .line 1307
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1308
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mIsOpenOverflowMenu:Z

    .line 1310
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowImage;->mIsOpenOverflowMenu:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->semGetHoverPopup(IZ)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 1312
    .local v0, "hoverPopupWindow":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_1

    .line 1313
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1316
    .end local v0    # "hoverPopupWindow":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_1
    return v2
.end method

.method public performLongClick()Z
    .locals 26

    .prologue
    .line 1339
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->performLongClick()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1340
    const/16 v23, 0x1

    return v23

    .line 1343
    :cond_0
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 1344
    .local v17, "screenPos":[I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1345
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1349
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050017

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 1350
    .local v19, "statusBarHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x1050018

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 1351
    .local v11, "navigationBarHeight":F
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x112006a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 1352
    .local v9, "hasNavigationBar":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v20

    .line 1353
    .local v20, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 1354
    .local v10, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1355
    .local v5, "density":F
    const-string/jumbo v23, "window"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1357
    .local v6, "display":Landroid/view/Display;
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1358
    .local v13, "realDisplayMetrics":Landroid/util/DisplayMetrics;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1359
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v13}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1360
    invoke-virtual {v6, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1362
    iget v15, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1363
    .local v15, "realScreenWidth":I
    iget v14, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1364
    .local v14, "realScreenHeight":I
    iget v12, v13, Landroid/util/DisplayMetrics;->density:F

    .line 1366
    .local v12, "realDensity":F
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 1367
    .local v18, "screenWidth":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 1368
    .local v16, "screenHeight":I
    const/16 v21, 0x0

    .line 1369
    .local v21, "xOffset":I
    const/16 v22, 0x0

    .line 1370
    .local v22, "yOffset":I
    const/16 v23, 0x1

    aget v23, v17, v23

    add-int v23, v23, v10

    sub-int v22, v23, v19

    .line 1371
    const/16 v23, 0x0

    aget v23, v17, v23

    add-int v23, v23, v20

    sub-int v23, v15, v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v24

    sub-int v24, v20, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v24

    add-int v21, v23, v24

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1374
    .local v3, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v23

    if-nez v23, :cond_2

    .line 1375
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 1376
    if-eqz v9, :cond_1

    .line 1377
    div-float v23, v11, v5

    mul-float v23, v23, v12

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v21, v21, v23

    .line 1380
    :cond_1
    const/16 v23, 0x35

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1455
    :goto_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1456
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1457
    const/16 v23, 0x1

    return v23

    .line 1382
    :cond_2
    const/16 v23, 0x0

    aget v23, v17, v23

    add-int v23, v23, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v24

    sub-int v24, v20, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v24

    sub-int v21, v23, v24

    .line 1383
    const/16 v23, 0x33

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v1

    .line 1465
    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1466
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1467
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1469
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1470
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 1471
    .local v5, "offsetX":I
    div-int/lit8 v3, v5, 0x2

    .line 1473
    .local v3, "halfOffsetX":I
    add-int v7, v3, v6

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 1476
    .end local v3    # "halfOffsetX":I
    .end local v4    # "height":I
    .end local v5    # "offsetX":I
    .end local v6    # "width":I
    :cond_0
    return v1
.end method
