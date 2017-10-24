.class public Lcom/android/server/TcpStats;
.super Ljava/lang/Object;
.source "TcpStats.java"


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTION_LOST:I = 0x3

.field public static final CONNECT_FAIL:I = 0x2

.field public static final SEND_FIN_PACKET:I = 0x4


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mErrno:I

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mMark:I

.field private mPid:I

.field private mProcName:Ljava/lang/String;

.field private mSid:I

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "sid"    # I
    .param p6, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    .line 50
    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 51
    iput-object p3, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 52
    iput p5, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 53
    iput p4, p0, Lcom/android/server/TcpStats;->mState:I

    .line 54
    iput-object p6, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;IILjava/lang/Boolean;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "sid"    # I
    .param p6, "addr"    # Ljava/lang/String;
    .param p7, "mark"    # I
    .param p8, "errno"    # I
    .param p9, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    .line 38
    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 39
    iput-object p3, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 41
    iput p5, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 42
    iput p4, p0, Lcom/android/server/TcpStats;->mState:I

    .line 43
    iput p8, p0, Lcom/android/server/TcpStats;->mErrno:I

    .line 44
    iput p7, p0, Lcom/android/server/TcpStats;->mMark:I

    .line 45
    iput-object p9, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "procName"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "sid"    # I
    .param p6, "addr"    # Ljava/lang/String;
    .param p7, "isScreenOn"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/android/server/TcpStats;->mUid:I

    .line 28
    iput p2, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 29
    iput-object p3, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 32
    iput p4, p0, Lcom/android/server/TcpStats;->mState:I

    .line 33
    iput-object p7, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 26
    return-void
.end method


# virtual methods
.method public getProcName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/TcpStats;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TcpStats;->mProcName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/android/server/TcpStats;->mUid:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/android/server/TcpStats;->mPid:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/TcpStats;->mAddr:Ljava/lang/String;

    .line 58
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/android/server/TcpStats;->mSid:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/android/server/TcpStats;->mState:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/android/server/TcpStats;->mErrno:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/android/server/TcpStats;->mMark:I

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "\t"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/server/TcpStats;->mIsScreenOn:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
