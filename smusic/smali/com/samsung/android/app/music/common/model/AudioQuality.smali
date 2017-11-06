.class public Lcom/samsung/android/app/music/common/model/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/AudioQuality$Codec;,
        Lcom/samsung/android/app/music/common/model/AudioQuality$Bitrate;,
        Lcom/samsung/android/app/music/common/model/AudioQuality$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/AudioQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitrate:Ljava/lang/String;

.field private mCodec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/samsung/android/app/music/common/model/AudioQuality$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AudioQuality$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/AudioQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mCodec:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static createAudioQuality(I)Lcom/samsung/android/app/music/common/model/AudioQuality;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 113
    packed-switch p0, :pswitch_data_0

    .line 120
    const-string v0, "64000"

    const-string v1, "aac"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    const-string v0, "320000"

    const-string v1, "mp3"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "192000"

    const-string v1, "mp3"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/model/AudioQuality;->createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/AudioQuality;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createAudioQuality(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/AudioQuality;
    .locals 1
    .param p0, "bitrate"    # Ljava/lang/String;
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/app/music/common/model/AudioQuality;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AudioQuality;-><init>()V

    .line 107
    .local v0, "quality":Lcom/samsung/android/app/music/common/model/AudioQuality;
    iput-object p0, v0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mBitrate:Ljava/lang/String;

    .line 108
    iput-object p1, v0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mCodec:Ljava/lang/String;

    .line 109
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mBitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mCodec:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mBitrate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AudioQuality;->mCodec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
