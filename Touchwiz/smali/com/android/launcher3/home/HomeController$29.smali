.class Lcom/android/launcher3/home/HomeController$29;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->updateBadgeItems(Ljava/util/ArrayList;)V
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
    .line 3190
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$29;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$29;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 3193
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$29;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3194
    move-object v0, p2

    .line 3195
    .local v0, "iconView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$29;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3196
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$29;->this$0:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 3198
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_1

    .line 3199
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iconView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 3200
    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$29;->this$0:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 3202
    :cond_1
    instance-of v1, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_2

    .line 3203
    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p3    # "parent":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 3207
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
