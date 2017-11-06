.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Union;
.super Ljava/lang/Object;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueMode$Union$Def;
    }
.end annotation


# static fields
.field public static final OFF:I = 0x0

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_ONE:I = 0x2

.field public static final SHUFFLE_NORMAL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
