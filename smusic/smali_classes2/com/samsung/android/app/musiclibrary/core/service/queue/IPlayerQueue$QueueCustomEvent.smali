.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueCustomEvent;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueCustomEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueCustomEvent$Def;
    }
.end annotation


# static fields
.field public static final CHANGED_NETWORK:I = 0x6

.field public static final MOVE_TO_NEXT_BY_TYPE:I = 0x2

.field public static final MOVE_TO_PREV_BY_TYPE:I = 0x3

.field public static final RELOAD_RADIO_QUEUE:I = 0x4

.field public static final SET_ACTIVE_TYPE:I = 0x1

.field public static final SET_LOCAL_MUSIC_MODE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
