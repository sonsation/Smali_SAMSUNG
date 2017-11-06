.class Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;
.super Ljava/lang/Object;
.source "CheckBoxTrackBaseAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->showCheckBoxWithAnimation(ZLandroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

.field final synthetic val$checkBoxStub:Landroid/widget/CheckBox;

.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$isPlayableTrack:Z

.field final synthetic val$more:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;Landroid/view/View;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    .prologue
    .line 545
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$checkBoxStub:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$container:Landroid/view/View;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$isPlayableTrack:Z

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 548
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 549
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$checkBoxStub:Landroid/widget/CheckBox;

    .line 550
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;)F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v0, v2, v3

    .line 551
    .local v0, "translationX":F
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$container:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 552
    cmpl-float v2, v1, v4

    if-nez v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$checkBoxStub:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 554
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$checkBoxStub:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 555
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$isPlayableTrack:Z

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$container:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 575
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 576
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    :cond_2
    return-void

    .line 562
    :cond_3
    cmpl-float v2, v1, v5

    if-nez v2, :cond_4

    .line 563
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$isPlayableTrack:Z

    if-eqz v2, :cond_1

    .line 564
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 566
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 570
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$isPlayableTrack:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 571
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$more:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 573
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;->val$checkBoxStub:Landroid/widget/CheckBox;

    sub-float v3, v4, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_0
.end method
