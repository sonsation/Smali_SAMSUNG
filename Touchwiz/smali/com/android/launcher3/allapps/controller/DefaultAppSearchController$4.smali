.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 214
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 215
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeLoader;->getAllAppItemInHome()Ljava/util/ArrayList;

    move-result-object v3

    .line 217
    .local v3, "itemsInhome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    .end local v3    # "itemsInhome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 222
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_1

    .line 223
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$400(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setApps(Ljava/util/List;)V

    .line 227
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    .line 229
    .end local v0    # "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_3
    return v6
.end method
