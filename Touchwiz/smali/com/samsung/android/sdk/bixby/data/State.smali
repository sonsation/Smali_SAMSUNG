.class public Lcom/samsung/android/sdk/bixby/data/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private isExecuted:Ljava/lang/Boolean;

.field private isLandingState:Ljava/lang/Boolean;

.field private isLastState:Ljava/lang/Boolean;

.field private isResent:Ljava/lang/Boolean;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private ruleId:Ljava/lang/String;

.field private seqNum:Ljava/lang/Integer;

.field private specVer:Ljava/lang/String;

.field private stateId:Ljava/lang/String;

.field private subIntent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->seqNum:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->appName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->ruleId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->stateId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isResent:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLastState:Ljava/lang/Boolean;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->subIntent:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/samsung/android/sdk/bixby/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    :cond_1
    move v0, v2

    .line 69
    goto :goto_1

    :cond_2
    move v0, v2

    .line 70
    goto :goto_2

    :cond_3
    move v1, v2

    .line 71
    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "specVer"    # Ljava/lang/String;
    .param p2, "seqNum"    # Ljava/lang/Integer;
    .param p3, "isExecuted"    # Ljava/lang/Boolean;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "ruleId"    # Ljava/lang/String;
    .param p6, "stateId"    # Ljava/lang/String;
    .param p7, "isResent"    # Ljava/lang/Boolean;
    .param p8, "isLandingState"    # Ljava/lang/Boolean;
    .param p9, "isLastState"    # Ljava/lang/Boolean;
    .param p10, "subIntent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p11, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/State;->seqNum:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 52
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/State;->appName:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/State;->ruleId:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/samsung/android/sdk/bixby/data/State;->stateId:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/samsung/android/sdk/bixby/data/State;->isResent:Ljava/lang/Boolean;

    .line 56
    iput-object p8, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 57
    iput-object p9, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLastState:Ljava/lang/Boolean;

    .line 58
    iput-object p10, p0, Lcom/samsung/android/sdk/bixby/data/State;->subIntent:Ljava/lang/String;

    .line 59
    iput-object p11, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    .line 224
    .local v0, "p":Lcom/samsung/android/sdk/bixby/data/Parameter;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    .end local v0    # "p":Lcom/samsung/android/sdk/bixby/data/Parameter;
    :cond_0
    return-object v1
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->ruleId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->seqNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->stateId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->subIntent:Ljava/lang/String;

    return-object v0
.end method

.method public isExecuted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLandingState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLastState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLastState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isResent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isResent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->appName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setExecuted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isExecuted"    # Ljava/lang/Boolean;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 172
    return-void
.end method

.method public setLandingState(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLandingState"    # Ljava/lang/Boolean;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 158
    return-void
.end method

.method public setLastState(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLastState"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLastState:Ljava/lang/Boolean;

    .line 179
    return-void
.end method

.method public setParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setResent(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isResent"    # Ljava/lang/Boolean;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->isResent:Ljava/lang/Boolean;

    .line 144
    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->ruleId:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setSeqNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "seqNum"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->seqNum:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->stateId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSubIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "subIntent"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/State;->subIntent:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->specVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->seqNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->stateId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isResent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->isLastState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->subIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/State;->parameters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 248
    return-void

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    :cond_1
    move v0, v2

    .line 243
    goto :goto_1

    :cond_2
    move v0, v2

    .line 244
    goto :goto_2

    :cond_3
    move v1, v2

    .line 245
    goto :goto_3
.end method
