.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;
.super Ljava/lang/Object;
.source "AppsPickerController.java"

# interfaces
.implements Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addResultApps()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V

    .line 125
    :cond_0
    return-void
.end method

.method public addResultApps(I)V
    .locals 4
    .param p1, "ordinal"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 133
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v2, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V

    .line 139
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    :cond_0
    return-void
.end method

.method public addResultApps(Z)V
    .locals 2
    .param p1, "anapho"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$500(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V

    .line 146
    :cond_0
    return-void
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 196
    add-int/lit8 v0, p1, -0x1

    .line 197
    .local v0, "indexOnList":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 200
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(Landroid/content/ComponentName;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 175
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;)Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 185
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const-string v2, "\\s"

    const-string v3, ""

    .line 186
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 187
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 191
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchResultListCheckedCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchResultListCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSearchResultSingleAppInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 167
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFilteredAppsList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 169
    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_0
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->setSearchText(Ljava/lang/String;)Z

    move v0, v1

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "AppName"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "AppName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->setSearchText(Ljava/lang/String;)Z

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchText(Ljava/lang/String;)Z
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchText(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
