.class public Lcom/samsung/android/app/music/common/model/AudioQuality$Codec;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/AudioQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/AudioQuality$Codec$Def;
    }
.end annotation


# static fields
.field public static final AAC:Ljava/lang/String; = "aac"

.field public static final MP3:Ljava/lang/String; = "mp3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
