.class Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VSContainerState"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/SamsungActivityManagerService;

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    return-void
.end method

.method private releaseSurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1949
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1951
    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 1955
    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1947
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1961
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->releaseSurface()V

    .line 1960
    return-void
.end method

.method getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->getTransitionSurfaceVS()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1919
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    .line 1920
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "container"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1935
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->releaseSurface()V

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService;->-get0(Lcom/android/server/am/SamsungActivityManagerService;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eq p1, v0, :cond_0

    monitor-exit v1

    .line 1937
    return-void

    .line 1939
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->-set1(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->-set0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 1941
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->-set2(Lcom/android/server/am/SamsungActivityManagerService;Z)Z

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->-wrap0(Lcom/android/server/am/SamsungActivityManagerService;Lcom/android/server/am/ActivityStack;)V

    .line 1943
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService;->-wrap1(Lcom/android/server/am/SamsungActivityManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1932
    return-void

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "container"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1927
    return-void
.end method
