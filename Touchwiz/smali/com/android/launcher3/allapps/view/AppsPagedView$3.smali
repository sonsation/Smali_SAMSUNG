.class Lcom/android/launcher3/allapps/view/AppsPagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsPagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->access$100(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->this$0:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->access$100(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 301
    :cond_1
    return-void
.end method
