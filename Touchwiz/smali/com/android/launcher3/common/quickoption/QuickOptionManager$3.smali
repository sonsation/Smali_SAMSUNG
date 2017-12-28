.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionClearBadge(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    .line 216
    iget-object v7, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 217
    .local v7, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$componentName:Landroid/content/ComponentName;

    iget-object v3, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->clearBadge(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 226
    .end local v7    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Clear Badge"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 228
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->val$itemInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 220
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 221
    .restart local v7    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget v2, v7, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$3;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v7, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Utilities;->clearBadge(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_1

    .line 226
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v7    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_3
    const-string v2, "APQO"

    goto :goto_0
.end method
