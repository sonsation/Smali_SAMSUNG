.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;
.super Landroid/app/Service;
.source "ArtworkLoaderService.java"


# instance fields
.field private final mBinder:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 13
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;->mBinder:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;->mBinder:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;

    return-object v0
.end method
