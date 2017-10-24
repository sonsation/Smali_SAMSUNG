.class public Lcom/samsung/android/share/executor/data/CHObject;
.super Ljava/lang/Object;
.source "CHObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/CHObject$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CH_Type:Ljava/lang/String;

.field private CH_Value:Ljava/lang/String;

.field private CH_ValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/samsung/android/share/executor/data/CHObject$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/CHObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "CHType"    # Ljava/lang/String;
    .param p2, "CHValue"    # Ljava/lang/String;
    .param p3, "CHValueType"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getCHType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    return-object v0
.end method

.method public getCHValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    return-object v0
.end method

.method public getCHValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    return-object v0
.end method

.method public setCHType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHType"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCHValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHValue"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCHValueType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHValueType"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
