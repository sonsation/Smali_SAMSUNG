.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performAddAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$drawBackground:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "val$drawBackground"    # Ljava/lang/Runnable;

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->val$drawBackground:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->val$drawBackground:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->val$drawBackground:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2324
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2332
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->requestSelectLayout(Z)V

    .line 2320
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOutlineAlpha(F)V

    .line 2318
    return-void
.end method
