.class public Lcom/samsung/android/app/music/common/info/MusicPreference$EnqueueOption;
.super Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$EnqueueAction;
.source "MusicPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/info/MusicPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnqueueOption"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$EnqueueAction;-><init>()V

    return-void
.end method
