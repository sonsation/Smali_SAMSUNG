.class public Lcom/samsung/android/app/music/network/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;
    }
.end annotation


# instance fields
.field public final all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

.field public final wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    .line 11
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    return-void
.end method
