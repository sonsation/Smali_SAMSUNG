.class public Lcom/samsung/android/app/music/common/model/AdjustmentEvent;
.super Ljava/lang/Object;
.source "AdjustmentEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/AdjustmentEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/AdjustmentEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventDate:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private millisElapsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/AdjustmentEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventType:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventDate:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->millisElapsed:J

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getEventDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getMillisElapsed()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->millisElapsed:J

    return-wide v0
.end method

.method public setEventDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventDate"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventDate:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setMillisElapsed(J)V
    .locals 1
    .param p1, "millisElapsed"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->millisElapsed:J

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->eventDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->millisElapsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    return-void
.end method
