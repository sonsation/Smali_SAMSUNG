.class Lcom/android/launcher3/home/HomeController$30;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->updateRestoreItems(Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 3213
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$30;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$30;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 3216
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$30;->val$updates:Ljava/util/HashSet;

    .line 3217
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3218
    check-cast p2, Lcom/android/launcher3/common/view/IconView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/view/IconView;->applyState(Z)V

    .line 3225
    :cond_0
    :goto_0
    return v1

    .line 3219
    .restart local p2    # "v":Landroid/view/View;
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$30;->val$updates:Ljava/util/HashSet;

    .line 3221
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3222
    check-cast p2, Lcom/android/launcher3/home/PendingAppWidgetHostView;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method
