.class Lcom/android/launcher3/home/HomeController$24;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;


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

.field final synthetic val$children:Ljava/util/HashMap;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$componentNames:Ljava/util/HashSet;

.field final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Ljava/util/HashSet;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 2966
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$24;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$24;->val$componentNames:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$24;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$24;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeController$24;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/android/launcher3/home/HomeController$24;->val$children:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "parent"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    .line 2969
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 2970
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$24;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 2971
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 2973
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2974
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2979
    .local v0, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :goto_0
    check-cast p2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2988
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :goto_1
    return v2

    .line 2976
    .restart local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .restart local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2977
    .restart local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2983
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$componentNames:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$24;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2984
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$24;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$24;->val$children:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2988
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
