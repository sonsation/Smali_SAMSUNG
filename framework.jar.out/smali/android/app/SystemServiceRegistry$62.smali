.class final Landroid/app/SystemServiceRegistry$62;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/ktuca/KtUcaManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/ktuca/KtUcaManager;
    .locals 3

    .prologue
    .line 820
    const-string/jumbo v2, "ktuca"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 821
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/ktuca/IKtUcaIF$Stub;->asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;

    move-result-object v1

    .line 822
    .local v1, "service":Landroid/ktuca/IKtUcaIF;
    new-instance v2, Landroid/ktuca/KtUcaManager;

    invoke-direct {v2, v1}, Landroid/ktuca/KtUcaManager;-><init>(Landroid/ktuca/IKtUcaIF;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$62;->createService()Landroid/ktuca/KtUcaManager;

    move-result-object v0

    return-object v0
.end method
