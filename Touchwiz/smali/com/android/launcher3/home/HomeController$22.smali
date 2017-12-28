.class Lcom/android/launcher3/home/HomeController$22;
.super Ljava/lang/Object;
.source "HomeController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->disableShortcutsByPackageName(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;ILcom/android/launcher3/common/model/IconCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$iconCache:Lcom/android/launcher3/common/model/IconCache;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/util/HashSet;Lcom/android/launcher3/common/model/IconCache;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 2879
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$22;->this$0:Lcom/android/launcher3/home/HomeController;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeController$22;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/android/launcher3/home/HomeController$22;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/home/HomeController$22;->val$iconCache:Lcom/android/launcher3/common/model/IconCache;

    iput-object p5, p0, Lcom/android/launcher3/home/HomeController$22;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 2882
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 2883
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2884
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2885
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$22;->val$user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$22;->val$packageNames:Ljava/util/HashSet;

    .line 2886
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 2887
    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    .line 2888
    .local v2, "shortcut":Lcom/android/launcher3/common/view/IconView;
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$22;->val$iconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    .line 2890
    instance-of v3, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$22;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2891
    iget-object v3, p0, Lcom/android/launcher3/home/HomeController$22;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p3    # "parent":Landroid/view/View;
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2896
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "shortcut":Lcom/android/launcher3/common/view/IconView;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
