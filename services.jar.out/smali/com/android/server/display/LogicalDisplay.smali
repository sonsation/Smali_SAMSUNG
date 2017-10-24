.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOriginalDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mOverrideDisplayHeight:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideDisplayWidth:I

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorTransformId:I

.field private mRequestedModeId:I

.field private mSwapped:Z

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v1, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 489
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayWidth:I

    .line 490
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayHeight:I

    .line 97
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 98
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 99
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 96
    return-void
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 16
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    .prologue
    .line 303
    if-eqz p2, :cond_3

    const/4 v11, -0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorTransformId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    .line 307
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestColorTransformAndModeInTransactionLocked(II)V

    .line 314
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 315
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 320
    .local v1, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, "orientation":I
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    .line 327
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 330
    :cond_0
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    .line 331
    iget v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 347
    :cond_1
    :goto_2
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v11, v7

    rem-int/lit8 v7, v11, 0x4

    .line 350
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    if-ltz v11, :cond_2

    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    const/4 v12, 0x3

    if-gt v11, v12, :cond_2

    .line 351
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    .line 359
    :cond_2
    const/4 v11, 0x1

    if-eq v7, v11, :cond_6

    .line 360
    const/4 v11, 0x3

    if-ne v7, v11, :cond_7

    const/4 v10, 0x1

    .line 361
    .local v10, "rotated":Z
    :goto_3
    if-eqz v10, :cond_8

    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 362
    .local v9, "physWidth":I
    :goto_4
    if-eqz v10, :cond_9

    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 379
    .local v8, "physHeight":I
    :goto_5
    iget v11, v2, Landroid/view/DisplayInfo;->flags:I

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v11, v12

    if-eqz v11, :cond_a

    .line 380
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 381
    .local v6, "displayRectWidth":I
    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 392
    .local v3, "displayRectHeight":I
    :goto_6
    sub-int v11, v8, v3

    div-int/lit8 v5, v11, 0x2

    .line 393
    .local v5, "displayRectTop":I
    sub-int v11, v9, v6

    div-int/lit8 v4, v11, 0x2

    .line 394
    .local v4, "displayRectLeft":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 395
    add-int v12, v4, v6

    add-int v13, v5, v3

    .line 394
    invoke-virtual {v11, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 401
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v11, v12}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 301
    return-void

    .line 303
    .end local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "displayRectHeight":I
    .end local v4    # "displayRectLeft":I
    .end local v5    # "displayRectTop":I
    .end local v6    # "displayRectWidth":I
    .end local v7    # "orientation":I
    .end local v8    # "physHeight":I
    .end local v9    # "physWidth":I
    .end local v10    # "rotated":Z
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    goto/16 :goto_0

    .line 310
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/android/server/display/DisplayDevice;->requestColorTransformAndModeInTransactionLocked(II)V

    goto/16 :goto_1

    .line 333
    .restart local v1    # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "orientation":I
    :cond_5
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->fixedOrientation:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_1

    .line 334
    iget v11, v2, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v7, v11, 0x1

    goto/16 :goto_2

    .line 359
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 360
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 361
    .restart local v10    # "rotated":Z
    :cond_8
    iget v9, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .restart local v9    # "physWidth":I
    goto/16 :goto_4

    .line 362
    :cond_9
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .restart local v8    # "physHeight":I
    goto/16 :goto_5

    .line 382
    :cond_a
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    .line 383
    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v8

    .line 382
    if-ge v11, v12, :cond_b

    .line 385
    move v6, v9

    .line 386
    .restart local v6    # "displayRectWidth":I
    iget v11, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int v3, v11, v12

    .restart local v3    # "displayRectHeight":I
    goto/16 :goto_6

    .line 389
    .end local v3    # "displayRectHeight":I
    .end local v6    # "displayRectWidth":I
    :cond_b
    iget v11, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v8

    iget v12, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v6, v11, v12

    .line 390
    .restart local v6    # "displayRectWidth":I
    move v3, v8

    .restart local v3    # "displayRectHeight":I
    goto/16 :goto_6
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorTransformId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorTransformId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    return-void

    .line 483
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 130
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 134
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 135
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 136
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 137
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 138
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 139
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 140
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 141
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 142
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 143
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 144
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 145
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 146
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 147
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method public getOverrideDisplaySizeLocked([I)V
    .locals 2
    .param p1, "size"    # [I

    .prologue
    .line 509
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 510
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayWidth:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 511
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayHeight:I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 508
    :cond_0
    return-void
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorTransformIdLocked()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorTransformId:I

    return v0
.end method

.method public getRequestedModeIdLocked()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isSwapped()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mSwapped:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 161
    if-eqz p1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget v1, p1, Landroid/view/DisplayInfo;->rotation:I

    rem-int/lit8 v0, v1, 0x2

    .line 164
    .local v0, "cur_rotation":I
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    int-to-float v1, v1

    div-float v1, v2, v1

    iput v1, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 165
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1
    int-to-float v1, v1

    div-float v1, v2, v1

    iput v1, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 168
    .end local v0    # "cur_rotation":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_3

    .line 169
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 170
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 171
    return v5

    .line 164
    .restart local v0    # "cur_rotation":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    .line 173
    .end local v0    # "cur_rotation":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 175
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 176
    return v5

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_5

    .line 179
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 180
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 181
    return v5

    .line 183
    :cond_5
    return v4
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 472
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 470
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 423
    return-void
.end method

.method public setOverrideDisplaySizeLocked(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 504
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayWidth:I

    .line 505
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayHeight:I

    .line 503
    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 3
    .param p1, "displayDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 495
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOriginalDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOriginalDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOriginalDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mSwapped:Z

    .line 498
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 499
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 500
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayHeight:I

    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayWidth:I

    .line 494
    return-void

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRequestedColorTransformIdLocked(I)V
    .locals 0
    .param p1, "colorTransformId"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorTransformId:I

    .line 444
    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .locals 0
    .param p1, "modeId"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    .line 430
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/high16 v5, 0x100000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_0

    .line 208
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 214
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 223
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 225
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 226
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 229
    :cond_2
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 232
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 235
    :cond_4
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 236
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 238
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    .line 239
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 242
    :cond_6
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_7

    .line 243
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 246
    :cond_7
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    .line 247
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 251
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 252
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 253
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 254
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 255
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v2, v1, Landroid/view/DisplayInfo;->modeId:I

    .line 256
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v2, v1, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 257
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 258
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v3, v3

    .line 257
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$Mode;

    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 259
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorTransformId:I

    iput v2, v1, Landroid/view/DisplayInfo;->colorTransformId:I

    .line 260
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultColorTransformId:I

    iput v2, v1, Landroid/view/DisplayInfo;->defaultColorTransformId:I

    .line 261
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 262
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 263
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    array-length v3, v3

    .line 261
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display$ColorTransform;

    iput-object v1, v2, Landroid/view/DisplayInfo;->supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 264
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 265
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 266
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 267
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 268
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 269
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 270
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    .line 271
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 272
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 273
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 274
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 275
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 276
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 279
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 205
    :cond_8
    return-void
.end method
