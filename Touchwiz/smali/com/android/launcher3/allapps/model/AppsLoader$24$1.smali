.class Lcom/android/launcher3/allapps/model/AppsLoader$24$1;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/allapps/model/AppsLoader$24;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader$24;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/allapps/model/AppsLoader$24;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$24;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput-object p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->val$updates:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->this$1:Lcom/android/launcher3/allapps/model/AppsLoader$24;

    iget-object v1, v1, Lcom/android/launcher3/allapps/model/AppsLoader$24;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .line 1733
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$3800()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    .line 1732
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 1734
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    if-eqz v0, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$24$1;->val$updates:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->bindRestoreItemsChange(Ljava/util/HashSet;)V

    .line 1737
    :cond_0
    return-void
.end method
