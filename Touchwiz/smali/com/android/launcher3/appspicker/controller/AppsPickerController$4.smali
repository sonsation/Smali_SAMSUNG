.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsPickerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
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
    .line 388
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$600(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$600(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$700(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    .line 401
    return-void
.end method
