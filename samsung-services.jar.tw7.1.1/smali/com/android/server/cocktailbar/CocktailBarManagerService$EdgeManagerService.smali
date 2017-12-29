.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;
.super Lcom/samsung/android/edge/IEdgeManager$Stub;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeManagerService"


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public bindEdgeLightingService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "condition"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->bindService(Landroid/os/IBinder;ILandroid/content/ComponentName;)V

    .line 205
    return-void
.end method

.method public disable(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disable(ILjava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableEdgeLightingNotification(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->disableEdgeLightingNotification(Ljava/lang/String;Z)V

    .line 265
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get1(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const-string v2, "EdgeManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public getEdgeLightingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->getEdgeLightingState()I

    move-result v0

    return v0
.end method

.method public isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->isEdgeLightingNotificationAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 220
    return-void
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    .line 235
    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    return-void
.end method

.method public unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unbindService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/samsung/android/edge/EdgeLightingPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$EdgeManagerService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-get2(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->updateEdgeLightingPolicy(Ljava/lang/String;Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    .line 230
    return-void
.end method
