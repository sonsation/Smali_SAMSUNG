.class public final Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;
.super Ljava/lang/Object;
.source "CalendarDataContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer$1;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "dataCnt":I
    const/4 v1, 0x0

    .local v1, "dataIdx":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    invoke-direct {v3, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .line 144
    .local v0, "data":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 141
    .end local v0    # "data":Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
    :cond_0
    return-void
.end method
