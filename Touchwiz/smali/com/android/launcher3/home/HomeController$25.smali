.class Lcom/android/launcher3/home/HomeController$25;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->removeItemsByComponentName(Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$item:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 3012
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$25;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$25;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 3028
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$25;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$25;->val$item:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$25;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 3024
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 3019
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 3015
    return-void
.end method
