.class Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "Divider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/Divider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/Divider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/Divider;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_Divider$MultiWindowEventListener_lambda$3(ZZLandroid/content/ComponentName;)V
    .locals 1
    .param p1, "minimized"    # Z
    .param p2, "dockHasActivity"    # Z
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get1(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->setDockedStackMinimized(ZZLandroid/content/ComponentName;)V

    .line 0
    return-void
.end method

.method public onMultiWindowAppTransitionFinished()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x64

    .line 373
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get8(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set7(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$5;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$7;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$6;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onMultiWindowDockedMinimizedChanged(ZZLandroid/content/ComponentName;I)V
    .locals 2
    .param p1, "minimized"    # Z
    .param p2, "dockHasActivity"    # Z
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$-void_onMultiWindowDockedMinimizedChanged_boolean_minimized_boolean_dockHasActivity_android_content_ComponentName_cn_int_userId_LambdaImpl0;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;ZZLandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void
.end method

.method public onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "focusedStackRect"    # Landroid/graphics/Rect;
    .param p2, "focusedTaskRect"    # Landroid/graphics/Rect;
    .param p3, "stackId"    # I
    .param p4, "taskId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 260
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->shouldIgnoreAutoResize()Z

    move-result v7

    if-nez v7, :cond_7

    .line 261
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 262
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "isOppositeTaskRecents":Z
    const/4 v4, -0x1

    .line 265
    .local v4, "minWidth":I
    const/4 v3, -0x1

    .line 266
    .local v3, "minHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 268
    .local v6, "taskRect":Landroid/graphics/Rect;
    if-eqz p6, :cond_1

    .line 269
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get6(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    const-string/jumbo v8, "isLandscape"

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eq v7, v8, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    const-string/jumbo v7, "isOppositeTaskRecents"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 273
    .local v2, "isOppositeTaskRecents":Z
    const-string/jumbo v7, "mMinWidth"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    const-string/jumbo v7, "mMinHeight"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 276
    .end local v2    # "isOppositeTaskRecents":Z
    :cond_1
    if-nez v2, :cond_8

    if-nez p3, :cond_2

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get7(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 279
    :cond_2
    :goto_0
    const-string/jumbo v7, "startedActivity"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    if-ne p3, v7, :cond_3

    .line 280
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->initTaskBounds(ILandroid/graphics/Rect;)V

    .line 282
    :cond_3
    const-string/jumbo v7, "startActivityFromRecents"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "moveTaskToStack"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 283
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p1, v6, v4, v3}, Lcom/android/systemui/stackdivider/Divider;->-wrap1(Lcom/android/systemui/stackdivider/Divider;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 284
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->initTaskBounds(ILandroid/graphics/Rect;)V

    .line 287
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-eq v7, p4, :cond_7

    const/4 v7, 0x3

    if-eq p3, v7, :cond_6

    const/4 v7, 0x1

    if-ne p3, v7, :cond_7

    .line 288
    :cond_6
    if-eqz v2, :cond_9

    .line 363
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    .end local v6    # "taskRect":Landroid/graphics/Rect;
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3, p4}, Lcom/android/systemui/stackdivider/Divider;->-wrap3(Lcom/android/systemui/stackdivider/Divider;II)V

    .line 258
    return-void

    .line 277
    .restart local v3    # "minHeight":I
    .restart local v4    # "minWidth":I
    .restart local v6    # "taskRect":Landroid/graphics/Rect;
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/stackdivider/DividerView;->setAutoResizingTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)V

    goto :goto_0

    .line 288
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    sget v8, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->checkDividerFlag(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v7, :cond_7

    .line 289
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isFlingAnimationRunning()Z

    move-result v7

    if-nez v7, :cond_7

    .line 291
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->setOriginalTaskBounds(ILandroid/graphics/Rect;)V

    .line 292
    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v7

    if-ne v7, p3, :cond_b

    :cond_a
    const/4 v7, 0x1

    :goto_2
    invoke-static {v8, v7}, Lcom/android/systemui/stackdivider/Divider;->-set7(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 294
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/android/systemui/stackdivider/DividerView;->needToShowHiddenArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 298
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v8}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v8

    if-le v7, v8, :cond_c

    .line 302
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 303
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3}, Lcom/android/systemui/stackdivider/Divider;->-set5(Lcom/android/systemui/stackdivider/Divider;I)I

    .line 304
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 305
    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v9}, Lcom/android/systemui/stackdivider/Divider;->-get9(Lcom/android/systemui/stackdivider/Divider;)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v10}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/systemui/stackdivider/DividerView;->hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    :goto_4
    invoke-static {v8, v7}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 307
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 309
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 310
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$1;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 292
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 299
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v8}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v8

    if-le v7, v8, :cond_7

    goto :goto_3

    .line 305
    :cond_d
    const/4 v7, 0x1

    goto :goto_4

    .line 317
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$2;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 326
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->areTasksOverlapping(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7, p3, v6}, Lcom/android/systemui/stackdivider/DividerView;->hasSameAutoResizingTarget(ILandroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 330
    const/4 v7, 0x3

    if-ne p3, v7, :cond_11

    const/4 v5, 0x1

    .line 334
    .local v5, "oppositeStackId":I
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, p3, v6, v4, v3}, Lcom/android/systemui/stackdivider/Divider;->-wrap0(Lcom/android/systemui/stackdivider/Divider;ILandroid/graphics/Rect;II)Z

    move-result v1

    .line 337
    .local v1, "flingToFocusedTaskMinSize":Z
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/stackdivider/Divider;->-set4(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 338
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v1, :cond_10

    move v5, p3

    .end local v5    # "oppositeStackId":I
    :cond_10
    invoke-static {v7, v5}, Lcom/android/systemui/stackdivider/Divider;->-set5(Lcom/android/systemui/stackdivider/Divider;I)I

    .line 339
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get10(Lcom/android/systemui/stackdivider/Divider;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7, v1}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 342
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get13(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 343
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 344
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$3;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$3;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 330
    .end local v1    # "flingToFocusedTaskMinSize":Z
    :cond_11
    const/4 v5, 0x3

    .restart local v5    # "oppositeStackId":I
    goto :goto_5

    .line 351
    .end local v5    # "oppositeStackId":I
    .restart local v1    # "flingToFocusedTaskMinSize":Z
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v7}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener$4;-><init>(Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/stackdivider/DividerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public onMultiWindowScreenFreezeAnimationFinished()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    sget v1, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->setDividerFlag(IZ)V

    .line 404
    return-void
.end method

.method public onMultiWindowSettingChanged(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$MultiWindowEventListener;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get11(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerView;->onMultiWindowSettingChanged(Z)V

    .line 367
    return-void
.end method
