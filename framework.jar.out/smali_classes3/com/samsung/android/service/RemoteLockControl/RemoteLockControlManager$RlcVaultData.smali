.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;
.super Ljava/lang/Object;
.source "RemoteLockControlManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RlcVaultData"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1b8ffafbd1fffc41L


# instance fields
.field private mClientData:Ljava/lang/String;

.field private mFailureCount:I

.field private mNoticeMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRequesterName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "failureCount"    # I
    .param p2, "noticeMessage"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "requesterName"    # Ljava/lang/String;
    .param p5, "clientData"    # Ljava/lang/String;

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    .line 1295
    iput-object p2, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    .line 1296
    iput-object p5, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    .line 1297
    iput-object p4, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    .line 1298
    iput-object p3, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    .line 1292
    return-void
.end method


# virtual methods
.method public getClientData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureCount()I
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    return v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientData(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientData"    # Ljava/lang/String;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mClientData:Ljava/lang/String;

    .line 1346
    return-void
.end method

.method public setFailureCount(I)V
    .locals 0
    .param p1, "failureCount"    # I

    .prologue
    .line 1308
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mFailureCount:I

    .line 1306
    return-void
.end method

.method public setNoticeMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "noticeMessage"    # Ljava/lang/String;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mNoticeMessage:Ljava/lang/String;

    .line 1316
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mPhoneNumber:Ljava/lang/String;

    .line 1326
    return-void
.end method

.method public setRequesterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "requesterName"    # Ljava/lang/String;

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$RlcVaultData;->mRequesterName:Ljava/lang/String;

    .line 1336
    return-void
.end method
