.class Lcom/android/launcher3/allapps/model/AppsLoader$30;
.super Ljava/lang/Object;
.source "AppsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/model/AppsLoader;->updateAppsGridInfo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

.field final synthetic val$gridX:I

.field final synthetic val$gridY:I

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/model/AppsLoader;

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    iput p3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$gridX:I

    iput p4, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$gridY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2187
    iget-object v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->this$0:Lcom/android/launcher3/allapps/model/AppsLoader;

    iget-object v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$oldCallbacks:Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    .line 2188
    invoke-static {}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$4200()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getLoaderTask()Lcom/android/launcher3/LauncherModel$LoaderTask;

    move-result-object v4

    .line 2187
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->access$1200(Lcom/android/launcher3/allapps/model/AppsLoader;Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;Lcom/android/launcher3/common/model/DataLoader$DataLoaderState;)Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;

    move-result-object v0

    .line 2189
    .local v0, "callbacks":Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 2190
    .local v1, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget v2, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$gridX:I

    iget v3, p0, Lcom/android/launcher3/allapps/model/AppsLoader$30;->val$gridY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setAppsCurrentGrid(II)V

    .line 2192
    if-eqz v0, :cond_0

    .line 2193
    invoke-interface {v0}, Lcom/android/launcher3/allapps/model/AppsLoader$AppsCallbacks;->updateGridInfo()V

    .line 2195
    :cond_0
    return-void
.end method
