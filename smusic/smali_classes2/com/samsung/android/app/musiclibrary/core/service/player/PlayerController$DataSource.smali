.class public Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
.super Ljava/lang/Object;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSource"
.end annotation


# instance fields
.field public nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

.field public playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

.field public timePrepared:J

.field public timeRequested:J

.field public timeSetDataSource:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
