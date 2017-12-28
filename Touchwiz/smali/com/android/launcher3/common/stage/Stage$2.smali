.class Lcom/android/launcher3/common/stage/Stage$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/stage/Stage;->playStateTransitAnim(Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/stage/Stage;

.field final synthetic val$entry:Lcom/android/launcher3/common/stage/StageEntry;

.field final synthetic val$toWorkSpace:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/Stage;ZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/launcher3/common/stage/Stage$2;->this$0:Lcom/android/launcher3/common/stage/Stage;

    iput-boolean p2, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$toWorkSpace:Z

    iput-object p3, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 354
    const-string v1, "Stage"

    const-string v2, "stateTransitionAnim onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$2;->this$0:Lcom/android/launcher3/common/stage/Stage;

    invoke-static {v1}, Lcom/android/launcher3/common/stage/Stage;->access$200(Lcom/android/launcher3/common/stage/Stage;)V

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$2;->this$0:Lcom/android/launcher3/common/stage/Stage;

    iget-boolean v2, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$toWorkSpace:Z

    iget-object v3, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-static {v1, v4, v2, v3}, Lcom/android/launcher3/common/stage/Stage;->access$300(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 361
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 365
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/common/stage/Stage$2;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 366
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 369
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
