.class final Lcom/samsung/android/app/music/list/common/PlayUtils$1;
.super Ljava/lang/Object;
.source "PlayUtils.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition",
        "<",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkCondition(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Z
    .locals 1
    .param p1, "target"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic checkCondition(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/common/PlayUtils$1;->checkCondition(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Z

    move-result v0

    return v0
.end method
