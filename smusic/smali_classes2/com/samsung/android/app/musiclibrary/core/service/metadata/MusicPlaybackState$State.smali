.class public Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$State;
.super Ljava/lang/Object;
.source "MusicPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$State$Def;
    }
.end annotation


# static fields
.field public static final BUFFERING:I = 0x6

.field public static final ERROR:I = 0x7

.field public static final IDLE:I = 0x0

.field public static final PAUSED:I = 0x2

.field public static final PLAYING:I = 0x3

.field public static final STOPPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
