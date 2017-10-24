.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performRemoveAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "val$onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2358
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->mWasCancelled:Z

    .line 2381
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2362
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->mWasCancelled:Z

    if-nez v1, :cond_1

    .line 2363
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2364
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->val$onFinishedRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2366
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2367
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2368
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->-get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2371
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2361
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->mWasCancelled:Z

    .line 2376
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2374
    return-void
.end method
