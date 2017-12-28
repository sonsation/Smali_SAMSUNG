.class Lcom/android/launcher3/allapps/controller/AppsController$11;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/common/base/item/ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$updates:Ljava/util/HashSet;

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
    .line 1313
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1314
    move-object v0, p2

    .line 1315
    .local v0, "iconView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$11;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1318
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_1

    .line 1319
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "iconView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    .line 1321
    :cond_1
    instance-of v1, p3, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_2

    .line 1322
    check-cast p3, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p3    # "parent":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    .line 1326
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
