.class Lcom/android/launcher3/allapps/controller/AppsController$3;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/controller/AppsAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 253
    return-void
.end method

.method public createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "recycleView"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 247
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAppsIconByItemId(J)Landroid/view/View;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    return v0
.end method

.method public getMaxItemsPerScreen()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    return v0
.end method

.method public makeEmptyCellAndReorder(II)V
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "rank"    # I

    .prologue
    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    .line 322
    .local v0, "cellCountX":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    rem-int v3, p2, v0

    div-int v4, p2, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "cellCountX":I
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Launcher.AppsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public needDeferredUpdate()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->deferToBind()Z

    move-result v0

    return v0
.end method

.method public rearrangeAllViews(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    .line 232
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllPages()V

    .line 258
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 227
    return-void
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v1, "dirtyScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 289
    .local v4, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v10, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController$3;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v7

    .line 290
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 291
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 292
    .local v6, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v6, :cond_0

    .line 293
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 294
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 295
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v1    # "dirtyScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    .end local v4    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v7    # "v":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "Launcher.AppsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    return-void

    .line 302
    .restart local v1    # "dirtyScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->access$400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v8, v9, :cond_3

    .line 303
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 304
    .local v3, "endPos":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 305
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v9}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 306
    .local v5, "pageIndex":I
    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v9}, Lcom/android/launcher3/allapps/controller/AppsController;->access$500(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v3, v5, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    goto :goto_2

    .line 308
    .end local v0    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "pageIndex":I
    :cond_2
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    goto :goto_1

    .line 310
    .end local v3    # "endPos":I
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeEmptyScreen()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V

    .line 222
    return-void
.end method

.method public updateGridInfo()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v0

    .line 268
    .local v0, "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :goto_0
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateGridBtnLayout()V

    .line 271
    :cond_0
    return-void

    .line 266
    .end local v0    # "gridPanel":Lcom/android/launcher3/allapps/AppsScreenGridPanel;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 267
    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const v2, 0x7f11002e

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-object v0, v1

    goto :goto_0
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateRestoreItems(Ljava/util/HashSet;)V

    .line 276
    return-void
.end method
