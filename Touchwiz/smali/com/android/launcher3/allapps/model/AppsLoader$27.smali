.class Lcom/android/launcher3/allapps/model/AppsLoader$27;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->addToFolderItem(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$addedAppInfo:Ljava/util/ArrayList;

.field final synthetic val$folder:Lcom/android/launcher3/folder/FolderInfo;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$addedAppInfo:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2129
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$4000()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2130
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_1

    .line 2131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2132
    .local v2, "removeInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$addedAppInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2133
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 2134
    .local v3, "removeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v6, -0x66

    iput-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2135
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2137
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v6, v5, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iput-wide v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2138
    iput v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 2139
    iput v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 2140
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->mDirty:Z

    .line 2141
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2142
    iget-object v5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->val$folder:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 2144
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "removeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindItemsRemoved(Ljava/util/ArrayList;)V

    .line 2145
    iget-object v4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$27;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->updateDirtyItems()V

    .line 2147
    .end local v2    # "removeInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    return-void
.end method
