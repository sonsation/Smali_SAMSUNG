.class public Lcom/mezzo/common/network/data/DataTracking;
.super Ljava/lang/Object;
.source "DataTracking.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private event:Ljava/lang/String;

.field private event_traking:Ljava/lang/String;

.field private isCheck:Z

.field private isSend:Z

.field private offset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/mezzo/common/network/data/DataTracking;->isCheck:Z

    .line 11
    iput-boolean v0, p0, Lcom/mezzo/common/network/data/DataTracking;->isSend:Z

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->event:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->offset:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->event_traking:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/mezzo/common/network/data/DataTracking;->isCheck:Z

    .line 23
    iput-boolean v1, p0, Lcom/mezzo/common/network/data/DataTracking;->isSend:Z

    .line 24
    return-void
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent_traking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->event_traking:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataTracking;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mezzo/common/network/data/DataTracking;->isCheck:Z

    return v0
.end method

.method public isSend()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mezzo/common/network/data/DataTracking;->isSend:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/mezzo/common/network/data/DataTracking;->isCheck:Z

    .line 66
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataTracking;->event:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setEvent_traking(Ljava/lang/String;)V
    .locals 0
    .param p1, "event_traking"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataTracking;->event_traking:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataTracking;->offset:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSend(Z)V
    .locals 0
    .param p1, "isSend"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mezzo/common/network/data/DataTracking;->isSend:Z

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataTracking {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataTracking;->event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataTracking;->offset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_traking : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataTracking;->event_traking:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
