.class final Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;
.super Ljava/lang/Object;
.source "CalendarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 181
    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 185
    new-array v0, p1, [Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;->newArray(I)[Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method
