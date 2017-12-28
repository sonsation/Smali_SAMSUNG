.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getEnterFromSettingAnim(ZLjava/util/HashMap;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 926
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;->animationComplete()V

    .line 922
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 916
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$12;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$000(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 917
    return-void
.end method
