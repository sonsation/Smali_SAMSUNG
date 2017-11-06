.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 352
    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-gtz v12, :cond_1

    .line 353
    :cond_0
    const/4 v12, 0x0

    .line 480
    :goto_0
    return v12

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 357
    const/4 v12, 0x0

    goto :goto_0

    .line 360
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v7, "mRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    iget v13, v7, Landroid/graphics/Rect;->left:I

    sub-int v8, v12, v13

    .line 364
    .local v8, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    iget v13, v7, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v13

    .line 367
    .local v10, "y":I
    int-to-float v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v9, v12, v13

    .line 368
    .local v9, "xOffset":F
    int-to-float v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v11, v12, v13

    .line 370
    .local v11, "yOffset":F
    mul-float v12, v9, v9

    mul-float v13, v11, v11

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 373
    .local v5, "distFromCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    div-float v13, v9, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    .line 374
    .local v2, "aX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    div-float v13, v11, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 376
    .local v3, "aY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 379
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    cmpg-float v12, v5, v12

    if-gez v12, :cond_5

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 382
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 383
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1600(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 387
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 389
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 391
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 395
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a0347

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 399
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 400
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 404
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 480
    :cond_7
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 406
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1902(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchEVT(Landroid/view/MotionEvent;)V

    .line 411
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7f120305

    if-ne v12, v13, :cond_a

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    cmpg-float v12, v5, v12

    if-gez v12, :cond_9

    .line 413
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 416
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    sub-float v14, v3, v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V

    goto :goto_1

    .line 417
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7f120304

    if-ne v12, v13, :cond_7

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v12

    const/4 v13, 0x1

    const/high16 v14, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .line 421
    invoke-virtual {v15}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 419
    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    add-float v6, v12, v13

    .line 422
    .local v6, "includeRadius":F
    cmpl-float v12, v5, v6

    if-lez v12, :cond_b

    .line 423
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 426
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 427
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 430
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    sub-float v14, v3, v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V

    goto/16 :goto_1

    .line 438
    .end local v6    # "includeRadius":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1902(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchEVT(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 445
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchEVT(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 450
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 451
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 454
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7f120305

    if-ne v12, v13, :cond_f

    .line 455
    const-string v12, "RadioDialView"

    const-string v13, "onTouch : ACTION_MOVE mr_dial_cover_art"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    sub-float v14, v3, v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V

    goto/16 :goto_1

    .line 459
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    const v13, 0x7f120304

    if-ne v12, v13, :cond_7

    .line 460
    const-string v12, "RadioDialView"

    const-string v13, "onTouch : ACTION_MOVE mr_dial_border"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1100(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v13

    sub-float v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v14}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1200(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)F

    move-result v14

    sub-float v14, v3, v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2300(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;FFZ)V

    goto/16 :goto_1

    .line 466
    :pswitch_4
    const-string v12, "RadioDialView"

    const-string v13, "onTouch : ACTION_UP"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1800(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$1900(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v12}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$2000(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$OnDialAction;->onDialTouchEVT(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
