.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsPickerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAlpha(F)V

    .line 321
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->startBounceAnimation()V

    .line 326
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAlpha(F)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setScrollIndexer()V

    .line 316
    return-void
.end method
