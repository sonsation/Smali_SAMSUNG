.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionRemove(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final anchorView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->anchorView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HomeController;

    .line 189
    .local v0, "homeController":Lcom/android/launcher3/home/HomeController;
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 198
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSQO"

    const-string v3, "Remove"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 200
    .end local v0    # "homeController":Lcom/android/launcher3/home/HomeController;
    :cond_0
    return-void

    .line 193
    .restart local v0    # "homeController":Lcom/android/launcher3/home/HomeController;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 194
    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$2;->anchorView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0
.end method
