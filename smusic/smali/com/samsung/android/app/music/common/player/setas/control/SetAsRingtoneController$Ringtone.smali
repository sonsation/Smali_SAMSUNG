.class abstract Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;
.super Ljava/lang/Object;
.source "SetAsRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Ringtone"
.end annotation


# static fields
.field static final PARAM_HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onSetAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
.end method

.method final setAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;->onSetAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I

    move-result v0

    .line 93
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 94
    if-eqz p4, :cond_0

    .line 95
    invoke-interface {p4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->onComplete()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 98
    if-eqz p4, :cond_0

    .line 99
    invoke-interface {p4, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->onError(I)V

    goto :goto_0
.end method
