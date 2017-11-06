.class public final Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;
.super Ljava/lang/Object;
.source "PlayerQueueFactory.java"


# static fields
.field private static final LIMIT_QUEUE_SIZE:I

.field private static final QUEUE_OPTIONS:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    sput v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->LIMIT_QUEUE_SIZE:I

    .line 18
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_CONFIG_PLAYLIST_REPEAT_ENDFIRST:Z

    const/4 v2, 0x0

    sget v3, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->LIMIT_QUEUE_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;-><init>(ZZI)V

    sput-object v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->QUEUE_OPTIONS:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    return-void

    .line 15
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musicContents"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .param p2, "factory"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;
    .param p3, "settingManager"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .param p4, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 24
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    sget-object v6, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->QUEUE_OPTIONS:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;

    sget-object v6, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->QUEUE_OPTIONS:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    goto :goto_0
.end method
