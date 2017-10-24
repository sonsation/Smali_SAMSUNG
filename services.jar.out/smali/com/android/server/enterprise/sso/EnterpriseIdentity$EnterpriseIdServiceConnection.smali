.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnterpriseIdServiceConnection"
.end annotation


# instance fields
.field private mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1562
    iput p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mUserId:I

    .line 1561
    return-void
.end method


# virtual methods
.method public getService()Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1567
    const-string/jumbo v0, "EnterpriseIdentity"

    const-string/jumbo v1, "onServiceConnected EnterpriseIdServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-static {p2}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    .line 1569
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get2()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get2()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1566
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1578
    const-string/jumbo v0, "EnterpriseIdentity"

    const-string/jumbo v1, "onServiceDisConnected EnterpriseIdServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mService:Lcom/samsung/android/knox/sso/serviceprovider/GenericSSOSupportSolution;

    .line 1580
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get4()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get2()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1582
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->-get2()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1577
    :cond_0
    return-void
.end method
