.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Union;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Repeat;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Shuffle;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Value;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Mode;
    }
.end annotation


# static fields
.field public static final REPEAT:I = 0x1

.field public static final SHUFFLE:I = 0x2

.field public static final UNDEFINED:I = -0x1

.field public static final UNION_REPEAT_SHUFFLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
