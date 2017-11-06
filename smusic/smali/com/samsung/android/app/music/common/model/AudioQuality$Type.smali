.class public Lcom/samsung/android/app/music/common/model/AudioQuality$Type;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/model/AudioQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/AudioQuality$Type$Def;
    }
.end annotation


# static fields
.field public static final AAC:Ljava/lang/String; = "A"

.field public static final MP3_192:Ljava/lang/String; = "M"

.field public static final MP3_320:Ljava/lang/String; = "L"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
