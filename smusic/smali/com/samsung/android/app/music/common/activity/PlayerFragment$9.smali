.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;->setUpTransitionController(Landroid/app/Activity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$9;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 729
    const/4 v0, 0x1

    return v0
.end method
