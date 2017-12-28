.class Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;
.super Ljava/lang/Object;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeAnchorViewAnim"
.end annotation


# instance fields
.field mAnimView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetFolder;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder;Lcom/android/launcher3/widget/view/WidgetFolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/widget/view/WidgetFolder;
    .param p2, "x1"    # Lcom/android/launcher3/widget/view/WidgetFolder$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder;)V

    return-void
.end method

.method private makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 472
    .local v1, "params":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 473
    .local v0, "newParams":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    .line 474
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    .line 475
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->leftMargin:I

    .line 476
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    iput v2, v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->topMargin:I

    .line 477
    iget v2, v1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->setMarginStart(I)V

    .line 478
    return-object v0
.end method

.method private prepareFakeAnchorView(Landroid/view/View;)V
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 460
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 461
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 463
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 464
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    return-void
.end method


# virtual methods
.method public animateClose(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;
    .param p3, "info"    # Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 427
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 429
    .local v0, "alphaAnim":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 430
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 433
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 434
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    new-array v2, v10, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v8, [F

    iget-object v6, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v6, v6, v9

    aput v6, v5, v9

    .line 435
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v8, [F

    iget-object v6, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v6, v6, v8

    aput v6, v5, v9

    .line 436
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationX"

    new-array v6, v8, [F

    iget-object v7, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v7, v7, v9

    int-to-float v7, v7

    aput v7, v6, v9

    .line 437
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationY"

    new-array v6, v8, [F

    iget-object v7, p3, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v7, v7, v8

    int-to-float v7, v7

    aput v7, v6, v9

    .line 438
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 434
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 439
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 440
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 443
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 444
    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    return-void
.end method

.method public animateOpen(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;
    .param p3, "info"    # Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/animation/AnimatorSet;",
            "Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 404
    .local v0, "alphaAnim":Landroid/animation/Animator;
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 405
    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 408
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 409
    .local v1, "scaleAnimSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v6, v5, v8

    .line 410
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v6, v5, v8

    .line 411
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationX"

    new-array v6, v7, [F

    aput v9, v6, v8

    .line 412
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    const-string v5, "translationY"

    new-array v6, v7, [F

    aput v9, v6, v8

    .line 413
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 409
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 414
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$300(Lcom/android/launcher3/widget/view/WidgetFolder;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 415
    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 416
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 417
    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 418
    new-instance v2, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;-><init>(Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    return-void
.end method

.method public prepareAimation(Landroid/view/View;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Z)V
    .locals 5
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
    .param p3, "open"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 383
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 384
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    .line 385
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareFakeAnchorView(Landroid/view/View;)V

    .line 386
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 387
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    .end local v0    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :goto_0
    if-eqz p3, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 395
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 397
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 399
    :cond_0
    return-void

    .line 389
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->prepareFakeAnchorView(Landroid/view/View;)V

    .line 390
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->makeLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public removeView()V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 484
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 486
    .end local v0    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :cond_0
    return-void
.end method
