.class public Lcom/samsung/android/share/executor/data/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/State$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private isExecuted:Ljava/lang/Boolean;

.field private isLandingState:Ljava/lang/Boolean;

.field private isLastState:Ljava/lang/Boolean;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
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
    .line 231
    new-instance v0, Lcom/samsung/android/share/executor/data/State$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/State$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/State;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/samsung/android/share/executor/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    :cond_1
    move v0, v2

    .line 66
    goto :goto_1

    :cond_2
    move v1, v2

    .line 67
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "specVer"    # Ljava/lang/String;
    .param p2, "seqNum"    # Ljava/lang/Integer;
    .param p3, "isExecuted"    # Ljava/lang/Boolean;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "ruleId"    # Ljava/lang/String;
    .param p6, "stateId"    # Ljava/lang/String;
    .param p7, "isLandingState"    # Ljava/lang/Boolean;
    .param p8, "isLastState"    # Ljava/lang/Boolean;
    .param p9, "subIntent"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p10, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/Parameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 50
    iput-object p4, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 54
    iput-object p8, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    .line 55
    iput-object p9, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    .line 56
    iput-object p10, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

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
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/share/executor/data/Parameter;>;"
    iget-object v3, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/Parameter;

    .line 206
    .local v0, "p":Lcom/samsung/android/share/executor/data/Parameter;
    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    .end local v0    # "p":Lcom/samsung/android/share/executor/data/Parameter;
    :cond_0
    return-object v2
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    return-object v0
.end method

.method public isExecuted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLandingState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLastState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setExecuted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isExecuted"    # Ljava/lang/Boolean;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    .line 152
    return-void
.end method

.method public setLandingState(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLandingState"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method public setLastState(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLastState"    # Ljava/lang/Boolean;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    .line 159
    return-void
.end method

.method public setParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/Parameter;>;"
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSeqNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "seqNum"    # Ljava/lang/Integer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setSubIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "subIntent"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 218
    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v0, v2

    .line 225
    goto :goto_1

    :cond_2
    move v1, v2

    .line 226
    goto :goto_2
.end method
