.class public Lcom/android/launcher3/allapps/controller/AppsViewBinder;
.super Ljava/lang/Object;
.source "AppsViewBinder.java"

# interfaces
.implements Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsViewBinder"


# instance fields
.field private mAppsBindLoading:Z

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mBindOnAlpahbeticList:Ljava/lang/Runnable;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mModel:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsController"    # Lcom/android/launcher3/allapps/controller/AppsController;
    .param p3, "model"    # Lcom/android/launcher3/LauncherModel;
    .param p4, "cache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    .line 65
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mBindOnAlpahbeticList:Ljava/lang/Runnable;

    .line 73
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 75
    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 76
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 78
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsViewBinder;
    .param p1, "x1"    # Lcom/android/launcher3/folder/FolderInfo;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 181
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindItemsInFolder ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    .line 277
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderInfo;->add(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private bindScreens(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "orderedScreenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 177
    return-void
.end method


# virtual methods
.method public bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindAppsAdded : addNotAnimated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v1, v2, :cond_0

    .line 230
    if-eqz p1, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 234
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public bindAppsAddedWithNormalize(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 3
    .param p2, "setHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 194
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v1, v2, :cond_0

    .line 205
    if-eqz p1, :cond_2

    .line 206
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 209
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, p3, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public bindAppsAddedWithPostPosition([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "addAnimated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v3, 0x0

    .line 286
    const-string v4, "AppsViewBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " bindAppsAddedWithPostPosition : addNotAnimated="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$7;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 293
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v4, v5, :cond_1

    .line 294
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mBindOnAlpahbeticList:Ljava/lang/Runnable;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v4, v5, :cond_4

    .line 305
    if-eqz p2, :cond_3

    .line 306
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 309
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 310
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, p3, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    .line 314
    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    .line 315
    .local v1, "pp":Lcom/android/launcher3/common/customer/PostPositionController;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 317
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 6
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "updated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$9;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 344
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v3, v4, :cond_1

    .line 345
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mBindOnAlpahbeticList:Ljava/lang/Runnable;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 354
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 355
    const-string v3, "AppsViewBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppsChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateApps(Ljava/util/ArrayList;)V

    .line 359
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 362
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 366
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/folder/FolderInfo;>;"
    .local p2, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Lcom/android/launcher3/allapps/controller/AppsViewBinder$10;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$10;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 378
    .local v5, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 382
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 383
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 384
    .local v6, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 385
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->removeAppsInFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 389
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v7, v8, :cond_5

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "folderRemoved":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 392
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v2

    .line 393
    .local v2, "folderItemCount":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v8, v10, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "folderIconView":Landroid/view/View;
    const/4 v8, 0x1

    if-gt v2, v8, :cond_4

    if-eqz v0, :cond_4

    .line 395
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v8, v1, v2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->replaceFolderWithFinalItem(Lcom/android/launcher3/common/base/item/ItemInfo;ILandroid/view/View;)V

    .line 396
    const/4 v3, 0x1

    .line 398
    :cond_4
    if-eqz v3, :cond_3

    .line 399
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;

    invoke-direct {v9, p0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$11;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 410
    .end local v0    # "folderIconView":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "folderItemCount":I
    .end local v3    # "folderRemoved":Z
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindComponentsRemoved(Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 5
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "removedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$12;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 422
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v2, "removedComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->removeApps(Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 430
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/common/drag/DragManager;->onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public bindFolderWithItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "folderInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v4, 0x0

    .line 243
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bindFolderWithItems : addNotAnimated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 249
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-eq v1, v2, :cond_0

    .line 255
    if-eqz p1, :cond_2

    .line 256
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindScreens(Ljava/util/ArrayList;)V

    .line 259
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p2, v4, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItems(Ljava/util/ArrayList;II)V

    .line 261
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->bindItemsToFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 23
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 105
    .local v18, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v6, "AppsViewBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " bindItems ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , rank : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , screen : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isFolder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    instance-of v8, v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v20, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;II)V

    .line 114
    .local v20, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    :goto_0
    return-void

    .line 118
    :cond_0
    move/from16 v17, p2

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 123
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 124
    .local v19, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    .line 126
    .local v13, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/16 v22, 0x0

    .line 127
    .local v22, "view":Landroid/view/View;
    const/16 v21, 0x0

    .line 128
    .local v21, "updateApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v13, :cond_1

    .line 129
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    rem-int v14, v6, v7

    .line 130
    .local v14, "cellX":I
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    div-int v15, v6, v7

    .line 131
    .local v15, "cellY":I
    invoke-virtual {v13, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v22

    .line 133
    move-object/from16 v0, v22

    instance-of v6, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v6, :cond_1

    move-object/from16 v0, v22

    instance-of v6, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_1

    move-object/from16 v6, v22

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .line 134
    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->isMarkToRemove()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const/16 v22, 0x0

    .line 139
    .end local v14    # "cellX":I
    .end local v15    # "cellY":I
    :cond_1
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    .line 162
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Item Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 141
    :pswitch_1
    move-object/from16 v0, v22

    instance-of v6, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_4

    .line 142
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 164
    :cond_2
    :goto_2
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v6, :cond_3

    .line 165
    if-nez v21, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 118
    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v22    # "view":Landroid/view/View;
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 143
    .restart local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v22    # "view":Landroid/view/View;
    :cond_4
    if-eqz v22, :cond_2

    .line 144
    move-object/from16 v21, v19

    goto :goto_2

    .line 148
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v16, v19

    .line 149
    check-cast v16, Lcom/android/launcher3/folder/FolderInfo;

    .line 150
    .local v16, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 154
    .end local v16    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_5
    if-eqz v22, :cond_6

    .line 155
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 158
    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object/from16 v8, v19

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v12, 0x2

    .line 157
    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v22

    .line 160
    goto :goto_2

    .line 168
    :cond_7
    check-cast v22, Lcom/android/launcher3/common/view/IconView;

    .end local v22    # "view":Landroid/view/View;
    check-cast v19, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v19    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_3

    .line 172
    .end local v13    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v21    # "updateApp":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    const-string v6, "AppsViewBinder"

    const-string v7, "bindItems end"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindItemsInFolder(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 507
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v3, "AppsViewBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bindItemsInFolder ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsViewBinder$16;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$16;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;)V

    .line 516
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    :cond_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 520
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsModel:Lcom/android/launcher3/allapps/model/AppsModel;

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/model/AppsModel;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    .line 521
    .local v0, "folder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v0, :cond_2

    .line 522
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public bindItemsRemoved(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 451
    .local p1, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsViewBinder$14;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$14;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/ArrayList;)V

    .line 456
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 462
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeAppsItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2
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
    .line 324
    .local p1, "updates":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$8;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/util/HashSet;)V

    .line 329
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateRestoreItems(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public finishBindingItems(I)V
    .locals 4
    .param p1, "totalPage"    # I

    .prologue
    .line 479
    const-string v1, "AppsViewBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishBindingItems : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$15;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;I)V

    .line 485
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->waitUntilResume(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 490
    :cond_0
    const-string v1, "AppsViewBinder"

    const-string v2, "finishBindingItems end"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeScreenToRightSideEndPage(I)V

    .line 494
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->setAppsBindLoading(Z)V

    .line 495
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->onLauncherBindingItemsCompleted()V

    .line 497
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionController;->addAllItems()V

    .line 501
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->setDefaultValueForAppStatusLog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isAppsLoading()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    return v0
.end method

.method public needDefferToBind()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllBindItems()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsPagedView()Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllPages()V

    .line 470
    return-void
.end method

.method public removeUnusedItems(II)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "itemNum"    # I

    .prologue
    .line 475
    return-void
.end method

.method public setAppsBindLoading(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsBindLoading:Z

    .line 99
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 0
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    .line 84
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 86
    return-void
.end method

.method public startBinding()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->setAppsBindLoading(Z)V

    .line 91
    return-void
.end method

.method public updateGridInfo()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsViewBinder;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->updateGridInfo()V

    .line 535
    return-void
.end method

.method public updateUnavailableComponent(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V
    .locals 1
    .param p1, "disabledPackages"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p3, "reason"    # I

    .prologue
    .line 441
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsViewBinder$13;-><init>(Lcom/android/launcher3/allapps/controller/AppsViewBinder;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;I)V

    .line 447
    .local v0, "r":Ljava/lang/Runnable;
    return-void
.end method
