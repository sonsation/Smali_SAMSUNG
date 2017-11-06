.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController$MediaPlayerState;
.super Ljava/lang/Object;
.source "ISkipSilenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPlayerState"
.end annotation


# static fields
.field public static final COMPLETED:I = 0x6

.field public static final CREATE:I = 0x3

.field public static final IDLE:I = 0x0

.field public static final NEXT_PREPARED:I = 0x2

.field public static final PAUSE:I = 0x5

.field public static final PREPARED:I = 0x1

.field public static final RELEASE:I = 0x8

.field public static final RESET:I = 0x7

.field public static final START:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
