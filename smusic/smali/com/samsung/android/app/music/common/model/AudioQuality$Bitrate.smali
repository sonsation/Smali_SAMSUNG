.class public Lcom/samsung/android/app/music/common/model/AudioQuality$Bitrate;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/AudioQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bitrate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/AudioQuality$Bitrate$Def;
    }
.end annotation


# static fields
.field public static final HIGH:Ljava/lang/String; = "320000"

.field public static final LOW:Ljava/lang/String; = "64000"

.field public static final MIDDLE:Ljava/lang/String; = "192000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method