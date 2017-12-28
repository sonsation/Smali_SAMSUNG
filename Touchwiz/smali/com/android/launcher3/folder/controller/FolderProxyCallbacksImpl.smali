.class public Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;
.super Ljava/lang/Object;
.source "FolderProxyCallbacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/FolderProxyCallbacks;


# instance fields
.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/controller/FolderController;)V
    .locals 0
    .param p1, "folderController"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    .line 44
    return-void
.end method


# virtual methods
.method public addFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v3

    .line 113
    .local v3, "proxy":Lcom/android/launcher3/proxy/LauncherProxy;
    instance-of v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v3}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeOnlyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v4, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 119
    .local v1, "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v1    # "insideItem":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local p1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public changeBackgroundColor(I)V
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->setIconBackgroundColor(I)V

    .line 107
    return-void
.end method

.method public changeTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    .line 162
    .local v1, "f":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 163
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 165
    return-void
.end method

.method public getFolderItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItemViewByComponentName(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewByComponentName(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconView(Landroid/content/ComponentName;)Lcom/android/launcher3/common/view/IconView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewByTitle(Ljava/lang/String;)Lcom/android/launcher3/common/view/IconView;
    .locals 5
    .param p1, "itemTitle"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 64
    :goto_0
    return-object v1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->getPagedView()Lcom/android/launcher3/common/base/view/PagedView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/PagedView;->findIconViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, "iconViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/view/IconView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    .line 60
    .local v1, "v":Lcom/android/launcher3/common/view/IconView;
    instance-of v4, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v4, :cond_1

    goto :goto_0

    .end local v1    # "v":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    move-object v1, v2

    .line 64
    goto :goto_0
.end method

.method public getOpenedFolder()Lcom/android/launcher3/folder/FolderInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpenedFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public getPagedView()Lcom/android/launcher3/common/base/view/PagedView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    goto :goto_0
.end method

.method public movePage(I)V
    .locals 2
    .param p1, "pageNum"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    .line 101
    .local v0, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public movePageToItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 175
    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->changeTitle(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBackgroundColorView()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 153
    .local v0, "f":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->toggleColorPicker()V

    .line 156
    :cond_0
    return-void
.end method

.method public removeFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderController;->getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 133
    .local v0, "folder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 134
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteItemFromDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 138
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 140
    :cond_1
    return-void
.end method

.method public selectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 75
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public unSelectItem(Lcom/android/launcher3/common/view/IconView;)V
    .locals 2
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;

    .prologue
    .line 82
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;->mFolderController:Lcom/android/launcher3/folder/controller/FolderController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/controller/FolderController;->onCheckedChanged(Landroid/view/View;Z)V

    .line 85
    :cond_0
    return-void
.end method
