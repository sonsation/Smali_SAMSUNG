.class public Lcom/samsung/android/app/musiclibrary/ui/player/logger/EmptyPlayerLogger;
.super Ljava/lang/Object;
.source "EmptyPlayerLogger.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public favorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public next()V
    .locals 0

    .prologue
    .line 6
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public prev()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public repeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 38
    return-void
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public shuffle(I)V
    .locals 0
    .param p1, "shuffle"    # I

    .prologue
    .line 34
    return-void
.end method

.method public toggleQueue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "openState"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    return-void
.end method
