.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;
.super Ljava/lang/Object;
.source "PlayerQueueInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$PlayerQueueExtras;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$QueueInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SV-List"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
