.class public Lcom/samsung/android/rlc/vo/URLInfoVO;
.super Ljava/lang/Object;
.source "URLInfoVO.java"


# instance fields
.field private dmurl:Ljava/lang/String;

.field private dsurl:Ljava/lang/String;

.field private mgurl:Ljava/lang/String;

.field private ospurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dmurl"    # Ljava/lang/String;
    .param p2, "dsurl"    # Ljava/lang/String;
    .param p3, "mgurl"    # Ljava/lang/String;
    .param p4, "ospurl"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getDmurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDsurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMgurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getOspurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    return-object v0
.end method

.method public setDmurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dmurl"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDsurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dsurl"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMgurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mgurl"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOspurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "ospurl"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLInfoVO [dmurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dmurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dsurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->dsurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mgurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->mgurl:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v1, ", ospurl="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/rlc/vo/URLInfoVO;->ospurl:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v1, "]"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
