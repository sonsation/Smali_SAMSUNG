.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;
.super Ljava/lang/Object;
.source "NetworkIntentReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;


# static fields
.field private static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    .line 18
    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;->updateNetworkInfoByIntent(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method
