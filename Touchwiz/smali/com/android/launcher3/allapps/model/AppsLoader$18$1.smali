.class Lcom/android/launcher3/allapps/model/AppsLoader$18$1;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/model/AppsLoader$18;

.field final synthetic val$addedAppsScreensFinal:Ljava/util/ArrayList;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader$18;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/allapps/model/AppsLoader$18;

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$18;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$18;

    iget-object v1, v1, Lcom/android/launcher3/allapps/model/AppsLoader$18;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$2400()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1396
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->val$addedAppsScreensFinal:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$18;

    iget-boolean v2, v2, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$setHidden:Z

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$18$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$18;

    iget-object v3, v3, Lcom/android/launcher3/allapps/model/AppsLoader$18;->val$items:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindAppsAddedWithNormalize(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 1399
    :cond_0
    return-void
.end method
