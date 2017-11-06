.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueExtraInformation;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueExtraInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueExtraInformation$Def;
    }
.end annotation


# static fields
.field public static final GET_ACTIVE_METADATA:I = 0x3

.field public static final GET_ACTIVE_PLAYING_ITEM:I = 0x7

.field public static final GET_METADATA:I = 0x5

.field public static final GET_QUEUE_TYPE:I = 0x1

.field public static final GET_RADIO_EXTRAS:I = 0x4

.field public static final GET_RADIO_METADATA:I = 0x6

.field public static final GET_RADIO_QUEUE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
