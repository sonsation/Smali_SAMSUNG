.class public Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;
.super Ljava/lang/Object;
.source "ObserversAbstractionFactory.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/ObserversAbstractionFactory;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;

    return-object v0
.end method


# virtual methods
.method public getFavoriteTrack()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/FavoriteTrackImpl;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;->getsInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object v0

    return-object v0
.end method

.method public getMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilderAbsFactory;->getsInstance()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object v0

    return-object v0
.end method
