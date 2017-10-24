.class public final Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1172
    const-string/jumbo v0, "TimaKeystoreService"

    const-string/jumbo v1, "TimeKeystoreService DKS LifeCycle creator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    new-instance v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1170
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap7(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    .line 1180
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1176
    const-string/jumbo v0, "TimaKeystoreService"

    const-string/jumbo v1, "TimeKeystoreService DKS LifeCycle onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string/jumbo v0, "knox_timakeystore_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1178
    const-string/jumbo v0, "knox_timakeystore_policy"

    iget-object v1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$Lifecycle;->mService:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1175
    return-void
.end method
