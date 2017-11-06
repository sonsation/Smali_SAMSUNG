.class Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;
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
    .line 583
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$checkBoxStub:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$container:Landroid/view/View;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$isPlayableTrack:Z

    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$more:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 586
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 587
    .local v1, "value":F
    sub-float v2, v5, v1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$checkBoxStub:Landroid/widget/CheckBox;

    .line 588
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->access$200(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;)F

    move-result v3

    mul-float v0, v2, v3

    .line 589
    .local v0, "translationX":F
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$container:Landroid/view/View;

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 590
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$checkBoxStub:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 591
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$isPlayableTrack:Z

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$more:Landroid/view/View;

    sub-float v3, v5, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 594
    :cond_0
    cmpl-float v2, v1, v7

    if-nez v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$container:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 596
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$checkBoxStub:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 597
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$checkBoxStub:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$container:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 604
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$more:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$more:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 607
    :cond_2
    return-void

    .line 599
    :cond_3
    cmpl-float v2, v1, v5

    if-nez v2, :cond_1

    .line 600
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$isPlayableTrack:Z

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;->val$more:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
