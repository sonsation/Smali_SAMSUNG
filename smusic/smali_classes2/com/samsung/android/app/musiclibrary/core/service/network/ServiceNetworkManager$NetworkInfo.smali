.class public final Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
.super Ljava/lang/Object;
.source "ServiceNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkInfo"
.end annotation


# instance fields
.field public final mobileEnabled:Z

.field public final wifiEnabled:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "wifiEnabled"    # Z
    .param p2, "mobileEnabled"    # Z

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->wifiEnabled:Z

    .line 117
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->mobileEnabled:Z

    .line 118
    return-void
.end method

.method static obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    .locals 1
    .param p0, "wifiEnabled"    # Z
    .param p1, "mobileEnabled"    # Z

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;-><init>(ZZ)V

    return-object v0
.end method
