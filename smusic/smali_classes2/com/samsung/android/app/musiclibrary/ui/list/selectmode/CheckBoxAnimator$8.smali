.class Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;
.super Ljava/lang/Object;
.source "CheckBoxAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->startHideCheckBoxAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic val$animateViewLayers:Ljava/util/List;

.field final synthetic val$animateViews:Ljava/util/List;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$isLastChild:Z

.field final synthetic val$layerType:I

.field final synthetic val$offset:I

.field final synthetic val$translationEnabled:Z

.field final synthetic val$wasGoTopEnabled:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/widget/CheckBox;Ljava/util/List;IZILjava/util/List;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$offset:I

    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$translationEnabled:Z

    iput p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$layerType:I

    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViewLayers:Ljava/util/List;

    iput-boolean p8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$isLastChild:Z

    iput-boolean p9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$wasGoTopEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 318
    .local v4, "value":F
    cmpl-float v6, v4, v9

    if-nez v6, :cond_0

    .line 319
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v12, v8}, Landroid/widget/CheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 320
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 321
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5, v12, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 325
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$offset:I

    int-to-float v6, v6

    mul-float v2, v4, v6

    .line 326
    .local v2, "translationX":F
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    sub-float v7, v11, v4

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 327
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$translationEnabled:Z

    if-eqz v6, :cond_1

    .line 328
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 329
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 330
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 334
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    cmpl-float v6, v4, v11

    if-nez v6, :cond_4

    .line 335
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 336
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 337
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 340
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$translationEnabled:Z

    if-eqz v6, :cond_2

    .line 341
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 342
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 346
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$checkBox:Landroid/widget/CheckBox;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$layerType:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/CheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 347
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 348
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_3

    .line 349
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$animateViewLayers:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 352
    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$isLastChild:Z

    if-eqz v6, :cond_4

    .line 353
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v6, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V

    .line 354
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->access$502(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)Z

    .line 355
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->val$wasGoTopEnabled:Z

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->enableGoToTop(Z)V

    .line 356
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 359
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_4
    return-void
.end method
