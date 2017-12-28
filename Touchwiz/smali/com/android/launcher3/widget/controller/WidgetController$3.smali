.class Lcom/android/launcher3/widget/controller/WidgetController$3;
.super Ljava/lang/Object;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/proxy/WidgetProxyCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/controller/WidgetController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/controller/WidgetController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/controller/WidgetController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findWidgetItemInList(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/util/ArrayList;)V
    .locals 5
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "resuleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 278
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 279
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 280
    .local v1, "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 281
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    :cond_1
    return-void
.end method

.method private findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p2, "itemTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "resuleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 260
    .local v0, "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 261
    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 263
    .local v1, "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    const/4 v2, 0x0

    .line 264
    .local v2, "widgetName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 274
    .end local v0    # "i":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "pWidget":Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .end local v2    # "widgetName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public enterSearchState()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 175
    return-void
.end method

.method public enterUninstallState()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 180
    return-void
.end method

.method public getWidgetItemsInfoByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "findItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, "wItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, "l":Ljava/lang/Object;
    instance-of v4, v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 250
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "l":Ljava/lang/Object;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetController$3;->findWidgetItemInList(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 255
    :cond_1
    return-object v0
.end method

.method public getWidgetItemsInfoByTitle(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "itemTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "findItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v3}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "wItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "l":Ljava/lang/Object;
    instance-of v4, v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 233
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "l":Ljava/lang/Object;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/widget/controller/WidgetController$3;->findWidgetItemInList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 238
    :cond_1
    return-object v0
.end method

.method public getWidgetResultItem()Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v2}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "widget":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 209
    check-cast v0, Ljava/util/ArrayList;

    .line 210
    .local v0, "arrItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 211
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 215
    .end local v0    # "arrItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v1    # "widget":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3
    .param p1, "pf"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParamMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, "widget":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "widget":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v1}, Lcom/android/launcher3/widget/controller/WidgetController;->access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getDisplayItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public uninstallWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1000(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController$3;->this$0:Lcom/android/launcher3/widget/controller/WidgetController;

    invoke-static {v0}, Lcom/android/launcher3/widget/controller/WidgetController;->access$1100(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/ComponentName;)V

    .line 223
    :cond_0
    return-void
.end method
