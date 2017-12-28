.class Lcom/android/launcher3/allapps/model/AppsLoader$20$1;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/model/AppsLoader$20;

.field final synthetic val$folderInfos:Ljava/util/ArrayList;

.field final synthetic val$hideItems:Ljava/util/ArrayList;

.field final synthetic val$itemsInFolder:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader$20;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/allapps/model/AppsLoader$20;

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$20;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$folderInfos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$itemsInFolder:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$hideItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1467
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$20;

    iget-object v2, v2, Lcom/android/launcher3/allapps/model/AppsLoader$20;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3100()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1468
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 1469
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    .line 1470
    .local v1, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$folderInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$itemsInFolder:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindAppsInFolderRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1471
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$20$1;->val$hideItems:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindAppsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1473
    .end local v1    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    return-void
.end method
