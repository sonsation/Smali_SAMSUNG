.class public Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;
.super Ljava/lang/Object;
.source "CalendarData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:J

.field public id:J

.field public isAllDay:Z

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    .line 51
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    .line 51
    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method private compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 215
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 216
    return v0

    .line 217
    :cond_0
    if-nez p2, :cond_1

    .line 218
    return v0

    .line 219
    :cond_1
    if-nez p1, :cond_2

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)I
    .locals 6
    .param p1, "other"    # Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 195
    if-nez p1, :cond_0

    return v4

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_2

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_3

    .line 200
    return v5

    .line 198
    :cond_2
    return v4

    .line 201
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 205
    :cond_4
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 206
    return v4

    .line 207
    :cond_5
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 208
    return v5

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 194
    check-cast p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->compareTo(Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    .line 173
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    .line 171
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "showOnlyPublicInfo"    # Z

    .prologue
    .line 144
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy MMMM d (EEEE) HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "displayFormatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v2, "[start time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v2, "[end time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v2, "[is all day = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string/jumbo v2, "[title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->title:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 166
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-wide v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
