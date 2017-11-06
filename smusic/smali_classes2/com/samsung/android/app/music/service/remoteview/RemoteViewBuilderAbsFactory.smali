.class public final Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;
.super Ljava/lang/Object;
.source "RemoteViewBuilderAbsFactory.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;,
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;,
        Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;
    }
.end annotation


# static fields
.field private static final sFactories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sFactories:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sFactories:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$CoverRemoteViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sFactories:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$WidgetRemoteViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sFactories:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$NotificationViewBuilderFactory;-><init>(Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getsInstance()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    return-object v0
.end method


# virtual methods
.method public getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;
    .locals 1
    .param p1, "typeFactory"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->sFactories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    return-object v0
.end method
