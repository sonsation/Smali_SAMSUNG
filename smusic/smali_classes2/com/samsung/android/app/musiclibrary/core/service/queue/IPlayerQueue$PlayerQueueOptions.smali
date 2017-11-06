.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerQueueOptions"
.end annotation


# static fields
.field public static final NO_LIMIT:I = 0x7fffffff


# instance fields
.field final limitQueueSize:I

.field final supportRepeatEndFirst:Z

.field final supportUnionMode:Z


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0
    .param p1, "supportRepeatEndFirst"    # Z
    .param p2, "supportUnionMode"    # Z
    .param p3, "limitQueueSize"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportRepeatEndFirst:Z

    .line 418
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->supportUnionMode:Z

    .line 419
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;->limitQueueSize:I

    .line 420
    return-void
.end method
