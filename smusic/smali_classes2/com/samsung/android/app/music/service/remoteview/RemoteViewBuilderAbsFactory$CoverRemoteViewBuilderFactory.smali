.class Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;
.super Ljava/lang/Object;
.source "RemoteViewBuilderAbsFactory.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverRemoteViewBuilderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/music/service/remoteview/CoverRemoteViewBuilder;

    move-result-object v0

    return-object v0
.end method
