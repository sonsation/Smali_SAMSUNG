.class Lcom/android/launcher3/home/HomeController$17;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->clearDropTargets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$17;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 2448
    instance-of v0, p2, Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$17;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    check-cast p2, Lcom/android/launcher3/common/drag/DropTarget;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 2452
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
