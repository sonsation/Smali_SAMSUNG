.class Lcom/android/launcher3/home/HomeController$26;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataLoader$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$children:Ljava/util/HashMap;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$folderAppsToRemove:Ljava/util/HashMap;

.field final synthetic val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$26;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$26;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$26;->val$folderAppsToRemove:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$26;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeController$26;->val$children:Ljava/util/HashMap;

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

    .line 3077
    instance-of v3, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_2

    .line 3078
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 3079
    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 3081
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3082
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3087
    .local v0, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :goto_0
    check-cast p2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_1
    return v2

    .line 3084
    .restart local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    .restart local p2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3085
    .restart local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$folderAppsToRemove:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3091
    .end local v0    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$matcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3092
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$26;->val$childrenToRemove:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/HomeController$26;->val$children:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3096
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
