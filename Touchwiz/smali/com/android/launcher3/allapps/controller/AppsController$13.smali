.class Lcom/android/launcher3/allapps/controller/AppsController$13;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$folderIconsToRefresh:Ljava/util/ArrayList;

.field final synthetic val$folderInfosToSort:Ljava/util/ArrayList;

.field final synthetic val$isAlphabeticalMode:Z

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$updates:Ljava/util/HashSet;

    iput-boolean p3, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$isAlphabeticalMode:Z

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderInfosToSort:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 8
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1353
    instance-of v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v7, :cond_0

    instance-of v7, p2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$updates:Ljava/util/HashSet;

    .line 1354
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, p1

    .line 1355
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object v2, p2

    .line 1356
    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    .line 1357
    .local v2, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1358
    .local v3, "oldIcon":Landroid/graphics/drawable/Drawable;
    instance-of v7, v3, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v7, :cond_1

    check-cast v3, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    .line 1359
    .end local v3    # "oldIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    .line 1360
    .local v4, "oldPromiseState":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v7

    if-eq v7, v4, :cond_2

    :goto_1
    invoke-virtual {v2, v1, v5}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    .line 1362
    instance-of v5, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v5, :cond_0

    .line 1363
    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$isAlphabeticalMode:Z

    if-eqz v5, :cond_3

    .line 1364
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    .line 1365
    .local v0, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderInfosToSort:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1366
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderInfosToSort:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    .end local v0    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .end local v4    # "oldPromiseState":Z
    .end local p3    # "parent":Landroid/view/View;
    :cond_0
    :goto_2
    return v6

    .restart local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v2    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .restart local p3    # "parent":Landroid/view/View;
    :cond_1
    move v4, v6

    .line 1359
    goto :goto_0

    .restart local v4    # "oldPromiseState":Z
    :cond_2
    move v5, v6

    .line 1360
    goto :goto_1

    .line 1369
    :cond_3
    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v7, 0x9

    if-ge v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    .line 1370
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1371
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsController$13;->val$folderIconsToRefresh:Ljava/util/ArrayList;

    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p3    # "parent":Landroid/view/View;
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
