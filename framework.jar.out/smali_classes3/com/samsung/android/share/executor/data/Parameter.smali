.class public Lcom/samsung/android/share/executor/data/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/Parameter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CHObjectType:Ljava/lang/String;

.field private CHObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field

.field private isMandatory:Ljava/lang/Boolean;

.field private parameterName:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private slotName:Ljava/lang/String;

.field private slotType:Ljava/lang/String;

.field private slotValue:Ljava/lang/String;

.field private slotValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/samsung/android/share/executor/data/Parameter$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/Parameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_0

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 188
    iget-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    const-class v5, Lcom/samsung/android/share/executor/data/CHObject;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 192
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 195
    .local v0, "isMandatoryVal":B
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    .line 180
    return-void

    .line 190
    .end local v0    # "isMandatoryVal":B
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    goto :goto_0

    .line 195
    .restart local v0    # "isMandatoryVal":B
    :cond_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "slotType"    # Ljava/lang/String;
    .param p2, "slotName"    # Ljava/lang/String;
    .param p3, "slotValue"    # Ljava/lang/String;
    .param p4, "slotValueType"    # Ljava/lang/String;
    .param p5, "CHObjectType"    # Ljava/lang/String;
    .param p7, "parameterName"    # Ljava/lang/String;
    .param p8, "parameterType"    # Ljava/lang/String;
    .param p9, "isMandatory"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p6, "CHObjects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 38
    iput-object p7, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getCHObjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    return-object v0
.end method

.method public getCHObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    return-object v0
.end method

.method public getIsMandatory()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    return-object v0
.end method

.method public setCHObjectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "CHObjectType"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setCHObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "CHObjects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    .line 108
    return-void
.end method

.method public setIsMandatory(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isMandatory"    # Ljava/lang/Boolean;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    .line 176
    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setParameterType(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterType"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSlotName(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSlotType(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotType"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSlotValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotValue"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSlotValueType(Ljava/lang/String;)V
    .locals 0
    .param p1, "slotValueType"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 204
    :goto_1
    return-void

    .line 213
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
